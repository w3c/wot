/**
 * Created by Louay Bassbouss on 07/10/15.
 */

// filter for things to discover. Additional filter parameters my be considered.
// in this example we want to discover LEDs nearby (abstracts Discovery and Communication technologies)
var filter = {
    type: "http://www.w3c.org/wot/thing/led", // TODO: discuss semantic of Thing types
    proximity: "nearby" // TODO: discuss possible values for proximity
};
// ThingRequest is the entry point to get access to things
var req = new ThingRequest(filter);
// onSuccess will be called only when the user selects a Thing from the Thing Selection Dialog.
// The Thing Selection Dialog is a native UI provided by the User Agent and not accessible for the Web App.
// The Thing Selection Dialog will be displayed after the Web App calls "req.start()". The user may select
// a Thing from the Dialog or may cancel the Dialog.
// TODO: selection of multiple things
var onSuccess = function(thing){
    // onSetPropertySuccess is called when the property is set successfully.
    // onSetPropertyError is called for example when a thing is not reachable,
    // the property is not writable or when the property doesn't exist.
    thing.property.set("colorTemperature", 123456).then(onSetPropertySuccess).catch(onSetPropertyError);
    // onGetPropertySuccess is called when the property is retrieved successfully.
    // onGetPropertyError is called for example when a thing is not reachable or when the property doesn't exist.
    thing.property.get("colorTemperature").then(onGetPropertySuccess).catch(onGetPropertyError);
    // onActionCallSuccess is called when the action is successfully executed. Results are passed as input.
    // onActionCallError is called for example when a thing is not reachable, when the action doesn't exist
    // or when an error is raised during execution
    thing.action.call("ledOnOff", true).then(onActionCallSuccess).catch(onActionCallError);
    // colorTemperatureChangedCallback is executed each time the LED reports a new value.
    // onSubscribeSuccess is called when subscription was successful.
    // onSubscribeError is called when the thing is not reachable or when the event doesn't exist
    thing.event.on("colorTemperatureChanged", colorTemperatureChangedCallback).then(onSubscribeSuccess).catch(onSubscribeError);
    // Get reachability of the Thing. Reachability may change during runtime.
    thing.getReachability().then(function(reachability) {
        // reachability.value may be kept up-to-date by the UA as long as the reachability
        // object is alive. It is advised for the web developers to discard the object
        // as soon as it's not needed.
        handleReachabilityChange(reachability.value);
        // reachability.onchange is executed each time the reachability is changed.
        // For example when the device in not the range of the LED or the LED is not available anymore.
        reachability.onchange = function() { handleReachabilityChange(this.value);};
    });
    // the Web App may store the thing.id in localStorage or somewhere else
    // and requests access to the Thing after reload the Web App using navigator.things.getById
    // as described below
    var thingId = thing.id;
    localStorage.setItem("thingId", thingId);
    var thingType = thing.type;
    var thingName = thing.name;
};
// onError will be called when the user cancels the selection dialog.
var onError = function(err){
    console.error("Unexpected Error", err);
};
// start the request will display the Thing Selection Dialog.
req.start().then(onSuccess).catch(onError);

// This call is relevant when the page is reloaded, but the app
// already accessed the thing before and stored its Id in the Storage.
var thingId = localStorage.getItem("thingId");
thingId && navigator.things.getById(thingId).then(function(thing){
    thing.getReachability().then(function(reachability) {
        if(reachability.value){
            // access thing in the same way as described above
        }
    });
}).catch(function(err){
    console.error("Error on get thing by Id", err);
});