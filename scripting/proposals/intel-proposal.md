
WoT Scripting API Proposal
==========================

Based on [README.md](./README.md) and the [API presented on the TPAC 2016](https://github.com/w3c/wot/blob/master/plugfest/2016-lisbon/TPAC-2016-Poster-Scripting.svg).

For compatibility with constrained JavaScript runtimes, code examples are using ECMAScript 5.1 plus Promises.

API Entry Point
---------------

The [`WoT`](#wot) object implements the WoT JavaScript API.

Client application work flows:
- discover [`ConsumedThing`](#consumedthing) objects,
- request creating a remote [`ExposedThing`](#exposedthing) object that a server knows how to create based on the [`Thing` description](#thing)
- retrieve, update, observe, unobserve, or delete `ConsumedThing`s.

Server application work flow is the following:
- create local [`ExposedThing`](#exposedthing) objects
- add specified request handlers that access local sensors and actuators via a local physical API, either low level as the [W3C Generic Sensor API](https://w3c.github.io/sensors/) or [johnny-five](http://johnny-five.io/), or high level as [Bluetooth Smart](https://www.bluetooth.com/specifications/bluetooth-core-specification) or [OCF](https://openconnectivity.org/) APIs.
- register the `ExposedThing`s,
- serve requests.

<a name="discovery"></a>
Discovery
---------
The main use case for discovery is finding a [`Thing`](#thing) by its name, URL, type, or other properties. From scripting point of view, a dictionary filter is used. If no filter is provided, discovery should find all `Thing`s possible.

Discovery is an open ended client side process, usually based on multicast request or a direct request to a `Thing`. Therefore applications can start the discovery process, but cannot reliably cancel or stop it, nor can discovery be reliably completed. Depending on the underlying protocols, there may or may not be a timeout on discovery.

However, applications (or implementations) could ignore discovery results after "canceling" discovery, so a `cancel()` method may be exposed.

Applications should get access to `Thing`s as soon as they are discovered.

The following patterns could be used with discovery.

### 1. Discovery function with filter and callback
```javascript
  Promise<void> startDiscovery(ThingFilter filter, ThingFoundCallback onfound);
  void stopDiscovery(optional ThingFilter filter);

  callback ThingFoundCallback = void (ConsumedThing);

  dictionary ThingFilter {
     String url;
     String type;
     // ... Other Thing properties ...
  };
```

Applications could say
```javascript

wot.find({ type: "wot/lightmeter" }, function(thing) {
  console.log("Thing found: " + thing.url);
});

```
This approach is simple and can be used with constrained runtimes.
Discovery requests are associated with their filters, therefore cancellation takes the filter as argument. If no filters provided, `stopDiscovery()` will remove all current filters and will stop notifying the application about all further discoveries. A subsequent `startDiscovery()` may enable new filters.

### 2. Discovery with starting function and event
```javascript
  Promise<void> find(ThingFilter filter, optional ThingListener listener);
  attribute EventHandler onthingfound;
```
In this case discovery is only started by `find()` (it could also be named `startDiscovery()`), and applications should add a listener to the `onthingfound` event.

`find()` returns a `Promise` that resolves when the discovery request is successfully sent, and rejects when it does not.

```javascript
wot.onthingfound = function(event) {
  var thing = event.thing;
  console.log("Thing found: " + thing.url);
};

wot.find({ type: "wot/lightmeter" });
```

The `listener` argument to `find()` is optional, and when provided, the implementation will add it as a listener to `onthingfound`. This is a convenience in order to avoid keeping in mind that starting the discovery is not enough, the developer also needs to add a listener, otherwise won't get a `Thing`.

Applications can remove the listener from the `onthingfound` event, thereby canceling the discovery in the sense of removing the associated filter and ignoring further discovery results.

```javascript
wot.find({ type: "wot/lightmeter" }, function(event) {
  var thing = event.thing;
  console.log("Thing found: " + thing.url);
});
```
This approach uses Events, which is a bit controversial, given the choice between `EventTarget` and `EventEmitter`. In the future, Observables may be used instead.

### 3. Discovery by subscribing to an event with a filter
This approach extends the `addListener()` method of `EventEmitter` or `addEventListener()` method of `EventTarget` with adding an extra optional parameter for a dictionary filter. Therefore a starting function is not needed.

```javascript
  attribute EventHandler onthingfound;
```
By adding a listener and a filter to `onthingfound`, the discovery process is started. By removing the listener and filter, the discovery process is canceled.

This approach is controversial for the following reasons:
- extending `EventEmitter` and `EventTarget` may not be received well
- managing which listener is associated with which filter, and combinations of adding and removing listeners is complex.

### 4. Discovery with simple Observables

```javascript
  DiscoverySubscription find(ThingFilter filter,
                             ThingFoundCallback onfound);

  callback ThingFoundCallback = void (ConsumedThing);

  interface DiscoverySubscription {
    void cancel();
  };
```

A subscription is always associated with a single listener and optional filter(s).

In the simplest form a `DiscoverySubscription` provides a way to cancel the discovery, i.e. remove the given `filter` and ignore further discovery results.

```javascript
var discovery = wot.find({ type: "wot/lightmeter" }, function(thing) {
      console.log("Thing found: " + thing.url);
    });

// ... later ...
discovery.cancel();
```

In practice this should be enough for covering WoT discovery, and could be augmented later if needed, for example with functionality for adding more filters, and replacing the listener, etc.

```javascript
  interface DiscoverySubscription {
    // remove one filter, or all filters with also stopping the listener
    void cancel(optional ThingFilter filter);

    // replace the listener and return `this` for chaining
    DiscoverySubscription onfound(ThingFoundCallback onfound);

    // add a filter and return `this` for chaining
    DiscoverySubscription filter(ThingFilter filter);
  };
```

When `cancel()` is given one filter, only that filter is removed, and the listener continues to be invoked. When all filters are removed one by one, the listener is invoked with any results until `cancel()` without arguments is called.
When `cancel()` is given no arguments, it removed all filters and stops invoking the listener.

So applications could say

```javascript
var discovery = wot.find()
    .filter({ type: "wot/lightmeter" });
    .onfound(function(thing) {
      console.log("Thing found: " + thing.url);
    });

// ... later ...
discovery.cancel();
```

<a name="wot"></a>
The WoT object
--------------

The WoT object may support a client API (discovery + CRUDN) and a server API (request handlers for CRUDN and optionally discovery requests).

```javascript
interface WoT {
  // Discovery API
  Promise<void> find(ThingFilter filter, ThingListener listener);

  // Client API

  // Request creating a Thing on a remote device.
  Promise<ConsumedThing> create(Thing thing, ThingCreateOptions options);

  // Server API

  // Register a locally created (owned) Thing with WoT discovery.
  Promise<ExposedThing> register(Thing thing);

  // Handle (dispatch) create requests.
  void oncreate(RequestHandler handler);
};

callback ThingListener = void (ConsumedThing);
```

Thing representation
--------------------

<a name="thing"></a>
```javascript
interface Thing {
  String url;  // full identification, mandatory
  String name;  // short name, locally unique, optional
  String type;  // WoT standardized Thing type, mandatory
  boolean observable;  // mandatory
  boolean discoverable;  // mandatory
  ThingDescription description;  // mandatory
  ThingRepresentation representation;  // mandatory
};

dictionary ThingDescription {

};

// The data state and representation of a Thing.
dictionary ThingRepresentation {

};
```

ConsumedThing: Thing Client API
-------------------------------

<a name="consumedthing"></a>
```javascript
[Constructor (Thing)]
interface ConsumedThing: <readonly>Thing {
  attribute EventHandler onupdate;  // somebody else has updated the Thing
  attribute EventHandler ondelete;  // somebody else has deleted the Thing

  // Request retrieving the Thing (from a remote or local device).
  // Updates `representation` and `description`.
  Promise<void> retrieve(optional Dictionary options);

  // Request updating the Thing with a partial ThingRepresentation dictionary.
  Promise<void> update(ThingRepresentation representation);

  // Request deleting the Thing.
  Promise<void> delete();

  // Request observing the Thing.
  Promise<void> observe(Dictionary options, ThingListener listener);

  // Request canceling observing the Thing.
  Promise<void> unobserve();
};
```

ExposedThing: Thing Server API
------------------------------

Apart from Create requests that are handled by the main `WoT` object, an `ExposedThing` will handle all requests addressed to it.

<a name="exposedthing"></a>
```javascript
[Constructor (Thing)]
interface ExposedThing: <readonly>Thing {
  // Register Thing request handlers.
  ExposedThing onretrieve(RequestHandler handler);
  ExposedThing onupdate(RequestHandler handler);
  ExposedThing ondelete(RequestHandler handler);

  // Give the implementation a translate function for the resource representation.
  ExposedThing ontranslate(TranslateCallback translator);

  // Update notification could be done automatically in most cases,
  // but in a few cases manual notification is needed.
  // Delete notifications should be made automatically by implementations.
  Promise<void> notify();

  Promise<void> unregister();
};

callback RequestHandler = void (ThingRequest request);

// The function that is called by implementation to select Thing representation.
callback TranslateCallback = ThingRepresentation (Dictionary requestOptions);

[NoInterfaceObject]
interface ThingRequest {
  readonly attribute RequestType type;
  readonly attribute Thing source;
  readonly attribute Thing target;
  readonly attribute Thing? data;
  readonly attribute Dictionary options;

  // Reply to a given request
  Promise<void> respond(optional Thing? thing);
  Promise<void> respondWithError(Error error);
}

enum RequestType { "create", "retrieve", "update", "delete", "observe", "unobserve" };
```
