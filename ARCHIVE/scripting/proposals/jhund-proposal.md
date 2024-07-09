# Scripting API

This document will capture a proposition for the structure of the WoT scripting API and state the design principles.
It serves as a discussion ground with the target to become merged into current practices and serve as a base for the WG work. 

## reactive nature

The overall API philosophy is reactive, meaning a programmer will mostly be passing callback functions which get called from the framework

## Object orientation

This document is written language agnostic, but is specified using object oriented metaphors.
This document will capture a proposition for the structure of the WoT scripting API and state the design principles.The translation of this metaphors for non-object oriented languages (most notably C) can be done by passing handles and structs, which is common practise, but needs further specification.
Some ground rules can be named however:
- all functions shall have a prefix
- handles or structs replace passing of objects to the framework
- structs represent objects being passed from the framework

## single root entry

The API will be rooted in a single object (for object oriented languages). This naturally could be "WoT".

## proxy objects

the interaction between the script  and the Things is encapsulated in proxy objects whose methods allow manipulation of the state and invocation of actions.
There are two types of proxy objects identified:
- **ExposedThing** for things the script offers to others 
- **ConsumedThing** for things that the script uses, which are exposed by others.

## factory functions under the root will allow access to proxy objects

Instances of these proxy objects are retrieved via factories. These are methods of the root object that return a promise which will resolve to an array of proxy objects.

### factories for consuming things

#### discovery

``discover`` as described in the current practices doc, discovery will be done via typed filters.

**Parameters**

- ``type : string`` type of discovery
- ``filter : object (optional)`` filter object for parameters of the discovery

**Returns**

A promise resolved to an array of ``ConsumedThing`` and rejected if the discovery type is not availiable or there was an error  

**Example** 

```javascript
 WoT.discover("registry", {registry:"http://my.registry.org"})
    .then(function(things) {
        things.forEach(function(thing) { 
            console.log("found " + thing.name);
        });
    })
```
#### consumeDescription 

``consumeDescription`` will return a ``ConsumedThing`` for a given Thing description

**Parameters**

- ``td : object`` JSON-LD object containing the thing description

**Returns**

A promise resolved to an instance of ``ConsumedThing`` and rejected if there was an error  

**Example** 

```javascript
 WoT.consumeDescription({ /*... valid thing description ...*/ })
    .then(function(thing) {
         console.log("found " + thing.name);
    });
```

#### consumeDescriptionUri

``consumeDescriptionUri`` will return a ``ConsumedThing`` for a given Thing description

**Parameters**

- ``uri : string`` URI of JSON-LD object containing the thing description

**Returns**

A promise resolved to an instance of ``ConsumedThing`` and rejected if there was an error  

**Example** 

```javascript
 WoT.consumeDescriptionUri("http://somethingontheweb.org/td")
    .then(function(thing) {
        console.log("found " + thing.name });
    })
```

### factories for exposing things

#### Creating a Thing: ``newThing(name : string)``

``newThing`` will create and return an ``ExposedThing`` with no interactions yet.

**Parameters**

- ``name : string`` Name of the thing to create

**Returns**

A promise resolved to an instance of ``ExposedThing`` and rejected if there was an error  

**Example** 

```javascript
 WoT.newThing("Foo")
    .then(function(thing) {
        console.log("crated " + thing.name });
    })
```

#### Creating a Thing from a Thing Description Template: ``createFromDescription(td : object)``

``createFromDescription`` will return an ``ExposedThing`` as described by the thing description.

**Parameters**

- ``td : object`` thing description for the thing to create

**Returns**

A promise resolved to an instance of ``ExposedThing`` and rejected if there was an error  

**Example** 

```javascript
 WoT.createFromDescription({"name" : "Foo", "actions" : [/* ... */] })
    .then(function(thing) {
        console.log("crated " + thing.name });
    })
```
#### Creating a Thing from a remote Thing Description Template: ``createFromDescriptionUri(uri : string)``

``createFromDescriptionUri`` will create and return an ``ExposedThing`` as described by the thing description given via an Uri.

**Parameters**

-``uri : string`` URI of JSON-LD object containing the thing description for the thing to create

**Returns**

A promise resolved to an instance of ``ExposedThing`` and rejected if there was an error  

**Example** 

```javascript
 WoT.createFromDescriptionUri("http://some.server.org/tdtemplate.jsonld")
    .then(function(thing) {
        console.log("crated " + thing.name });
    })
```


#### proxyRemoteThing

tbd, register a proxy that passes requests and results and optionally can register callbacks 

## interacting with proxy objects

### ConsumedThing

#### Event handling: ``on(eventName : string, cb : function(event))``

Register an event handler so that it will get called when the event is emitted

*Parameters**

-``eventName : string``: Thing-unique name of the event
- ``cb : function(event : object)``: the function that will be called with the event payload

**Returns**

A promise that will resolve to a handle that can be used to unsubscribe from the event but is rejected if there was an error to allow chaining and fluent syntax  

**Example** 

```javascript
  var handle; 

  WoT.consumeDescriptionUri("http://tempsensor.ontheweb.org/td")
    .then(function(thing) {
            thing.on("update", function(evt) {
                console.log("temperature is now " + evt.content);  
            } 
        })
        .then(function(_handle) {
            handle = _handle; // remember handle to unsubscribe
        });
    })
```

#### Cancel event handler: ``off(eventName : string, handle : number)``
Unregister an event handler so that it will no longer get called when the event is emitted

**Parameters**

-``eventName : string``: Thing-unique name of the event
-``handle : number``: Thing-unique name of the event

**Returns**

A promise that will return void but is rejected if there was an error to allow chaining and fluent syntax  

**Example** 

