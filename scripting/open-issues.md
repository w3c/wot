# Open Issues on the W3C Web of Things Scripting API

Formal [open issues](https://github.com/w3c/wot/issues?q=is%3Aopen+is%3Aissue+label%3AScripting) are discussed in the WoT github repository.

This document compiles question, viewpoints and suggestions that are used for [creating open issues in the WoT github repository](https://github.com/w3c/wot/issues/new), and for face to face discussion topics.

## Issues on organising the work
To be discussed on the face to face:
- WoT WG scripting deliverables: scripting cases, API specification, etc.
- ways to contribute, editors, workflows
- ways to integrate with WoT IG reports, e.g. the [WoT Best Practices](http://w3c.github.io/wot/current-practices/wot-practices.html#scripting-api) document.
- interplay of WG and IG regarding scripting API

## Issues on language bindings

### Specifying multiple language bindings in the Scripting API specification
- Whether/how to use WebIDL (generic)
- Whether/how to use TypeScript (better for JavaScript)
- Define deliverable and hirarchy (e.g. JavaScript resp. TypeScript def as master and derived an agnostic IDL spec for other languages)
- If abstract IDLs like Franca could be an option for non-js portation

## Issues on JavaScript API specification
### Asynchronous programming guidelines
- when and how to use Promises vs callbacks vs Observables
- what event system(s) to support.

Based on current consensus (formed during scripting calls), Promises should be used for asynchronous operations with one-shot result (either success or fail), and callbacks (later Observables) should be used for asynchronous operations with multiple-shot results (e.g. open ended protocol requests such as discovery).

### Root API object

It is returned by `require()` statement in Node.js implementations, or attached to a built-in object like `navigator` in browser implementations. It contains functionality for client API (discover, remotely create, delete, retrieve, update, notify Things) and server API (locally create/register Things with a Thing Description).

### Client API

#### Discovery
The current signature is
```javascript
Promise<sequence<ConsumedThing>> discover(ThingFilter filter);
```

Proposal: change into
```javascript
callback ThingDiscoveryCallback = void (ConsumedThing thing);

Promise discover(optional ThingFilter filter, optional ThingDiscoveryCallback listener);
```

Alternatives:
- Promise resolves if the protocol request was successfully made, and then the listener is called with every new discovered Thing object.
- Promise resolves to an Observable (-like object) that can be used for attaching listeners, handling errors and for canceling or muting the discovery process as well.

#### Remote creation of Things based on Things Description
The current API is
```javascript
Promise<ConsumedThing> consumeDescription(object td);
Promise<ConsumedThing> consumeDescriptionUri(DOMString uri);
```

Proposals:
- change the names to something more suggestive; take inputs from supported platforms (e.g. OCF)?
- discuss the algorithm
- discuss provisioning and security implications.

#### Create local Things as servers
The current API is
```javascript
Promise<ExposedThing> createThing(DOMString name);
Promise<ExposedThing> createFromDescription(object td);
Promise<ExposedThing> createFromDescriptionUri(DOMString uri);
```

Proposals:
- check naming
- discuss the algorithm
- discuss provisioning and security implications.

#### More lifecycle methods for local Exposedthings

So farvthe root object does only offer to create ``ExposedThings`` but does not offer methods to:
- delete/unlink them
  - proposal: ``WoT.deleteThing(exposedThing)``
- retrieve them (discovery only allows client-side interaction)
  - Proposal: add methods to retrieve a local exposedthing (by name, generic discovery)


### Consumed Thing client API

The current API is
```javascript
interface ConsumedThing {
    readonly attribute DOMString name;
    Promise<any>  invokeAction(DOMString actionName, any parameter);
    Promise<any>  setProperty(DOMString propertyName, any newValue);
    Promise<any>  getProperty(DOMString propertyName);
    ConsumedThing addListener(DOMString eventName, ThingEventListener listener);
    ConsumedThing removeListener(DOMString eventName,
                                 ThingEventListener listener);
    ConsumedThing removeAllListeners(DOMString eventName);
    object        getDescription();
};
```

Issues:
- return type of `invokeAction()`; algorithm
- check names for `set/getProperty`;
- properties that belong to the representation vs meta-properties that belong the `ConsumedThing`
- check event handling
- check return type of `getDescription()`.

### Exposed Thing (server) API
The current API is
```javascript
interface ExposedThing {
    readonly attribute DOMString name;
    Promise<any> invokeAction(DOMString actionName, any parameter);
    Promise<any> setProperty(DOMString propertyName, any newValue);
    Promise<any> getProperty(DOMString propertyName);
    Promise<any> emitEvent(DOMString eventName, any payload);
    ExposedThing addEvent(DOMString eventName, object payloadType);
    ExposedThing addAction(DOMString actionName,
                           object inputType,
                           object outputType);
    ExposedThing addProperty(DOMString propertyName, object contentType);
    ExposedThing onInvokeAction(DOMString actionName, ActionHandler callback);
    ExposedThing onUpdateProperty(DOMString propertyName,
                                  PropertyChangeListener callback);
    ExposedThing addListener(DOMString eventName, ThingEventListener listener);
    ExposedThing removeListener(DOMString eventName,
                                ThingEventListener listener);
    ExposedThing removeAllListeners(DOMString eventName);
    object       getDescription();
};
```

Issues:
- discuss algorithm of `invokeAction()` (local invocation)
- discuss local hooks on `set/getProperty()`
- need an API to notify listeners (clients) about changes not made by them
- API for adding properties, actions, events etc (i.e. changing Thing Description) is problematic
- Thing description should be available as a mix-in object, or as a property?
- splitting into dynamicThing (dynamic interface) and exposedThing (static interface)
- Error types to be thrown by handlers


Feel free to add issues, and modify existing ones.
