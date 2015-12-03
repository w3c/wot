# W3C WoT TF-DI Scope

Wiki - http://www.w3.org/WoT/IG/wiki/Discovery_TF
This document is part of Task Force on Discovery. The discussions on discovery will address the following aspects.

## Definition of discovery in general
* Understanding its purpose
* Applicability into various use cases

## Current landscape
* It is intended to survey the existing literature and mechanisms for discovery.
* Understand different discovery architectures i.e. centralized or P2P over distributed architecture
* Means of interaction used for discovery

## Scopes and dimensions of discovery
* Scopes could be further classified into local and remote
* Dimensions could be in terms of context, location, humans(from access control perspective) etc.

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
