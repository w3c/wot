Use cases for the WoT Scripting API
===================================

Sources for this document are the following:
- [Web of Things Architecture](http://w3c.github.io/wot/architecture/wot-architecture.html)
- [Web of Things Current Practices](http://w3c.github.io/wot/current-practices/wot-practices.html)
- [Web of Things Use Cases and Requirements](http://w3c.github.io/wot/wot-ucr.html)
- [Web of Things Technology Landscape](http://w3c.github.io/wot/landscape.html)
- [Things description](https://github.com/w3c/wot/blob/master/TF-TD/Tutorial.md).

The WoT Scripting API exposes common functionality possible with a Web of Things architecture.

Possible software development targets in the Web of Things architecture are the following:
- *Thing*: smallest addressable endpoint of communication in WoT
  * has a discoverable Thing description containing:
    - capabilities, interfaces
    - properties, actions, events
  * provides mechanisms for provisioning, software update, device management, etc
  * may contain application-specific software modules and related data
- *Servient* (Thing Gateway): expose non-standard endpoints as compatible proxy Things.

A *WoT solution* is a vertical set of client and server software and hardware entities needed to implement a WoT use case, comprised of elements deployed in Things, Servients and clients.

A *Client Application* implements the client side of a solution. It may
    * be a mobile app or browser page communicating with Things or Servients
    * gather Things data from Things or Servients
    * control Things
    * interact with cloud.

A *Server Application* implements the server side of a solution and is deployed as installable software modules in Things and Servients.

Web of Things scripting use cases may involve multiple IoT platforms, hardware boards, and software stacks.

The following categories of use cases are described for WoT scripting:
- use cases for IoT platform developers: on multiple HW boards with a single general SW stack
- use cases for IoT solution developers: on multiple platforms with a specialized SW stack (e.g. one SW application) to implement isolated vertical solutions
- use cases for IoT application develers: on multiple platforms with multiple SW applications.

Scripting use cases for WoT
---------------------------

### Server side use cases
#### Deploy script(s) that make an IoT server a WoT compatible Thing.

#### Deploy script(s) to a Thing that enable extensions with new hardware sensors and actuators.

#### Deploy script(s) to a Thing that enable a given vertical solution with locally running business logic that is able to perform [a subset of] the following operations:
  - read supported Thing description, capabilities and interfaces
  - read existing Thing properties
  - update existing Thing properties
  - invoke actions on the Thing
  - install event handlers on the Thing
  - extend the Thing data model/description
  - update the Thing data model/description.

#### Create local Things based on Thing Description.

#### Make the local Thing discoverable in a WoT network (registration or bootstrapping process).

#### Unregister the local Thing from a WoT network.

#### Delete local Things.

### Client side use cases

#### Discover Things (Thing Descriptions) in a WoT network, with optional filtering based on
    - existence of elements in Things description
    - value of elements in Things description
    - value range of elements in Things description
    - complex conditions and queries based on Things description (e.g. SPARQL queries).

#### Create remote Things based on a given Thing Description.

#### Retrieve a remote Thing representation (full set or subset of property values).

#### Update remote Things by writing its properties.

#### Invoke an action on a remote Thing.

#### Install an event handler (listener or observer) for an event triggered by a remote Thing.

#### Delete a remote Thing.
