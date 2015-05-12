# WoT: Defining abstract interactions for APIs and Protocol bindings
An examplary sketch by Johannes Hund, Siemens (johannes.hund@siemens.com)

 for the Task force on protocols and APIs of the W3C Web of Things Interest Group.

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [Motivation](#motivation)
- [Primitives](#primitives)
  - [Basic Resource Model](#basic-resource-model)
  - [Event-sources](#event-sources)
  - [Properties](#properties)
  - [Actions](#actions)
- [Example Protocol Mappings](#example-protocol-mappings)
  - [HTTP](#http)
    - [Mapping Event-Sources to HTTP](#mapping-event-sources-to-http)
    - [Mapping Properties to HTTP](#mapping-properties-to-http)
    - [Mapping Actions to HTTP](#mapping-actions-to-http)
  - [CoAP](#coap)
  - [XMPP](#xmpp)
  - [MQTT/STOMP/...](#mqttstomp)
- [Scripting API Mappings](#scripting-api-mappings)
  - [Abstract description](#abstract-description)
- [Example Scriting API Mappings](#example-scriting-api-mappings)
  - [Javascript](#javascript)
    - [Basic connection](#basic-connection)
    - [Events](#events)
    - [Actions](#actions-1)
    - [Properties](#properties-1)
  - [LUA](#lua)
  - [Python/Java/C...](#pythonjavac)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## Motivation

To allow several scripting languages and protocols to reuse the same basic primitives (data structures and interactions), an abstract specification of the primitives is made alongside with examples for the mapping of these primitives into well-known scripting languages and protocols (such as Javascript and HTTP).

This document aims to take the input and extrapolate commonalities of the exisiting developments:

* [WebStreams Model (Everythng)](http://bit.ly/wot-label)
* [WoT Framework (Dave Raggett)](http://www.w3.org/2015/04/w3c-wot-framework-munich-2015.pdf)
* [Simple Web of Things Architecture Model (Jonghong Jeon et. al.)](http://hollobit.github.io/swot-model/)
* [CoRE Interfaces (IETF Internet-Draft)](https://datatracker.ietf.org/doc/draft-ietf-core-interfaces/)

## Primitives

For the abstract definition of the pimitives the interaction patterns will be described on message-level using simple textual descriptions.
Formal descriptions could be e.g. done in [PlantUML](http://plantuml.sourceforge.net/sequence.html)

### Basic Resource Model

A thing is described by actions, properties and events.

The server part of a WoT servient exposes resources that can emit events, offer actions or expose properties. A client can query, invoke actions as well a CRUD the properties.


### Event-sources
This resource type abstracts a stream of events, e.g. a sensor. It allows two kinds of interaction:
* subscribing to future events
* a one-time query of the last event

The payload structure are events comprising  for example the following elements:

* unique ID (scope of uniqueness is server/system)
* event src/topic, e.g. "dev001"
* timestamp
* event type e.g. "progress", "report", "error"
* event payload

The format is currently TBD and will be taken from standardized or exisiting formats resp. aligned with ongoing standardization activities.

The history of event details/payloads can be made availiable on a sub-resource.
If they are, they be referenced as self-links in the stream.
Larger payloads could also be just availiable on the sub-resource to keep the stream lean.

### Properties
The resource type property is a generic abstraction for information/data of the thing.
Each property can  have metadata such as types etc.

Also for the property the concrete model will be defined according to existing or ongoing developments resp. standardization.

### Actions
The resource type for an action abstracts an actor.

A client can query information about an action and call an action, to which the server will respond with a result or an error.

An action call can have parameters, a result can convey a payload.
The errors will be mapped onto protocol-specific error codes and have a payload with details.

The metadata and errors shall be aligned to ongoing or exisiting standards.

## Example Protocol Mappings

This is a very basic mapping onto HTTP, the protocol description should be itself should be described in an abstract way as well, so that the primitives can be mapped onto other protocols.

### HTTP

#### Mapping Event-Sources to HTTP
Events will be delivered via an event stream from the resource ``/events``.

It is expected that clients will usually open a websocket connection to the ``events`` resource.
However, ideally servers should also permit polling via regular GET request without NPN.
See [here](https://github.com/h0ru5/http-observe) an explorative protoype.

The details of an event are also availiable at ``/events/{id}``.

#### Mapping Properties to HTTP
Properties are exposed via a REST resource ``/properties``.
An individual device is accessed  via ``/properties/{id}``. (CRUD)

#### Mapping Actions to HTTP
The resource ``/actions`` contains metadata of the availiable actions.
The resource ``/actions/{id}`` exposes state and metadata of a single action for GET and can be invoked via POST (supplying parameters as payload)

### CoAP
TBD

### XMPP
TBD

### MQTT/STOMP/...
TBD?

## Scripting API Mappings
This section explains the mapping of primitives into APIs.

A WoT Servient can comprise one or both of two roles:
* *server-side*: **exposing things** (consisting of properties, actions and event-sources) to clients and reacting to requests.
* *client-side*: **consuming things** by connecting to things and interacting with them.

These are rough sketches, the APIs should be based on popular current frameworks such as:

*Server-side*
  * express.js
  * ruby on rails
  * Flask
  * Java servlets

*Client-side*
 * JQuary AJAX
 * cURL
 * node request.js
 * fetch API
 * Angular.js $http

### Abstract description
The APIs will be provided in a language-independent intrerface descriptions such as [webIDL](http://www.w3.org/TR/WebIDL/).

For the time being, a quick sketch is done as examples in Javascript.

## Example Scriting API Mappings

### Javascript

#### Basic connection
To basically connect a client-side appliction to a Thing or to expose a ting on the server side, an API should exist to bootstrap and initialize the connectivity.

```javascript
//client side, connect to a lightbulb by its URI
var thing = wot.connect("http://lightbulbs.example.org/lb0815");

//server side: expose some thing
var metadata = {...} //to be defined by TF-TD
var mything = wot.expose('lb4711',metadata);
```

#### Events
A client implementation can subscribe and register callbacks for events, a server implementation can emit events.

```javascript
//client side, thing is a remote lightbulb
thing.subscribe('state',function(evt) {
  console.log("Ligthbulb " + evt.src + " changed state at " + evt.time + " to " + evt.payload.dim);
  });

//server side - thing is a proxy for a lightbulb
mything.emit('state',{ "dim" : 0.5});
```

####Actions
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

#### Properties
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

### LUA
TBD?
### Python/Java/C...
TBD?
