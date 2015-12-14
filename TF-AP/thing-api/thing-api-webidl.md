# W3C Thing API

The Thing API is an experimental API for Discovery, Provisioning and Control of Things in a [Web of Things](http://www.w3.org/WoT/). It considers ideas and concepts been discussed in the different WoT TFs (Discovery, Thing Description, ...). 

# Interfaces

## Interface `ThingRequest`

```webidl
[Constructor(ThingFilter filter)]
interface ThingRequest {
    Promise<sequence<Thing>> start();
};
```

A `ThingRequest` is the entry point in the Thing API to find things. It has a single method `start()` that starts the discovery or lookup according to the `ThingFilter` that is passed as input of the `ThingRequest` constructor. 

PS: If the Thing API is exposed to web pages as a JavaScript API, the User Agent may open a dialog that let users select Things the page is allowed to access after the `ThingRequest.start()` is called. For trusted applications e.g. running in Node.js environment, the list of things found is passed to the application without asking the user.

## Interface `ThingFilter`

```webidl
dictionary ThingFilter {
    attribute DOMString? type;
    attribute ThingProximity? proximity;
    attribute DOMString? id;
    attribute DOMString? server; 
};
```

A `ThingFilter` is a dictionary that is passed as input to the `ThingRequest` constructor. It may be extended in the future with additional filter properties. The current supported filter properties are:
* `type`: It is a url that identify the type of the thing e.g. `http://example.com/things#temperature`
* `proximity`: It defines how to find the requested things. See ThingProximity Interface for more details about the possible values.
* `id`: Each thing consists of a unique `id` (see attribute `Thing.id`). Using the `id` in the filter allows to find a Thing by its `id`. If `id` is set, all other filter parameters will be ignored.
* `server`: It is the end point of the WoT directory where to look to Things. If `server` is set, the value of `proximity` must be `remote`.

## Interface `ThingProximity`
                                                                                                                 
```webidl
enum ThingProximity { 
    "local", 
    "nearby", 
    "remote" 
};
```

The `ThingProximity` is a enumaration about possible values for the `ThingFilter.proximity` attribute. The three values are currently supported:
 
* `local`: It represents discovery in local networks (e.g. SSDP, mDNS/DNS-SD, ...)
* `nearby`: It represents all discovery technologies where the physical location is considered (BLE, Audio Watermarking, ...)
* `remote`: It represents lookup in WoT directories. The end point of the directory musst be supported.  

## Interface `Thing`

```webidl
[Constructor(ThingDescription td)]
interface Thing: EventTarget {
    readonly attribute DOMString id;
    readonly attribute DOMString type;
    readonly attribute DOMString name;
    readonly attribute boolean reachable;
    attribute EventHandler onreachabilitychange;
    Promise<any> callAction(DOMString actionName, any parameter);
    Promise<any> setProperty(DOMString propertyName, any newValue);
    Promise<any> getProperty(DOMString propertyName);
    void addListener(DOMString eventName, ThingEventListener listener);
    void removeListener(DOMString eventName, ThingEventListener listener);
    void removeAllListeners(DOMString eventName);
}
callback ThingEventListener = void (ThingEvent event);
```

`Thing` is the main interface to interact with a thing. It consists of the following attributes and functions:
* `id`: is a unique identifier of a Thing.
* `type`: is the type of a thing. It is important to filter things by type (see `ThingFilter.type`).
* `name`: the human readable name of the thing.
* `reachable`: defines if the Thing is reachable or not. e.g. `reachable` is `false` when the control device (that runs an application using the Thing API) leaves the range of a BLE sensor and `true` if the device is in range.
* `onreachabilitychange`: event handle to monitor reachability of the thing. It will be triggered each time the value of the `reachable` attribute changes.
* `callAction()`: call an action defined in the thing description. 
* `setProperty()`: set a new value for a property defined in the thing description.
* `getProperty()`: get the value of a property defined in the thing description.
* `addListener()`: add a new listener to an event defined in the thing description.
* `removeListener()`: remove an already added event listener. 
* `removeAllListeners()`: remove all listener registered for an event defined in the thing description.

A `Thing` instance can be returned as a result of discovery (see `ThingRequest.start()`) or directly by using the Thing constructor that accepts a `ThingDescription` as input.

## Interface `ThingEvent`

```webidl
interface ThingEvent {
    readonly attribute DOMString name;
    readonly attribute any value;
    readonly attribute Thing source;
}
```

The `ThingEvent` is passed as input to the event listener added to a Thing. It consists of the following attributes:
* `name`: the name of the event. It allows to distinct between different event types in the event handler.
* `value`: the new value reported by the event.
* `source`: the thing that fired the event.

## Interface `ThingDescription`

```webidl                              
dictionary ThingDescription {                 
    // Thing Description according to the JSON-LD TD spec.
}                                      
```

`ThingDescription` is a place holder for the JSON-LD spec of the Thing Description. 

# Examples

## Example `Discover Things nearby`

```javascript
var filter = {
    type: "http://example.org#foo",
    proximity: "nearby"
};
var request = new ThingRequest(filter);
request.start().then(function(things){
    var thing = things[0];
    if(thing){
        // get thing basic information
        console.log("id: ", thing.id);
        console.log("name: ", thing.name);
        console.log("type: ", thing.type);
        console.log("manufacturer: ", thing.manufacturer);
        console.log("reachable: ", thing.reachable);
        // store thing id locally e.g. in localStorage 
        localStorage && localStorage.setItem("thing.id",thing.id);
        // monitor reachability of the thing
        thing.onreachabilitychange = function(){
            console.log("reachability changed to ", this.reachable);
            // If the thing is not reachable, then the operations callAction(), getProperty() and setProperty() will fail and the promise will be rejected with a corresponding error. The operations addListener(), removeListener() and removeAllListeners() will not fail, but events will be fired when the thing is reachable again.
        };
        // Call an action
        var input = ...;
        thing.callAction("myAction",input).then(function(output){
            console.log("Result of myAction()",output);
        }).catch(function(err){
            console.error("Error on call action",err);
        });
        // get and set property
        thing.getProperty("myProp").then(function(value){
            console.log("Value of myProp ",value);
            var newValue = ...;
            return thing.setProperty("myProp", newValue);
        }).then(function(newValue){
            console.log("Value of myProp is now",newValue);
        }).catch(function(err){
            console.error("Error on get or set property myProp",err);
        });
        // add and remove thing event listener
        var myListener;
        thing.addListener("myEvent",myListener=function(evt){
            console.log("receive event ",name,"from thing",evt.source.name,"with value",evt.value);           
        });
        thing.removeListener("myEvent",myListener);
        thing.removeAllListeners("myEvent");
    };
}).catch(function(err){
    //TODO: handle error
});
```

## Example `Find Thing by id`
```javascript
var thingId = localStorage && localStorage.getItem("thing.id");
if(thingId){
    var filter = {
        id: thingId
    };
    var request = new ThingRequest(filter);
    request.start().then(function(things){
        var thing = things[0];
        if(thing){
            // access thing as in previous example
        }
    }).catch(function(err){
        //handle error
    });
}
```
