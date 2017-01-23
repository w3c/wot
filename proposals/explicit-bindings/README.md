# Explicit Protocol Bindings

This wiki page collects the work-in-progress for action item [16/4/6](https://www.w3.org/WoT/IG/wiki/IG_WebConf).
The content is purely informational for the action item contributors.
Once consensus is reached, the proposal will be integrated into the [Current Practices document](http://w3c.github.io/wot/current-practices/wot-practices.html).

## Resource Model

The common WoT abstraction across multiple protocols is the Resource Model.
A resource represents an interaction point and is identified and addressed by a URI.

### Problem

Currently, the operations on these resources are defined implicitly through the classification as Property, Action, or Event.
There is no explicit information how these interactions are preformed and no specification how these interactions are bound to specific protocols.

## Approach: Abstract Operations

The resource model shall also provide functional descriptions.
We want to define a common abstraction for the interaction model that can explicity descibe the interactions.

A popular solution is using CRUD operations, sometimes extended to CRUDN to also reflect Notifications (e.g., OCF).
Protocol binding specifications then need to map the abstract CRUD(N) operations to concrete protocol actions (e.g., POST, GET, PUT, DELETE of RESTful protocols).

## Approach: Protocol-specific Binding Information

Similar to multiple URI schemes, each interaction could provide protocol-specific information to construct a message. For instance, for HTTP and CoAP the methods GET, POST, PUT, and DELETE are given directly, while for BLE Read, Write, etc. are given. This could be done in an array, similar to the URIs and hrefs. Alternatively, one could imagine retrieving a protocol-binding specific TD: a servient that wants to talk to a thing over BLE would request a BLE-flavored TD; this would decrease size and increase readability. A superset TD could still fall back to the array notation.

## Protocols

* [HTTP](https://github.com/w3c/wot/blob/master/proposals/explicit-bindings/binding-http.md)
* [CoAP](https://github.com/w3c/wot/blob/master/proposals/explicit-bindings/binding-coap.md)
* [BLE](https://github.com/w3c/wot/blob/master/proposals/explicit-bindings/binding-ble.md)
* [BACnet](https://github.com/w3c/wot/blob/master/proposals/explicit-bindings/binding-bacnet.md)

## Abstract Transfer Layer (by Michael Koster)

* [Proposal](https://w3c.github.io/wot/proposals/explicit-bindings/abstract-transfer-layer.html)
