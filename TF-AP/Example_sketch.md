# WoT: Defining abstract interactions for APIs and Protocol bindings
An examplary sketch by Johannes Hund, Siemens (johannes.hund@siemens.com)

## Motivation

To allow several scripting languages and protocols to reuse the same basic primitives (data structures and interactions), an abstract specification is made alongside with examples in a well-known language and protocol (in this case Javascript and HTTP)

## Protocol

This is a very basic mapping onto HTTP, the protocol description should be itself should be described in an abstract way as well, so that the primitives can be mapped onto other protocols.

### Basic Data Model

A thing is dexcribed by actions, properties and events.

The server can emit events and a client can query invoke actions as well a CRUD the properties.

### Events

Events will be delivered via an event stream from the resource ``/events``.

It is expected that clients will usually open a websocket connection to that resource, while servers do also permit polling via regular GET request without NPN.

The payload structure will be events comprising  for example the following elements:

* unique ID (scope of uniqueness is server/system)
* event src/topic, e.g. "dev001"
* timestamp
* event type e.g. "progress", "report", "error"
* event payload

The format is currently TBD and will be taken from standardized or exisiting formats resp. aligned with ongoing standardization activities.

The details are also availiable at ``/events/{id}``.

Larger event details/payloads should only be referenced as links in the stream.

### Properties

Properties are exposed via a REST resource ``/properties``.
An individual device is accessed  via ``/properties/{id}``. (CRUD)

Each property has metadata such as types etc.

Also for the property the concrete model will be defined according to existing or ongoing developments resp. standardization.

### Actions

The resource ``/actions`` contains metadata of the availiable actions.
The resource ``/actions/{id}`` exposes state and metadata of a single action for GET and can be invoked via POST (supplying parameters as payload)

## API
This section explains the mapping into APIs. For now as examples in Javascript.
 The APIs should be provided in a language-independent intrerface descriptions such as webIDL.

 These are rough sketches, the APIs should be based on popular current frameworks such as:
 *  Server-side
    * express.js
    * ruby on rails
    * Flask
    * Java servlets

* Client-side
 * JQuary AJAX
 * cURL
 * node request.js
 * fetch API
 * Angular.js $http

### Basic connection
To basically connect a client-side appliction to a Thing or to expose a ting on the server side, an API should exist to bootstrap and initialize the connectivity.

```javascript
//client side, connect to a lightbulb by its URI
var thing = wot.connect("http://lightbulbs.example.org/lb0815");

//server side: expose some thing
var metadata = {...} //to be defined by TF-TD
var mything = wot.expose('lb4711',metadata);
```


### Events
A client implementation can subscribe and register callbacks for events, a server implementation can emit events.

```javascript
//client side, thing is a remote lightbulb
thing.subscribe('state',function(evt) {
  console.log("Ligthbulb " + evt.src + " changed state at " + evt.time + " to " + evt.payload.dim);
  });

//server side - thing is a proxy for a lightbulb
mything.emit('pressed',{ "dim" : 0.5});
```

###Actions
Actions and are registered with the expected params and a callback on the server side and called from  client side returning a promise.

```javascript
//client side, thing is a remote lightbulb
thing.callAction('dim',{ "value" : 0.8})
     .then(function(res) {
       console.log("dimmed to " + res.value);
       })
     .catch(function(err) {
       console.err(err),
       });

//server side - thing is a proxy for a lightbulb
var dim_params = [{'value',{
  "desc" : "Target dimming value",
  "optional" : false
  //, ... more parameter description, to be defined by TF-TD
}}];
mything.registerAction('dim', dim_params,
   function(value) {
      //... set dimming to value
   }
);
```

### Properties
Properties are accessed and exposed by setters or getters.

```javascript
//client side, thing is a remote lightbulb
thing.get('power')
     .then(function(res) {
       console.log("current power consumption is " + res.value + " Watts");
       })
     .catch(function(err) {
       console.err(err),
       });

//server side, thing is an avatar for a lightbulb
mything.onGet('power',function(req,res) {
  res.value = 5.3;
  return res;
});
```