```javascript
  // uses handle from example above

  WoT.consumeDescriptionUri("http://tempsensor.ontheweb.org/td")
    .then(function(thing) {
        thing.off("update", handle);
    });
```

#### Invoking Actions: ``invokeAction(actionName : string, param : any)``

Invoke resp. call an action on a consumed thing.

**Parameters**
- ``actionName : string``: name of the action to invoke
- ``param : any``: parameter to be passed (optional) 

**Returns**

a promise that resolves to void, but rejects with an error if occured

**Example** 

```javascript
  WoT.consumeDescriptionUri("http://tempsensor.ontheweb.org/td")
    .then(function(thing) {
        return thing.invokeAction("dimUp", { time : "2s"});
    })
    .then(function() { console.log("called action"); })
    .catch(function(err) { console.log("error occured: " + err); });
```

#### Getting property Value: ``getProperty(propertyName : string)``

Retrieve state of a property on a consumed thing.

**Parameters**
- ``propertyName : string``: name of the property to retrieve 

**Returns**

a promise that resolves to the property state and rejects with an error if occured

**Example** 

```javascript
  WoT.consumeDescriptionUri("http://tempsensor.ontheweb.org/td")
    .then(function(thing) {
        return thing.getProperty("brightness")
    })
    .then(function(brightness) { console.log("brightness is " + brightness); })
    .catch(function(err) { console.log("error occured: " + err); });
```


#### Setting a property value: ``setProperty(propertyName : string, newVal : any)``

Modify the state of a property on a consumed thing.

**Parameters**
- ``propertyName : string``: name of the property to update
- ``newVal : any``: value to assign the property state  

**Returns**

a promise that resolves to the new property state and rejects with an error if occured

**Example** 

```javascript
  WoT.consumeDescriptionUri("http://tempsensor.ontheweb.org/td")
    .then(function(thing) {
        return thing.setProperty("brightness",0.8)
    })
    .then(function(brightness) { console.log("brightness is now " + brightness); })
    .catch(function(err) { console.log("error occured: " + err); });
```

### ExposedThing

#### Declaring an Event: ``addEvent(eventName : string, eventType : any)``

Adds an event to the exposed thing's interface

**Parameters** 

- ``eventName : string``: name of the event (must be unique in the scope of the thing)
- ``eventType : any``: type description for the payload of the event, e.g. in  json schema

**Returns** 

a promise that resolves to the thing but is rejected in case of an error

**Example** 

```javascript
  WoT.newThing("doorbell")
    .addEvent("ring", { "type": "object", properties: { "duration" :  { "type" : integer} })
    .catch(function(err) { console.warn("could not add event") });    
```

#### Declaring an Action: ``addAction(ActionName : string, inputType : any, outputType : any)``

Adds an action to the exposed thing's interface

**Parameters** 

- ``actionName : string``: name of the event (must be unique in the scope of the thing)
- ``inputType : any``: type description for the parameter payload of the action, e.g. in  json schema
- ``outputType : any``: type description for the result payload of the action, e.g. in  json schema

**Returns** 

a promise that resolves to the thing but is rejected in case of an error

**Example** 

```javascript
  WoT.newThing("doorbell")
    .addAction("blink", { "type": "object", properties: { "duration" :  { "type" : integer} })
    .catch(function(err) { console.warn("could not add action") });    
```

#### Declaring a Property: ``addProperty(propertyName : string, type : object)``

Adds a property to the exposed thing's interface

**Parameters** 

- ``propertyName : string``: name of the event (must be unique in the scope of the thing)
- ``type : any``: type description for the parameter payload of the property, e.g. in  json schema

**Returns** 

a promise that resolves to the thing but is rejected in case of an error

**Example** 

```javascript
  WoT.newThing("doorbell")
    .addProperty("ringVolume", { "type": "object", properties: { "volume" :  { "type" : integer} })
    .catch(function(err) { console.warn("could not add action") });    
```

#### Emitting events: ``emitEvent(eventName : string, event : object)``

Emits an event, notifying any subscribers

**Parameters** 

- ``eventName : string``: name of the event (must be unique in the scope of the thing)
- ``event : any``:  the payload of the event, as described in the thing description

**Returns** 

the proxy object to allow fluent-style chaining

**Example** 

```javascript
  WoT.newThing("doorbell")
    .emitEvent("ring", {"duration" : 20});
```

#### Callback registration for Actions: ``onInvokeAction(actionName : string, cb : function(param : any))``

Registers a server-side callback for the invocation of an action

**Parameters** 

- ``actionName : string``: name of the action to register the callback 
- ``cb : function(param : any)``: function pointer to the callback that should handle the action calls. The parameter will be supplied.

**Returns** 

the proxy object to allow fluent-style chaining

**Example** 

```javascript
  WoT.newThing("doorbell")
    .onInvokeAction("blink", function(param) {
        console.log("blinking for " + param.duration + " seconds");
        /* ... do actually blink by interacting with a thing representing the local LED ...*/  
    });    
```

#### Callback registration for Properties: ``onUpdateProperty(propertyName : string, cb : function(newValue : any, oldValue : any))``

Registers a server-side callback for a property change.
Property listeners can react on changed properties. This is inspired from the way the ``$watch`` method in Angular.js is used.

**Parameters** 

- ``propertyName : string``: name of the property to register the callback 
- ``cb : function(newValue : any, oldValue : any)``: function pointer to the callback resp. the change listener. The parameters are the new and old values of the change.   

**Returns** 

the proxy object to allow fluent-style chaining

**Example** 

```javascript
  WoT.newThing("doorbell")
    .onUpdateProperty("ringVolume", function(newValue, oldValue) {
        var message = (oldValue < newValue)? "increased " : "decreased";
        console.log(message + "ring volume to " + newValue);  
    });    
```