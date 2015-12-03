# W3C WoT TF-DI Scope

Author - Soumya Kanti Datta, EURECOM, Email: dattas@eurecom.fr

## Resource Discovery
Resource discovery is one of the most fundamental building block of a Web of Things (WoT) platform. Industry estimates show that 30-50 Billions things will be connected to the Internet by 2020. To provide value-added services to the end users through WoT platforms, these things must interact with their environment, the cloud and among themselves too. Such interactions allow exchanging and processing of things metadata and reacting automatically to the environment. However, the heterogeneity of thing, their capabilities & properties, communication technologies add to the complexity of effective realization of the WoT platforms. Therefore, to realize the vision of WoT, there must be mechanisms available for automatic discovery of resources, their properties and capabilities as well as the means to access them. Furthermore, such discovery mechanisms also depend on other services like configuration management, registration and un-registration, sleep/idle mode of things. The WoT Task Force on Discovery recognizes the importance of discovery and addresses the following aspects.

* Understanding its purpose
* Applicability into various use cases

## Current landscape

An extensive survey of the existing technological survey has been carried out by TF-DI. The main goals of this study were -

* Understand and compile the current mechanisms for discovery.
* Review different discovery architectures i.e. centralized, P2P, distributed architecture.
* Examine the available discovery technologies.

The main outcome of the survey is a categorization of the discovery mechanisms and studying their interaction patterns. This is further illustrated at section [Put the section hyperlink here].

## Scopes and dimensions of discovery

Resource discovery has different scopes based on the contexts of the intended scenarios. When considering from the point of view of physical location and/or network, the discovey scopes can include both local and remote aspects. For example, searching for things around "ME" corresponds to a local scope while a remote scope can be searching for things providing offline maps in a foreign location through a WoT platform. At the same time, discovery scopes could also be in terms of one-time (thing discovery in a smart home) or long standing (pub-sub sytle).

Similarly, discovery mechanisms also have several dimensions, e.g. context, location, humans (from the access control perspective) etc.

## Need to consider
* Registration and unregistration of WoT devices as a part of discovery
* Life-cycle of discovery
* Do we need an abstraction layer for communication technologies (NFC, BLE...) and investigate how they should relate to discovery?

## Brainstorming on
* What are you using to discover?
* What are you discovering - 

1. It could be in terms of a physical thing or its description or an URI of thing

2. Alternatively, it could also be mentioned in terms of resource, service and property

3.  Could also be local network discovery

* Clarify and define how Thing Description (TD) can be used in discovery

# Open questions/items
* Advertisement based discovery
* Beacon based discovery 
* Serverless discovery options (similar to bittorrent peer exchange)
* Taxonomy
* Use cases to consider

## Simplifying Discovery Mechanism
''There are so many different ways to discover things, how can we make this easier?''

Discovery for the Web of Things involves a mix of techniques. These include mDNS, UPnP and CoAP for local area networks, involving a combination of multicast datagrams and caching of messages. Bluetooth and ZigBee feature discovery and pairing of devices. Bluetooth Smart (aka BLE) supports beacons that broadcast their presence to nearby devices. NFC and barcodes provide further ways to discover services.

Another approach involves devices registering themselves with brokers that can be queried for available services. The broker can be a local device such as a home hub on a local area network, or it could be a server on the public Internet. The query service can be subject to access control policies to protect the owner's privacy.

Discovery can be based upon social relationships between people, and between people and devices. This could be based upon centralised social networks, or distributed approaches. One idea involves personal zones that enable people to manage their devices and services, and to set access control policies for sharing these with their social contacts. Your personal zone is associated with a URI that can be used to access it.

The relationship between things provides a further basis for discovery. The relationships are defined through the models for things, where a thing has properties whose values are other things. Search engines can thus discover new things by examining the models for things they already know. This is analogous to how search engines discover web sites by examining the HTML for the pages of sites they already know.

We're looking to simplify discovery by decoupling scripts from the details of the underlying mechanisms outlined above. The idea is to provide a unified query API that can be configured to use a local or remote broker or some combination thereof. We want to evolve this approach through practical implementation experience with a wide variety of use cases and contexts.  Some obvious questions include: what information needs to be passed to the query API to specify the context for the search?   Can the range of mechanisms used for satisfying queries be described by a policy of some kind?  The discovery agent integrated as part of a Web of Things server could talk to other agents to expand its effectiveness. The aim is to simplify discovery for regular script writers by handing the difficult work over to system programmers and a distributed network of discovery agents.


'''We need your help to collect relevant use cases!'''

## 
