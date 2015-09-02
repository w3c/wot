# WoT Plugfest

This is a call for action to have implementations and test the interop of them.
The first WoT plugfest is planned for W3C TPAC

## Motivation

Let's get the wheels on the road! We are looking to have exploratory implementations of WoT Servients.


We will provide some example Thing descriptions that should be usable with your servient resp. your application.
Whether you are implementing a scenario to test or implementing a servient, you are invited to create an implementation and test it against the others.

In contrast to conformance tests, only the interface in form of a thing description will be the input.

## Scenario / Plugfest outline
For the start, we will face the follwing scenario  and constraints:

### Protocols
To start out simple, we will restrict the used (WoT) protocols for the first Plugfest to CoAP, HTTP and WebSocket-based protocols.

### Things
The things are for example: (detailed thing description to follow):

* Lights
* Switch
* Presence Detection
* Controller
* Brightness sensor
* Energy measurement device

### Possible scenarios

The use cases could for example comprise:
- leaving the room triggers a timer to turn off the light
- someone enters the room the light is to dim up to the last level
- the user wants to control he light through a user interface
- adding a device with more features
- measure energy on a central point

## Participating

Youb are more than welcome to participate in the plugfest.
Either by bringing along an implemention of a thing, of an application or providing a thing description.

## Time plan
We plan to show first interoperable demos at TPAC 2015.
For this, we should have the implementations ready for pretesting in September.
