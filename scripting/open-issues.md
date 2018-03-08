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
  * F2F: can handle Promise
- Whether/how to use TypeScript (better for JavaScript)
  * F2F: can handle Promise
- Define deliverable and hirarchy (e.g. JavaScript resp. TypeScript def as master and derived an agnostic IDL spec for other languages)
- If abstract IDLs like Franca could be an option for non-js portation

* F2F: Should make sure we cover the big languages (JavaScript, Java, C/C++, Python, ..., Ruby?, Lua?, ...)
* F2F: WebIDL has browser baggage, thus TypeScript might be better
* F2F: Let's to WebIDL and TypeScript. Look into converter tool. Can point out WebIDL deficiencies to W3C and fix it

## Implications on TD
* F2F: TD model should also enable short scripts, in particular for ExposedThings

## Issues on JavaScript API specification
### Asynchronous programming guidelines

- when and how to use Promises vs callbacks vs Observables
- what event system(s) to support.

Based on current consensus (formed during scripting calls), Promises should be used for asynchronous operations with one-shot result (either success or fail), and callbacks (later Observables) should be used for asynchronous operations with multiple-shot results (e.g. open ended protocol requests such as discovery).

* F2F: When there is one definite outcome (either success or fail) we use Promise. When there might be no or multiple outcomes, we use callbacks.
* F2F: Callbacks prepare for better for multi-language support. Should check Observable-based solution
* F2F: Reach out to ECMA or similar to get statement on Observables

### Root API object

It is returned by `require()` statement in Node.js implementations, or attached to a built-in object like `navigator` in browser implementations. It contains functionality for client API (discover, remotely create, delete, retrieve, update, notify Things) and server API (locally create/register Things with a Thing Description).

* F2F: Check browser compatibility: what can they give us, global object? (there is already a global object)
* F2F: Check the assumptions of script writers (global Object, new, ..)

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

* F2F: Go with `Promise discover(optional ThingFilter filter, optional ThingDiscoveryCallback listener);` for now
* F2F: Start proposal with Observable, which would allow cancel (stop retrieving RD results, reject further multicast responses, ...)

#### Client API to creaate ConsumedThings based on TD

The current API is
```javascript
Promise<ConsumedThing> consumeDescription(object td);
Promise<ConsumedThing> consumeDescriptionUri(DOMString uri);
```

Proposals:
- change the names to something more suggestive; take inputs from supported platforms (e.g. OCF)?
- discuss the algorithm
- discuss provisioning and security implications.

#### ConsumedThing

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
- How does the application know what Interactions are available?
  * F2F: app has asumptions based on what it requested to discover or what the developer intended to do.
  * F2F: currently getDescription(), but that is quite raw; maybe API that returns pre-parsed snippets to iterate (getInteractions())
- How to access the semantic descriptions?
  * F2F: currently getDescription(), but that is quite raw; should provide more specific access through API
- return type of `invokeAction()`; algorithm
  * F2F: Need to cover long-running actions, also see hypermedia case; could return an observable object, could be also promise that resloves when finished
- check names for `set/getProperty`;
- properties that belong to the representation vs meta-properties that belong the `ConsumedThing`
- check event handling
- check return type of `getDescription()`

#### Client API for deleting ConsumedThings

Lifecycle use case, cloud mirror

* F2F: Synchronization Task Force works on proposal that relies on app scripts without need for standardized APIs. Standard vocabulary to annotate Actions etc. can ensure interoperability

#### Client API for updating (or provisioning) TD itself

### Server API

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

#### ExposedThing

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
- How to make it available to the outside, in particular when building it programatically
  * F2F: Let's add an API for the repo/RD to register, update, and deregister
- Semantic annotations
  * F2F: need API to add @context entry, @type, metadata entries to Thing, and @type to Interactions
- Security annotations
  * F2F: need API to fill in security description; Thing-level, Interaction-level?
- discuss algorithm of `invokeAction()` (local invocation)
- discuss local hooks on `set/getProperty()`
- need an API to notify listeners (clients) about changes not made by them
- API for adding properties, actions, events etc (i.e. changing Thing Description) is problematic
  * F2F: Use publish-me API to have clear points in time where changed TD is announced
- Thing description should be available as a mix-in object, or as a property?
- splitting into dynamicThing (dynamic interface) and exposedThing (static interface)
- Error types to be thrown by handlers

### Provisioning
- How to set up a WoT network:
  * provisioning the underlying protocol stack
  * provisioning WoT specific identification and models (TD)
- What are the WoT network functions (e.g. TD database) that need to be handled by the Scripting API.
- How to discover, install, configure, update, delete WoT scripts/programs.
- How to do provisioning:
  * with a browser page,
  * with an app,
  * with a network function (e.g. gateway/servient).

Feel free to add issues, and modify existing ones.
