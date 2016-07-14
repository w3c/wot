# Discussion on Scripting API

W3C WoT IG Face to face meeting in Beijing 14th July 2016  

# Topics / Plugfest findings
* How to do local discovery? (i.e. finding other ``ExposedThings`` on the same servient)
* We need (reading) access to the Thing description: i.e. ``ConsumedThing.getTD();``
* Event handling (local/remote) and decorators
* Extend spec with optional parts / hints for runtime implementers:
    * Optional arguments / default values
    * Syntactic sugar: operator overloading, getter/setters…
    * Synchronous wrappers
* Query parameters
* Relationship between ``ExposedThing`` and WoT API
* Support behaviour definition by event-driven state machines

# Results

## LocalDiscovery

``WoT.getExposedThing();`` returning Promise resolving to ``ExposedThing``

## Getting TD from Object

### own interface vs. runtime's parsed json objects 

``ExposedThing`` and ``ConsumedThing`` should offer ``getTD();`` to retrieve a parsed json object of the TD

## Event handling
postponing to webCall

## Comfort options / Implementer's Hint's

### Optional arguments / default values

Put an descriptive example into invokeAction

### Syntactic sugar: operator overloading, getter/setters…

add implementors hing for get/setProp

### Synchronous wrappers

add implementer's hint

# Query parameters

add optional function parameter for RequestParams as given in TD to 
``invokeAction``,``get/setProperty``, possibly events

# Relationship between ``ExposedThing`` and WoT API

AddX changes WoT API and TD at runtime.

Define event for TD change.

# Support behaviour definition by event-driven state machines

kaz to outreach for experts about statechart XML model and implementation (e.g. Apache mojo) 
