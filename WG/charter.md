# [DRAFT] Charter for the W3C Web of Things Framework Working Group

**Comments on this charter can be made via pull requests or email to the public-wot-ig@w3.org list. Please use the subject line prefix [WG Charter]**

> The Internet of Things is about services based upon the means to describe and connect things including physical sensors and actuators, people and abstract things.

The Internet of Things (IoT) suffers from fragmentation and data silos. The mission of the Web of Things Framework Working Group is to address this fragmentation by connecting IoT platforms via the Web using an abstraction layer above existing platforms and transport protocols. We seek to reduce costs through the global reach of Web standards, to enable open markets of services, and to unleash the power of the network effect.

Property | Value
---------|------
Start date |  (The start date is the date of the "Call for Participation", when the charter is approved.)
End date	| 31 December 2018
Charter extension | The charter extension history is documented in "<a href="#about">About this charter</a>"
Confidentiality | Proceedings are [public](http://www.w3.org/2015/Process-20150901/#confidentiality-levels)
Initial Chairs | Co-Chairs TBD
Initial Team Contacts | (FTE %: 50%) Dave Raggett, Kazuyuki Ashimura
Usual Meeting Schedule | Teleconferences: Weekly, Face-to-face: 2-3 per year


## Extending the Web from a Web of Pages to a Web of Things

This section introduces the architecture for the Web of Things as the basis for the charter's work items. The starting point is the idea of scriptable objects as "things" standing for physical or abstract entities. The approach is based upon the fundamentals of Web architecture:

* URIs for identifying things
* A variety of protocols for accessing things, since no one protocol will be appropriate in all contexts
* Linked Data for describing things as a basis for interoperability and discovery, playing an analogous role to HTML for web pages

URIs can be used to access machine interpretable descriptions of things. These descriptions enable the automatic generation of scriptable objects whose events, properties and actions correspond to those of the thing the object stands for. An object on one server can act as a proxy for an object on another server. Web developers are shielded from the implementation details of how objects are coupled, allowing system designers to choose the transport protocols best suited to the given context. Servers can be provided at a wide range of scales from microcontrollers to cloud-based server farms.

![web of things servers and scripts](http://www.w3.org/2015/09/wot-arch.png)

The diagram shows a thing on server A that acts as a proxy for a thing on server B which is coupled to a sensor and actuator. The proxy on server A could be set up by a script on that server, or by a script on server B.
The latter is useful when server A is on the public Internet and server B is behind a firewall, and you want to provide public access to the thing from server A.

Web page scripts can create local proxies for things on servers, subject to the protocols supported by Web browsers and the single origin security policy. There are many possible applications across a wide range of domains, e.g. homes, offices, lifecare, cities, electrical grids, retail and manufacturing.

## Goals

This Working Group will define Web technology standards to enable services that bridge IoT platforms on devices ranging from microcontrollers to cloud-based server farms, and help to end the current fragmentation and data silos, for a global market of services and associated software tools. This is expected to drive down the costs and risks involved in developing services, and help realise the full potential for the IoT.

## Scope

This Working Group will focus on a Linked Data vocabulary for describing things in terms of their events, properties and actions, and for describing which protocols a given server supports. In addition, the Working Group will define content types for serialization of data models and server metadata, along with scripting APIs and bindings for common protocols in collaboration with other groups.

### Out of Scope

* Vocabularies for specific application domains

* Application domain specific scripting interfaces

* Normative specifications for security, assurance, privacy and resilience of IoT systems. These are recognized as important topics, but are being declared as out of scope for this charter since it is not yet completely clear what W3C should do in respect to these topics.

When a consensus emerges as to what is needed, the scope could be adjusted and new work items added to future revisions of this charter, subject to W3C Advisory Committee Review.

## Deliverables

This Working Group will develop specifications and progress them to W3C Recommendations for the following work items, each of which will be expected to have a section on security and privacy considerations.

### Linked Data vocabulary for describing data models

This will specify a data modelling vocabulary for describing things in terms of events, properties and actions, and links to domain models and protocol specific API descriptions. This work item will include provision for late bound data types, re-use of data type definitions, and labelled opaque data types for data to be handed on to entities that understand it. This vocabulary will be designed to supplement the RDF core datatypes, including enumerations and numeric ranges.

### Linked Data vocabulary for server metadata

This will specify a Linked Data vocabulary for identifying a common set of protocols, data formats and encodings for communication between servers. This is needed to decouple application scripting APIs from the details of which protocols are used between any pair of servers.

### Content Type for a serialisation of data models

This Working Group will register a Content Type for a serialisation of data models that is easy to author and easy to process on resource constrained devices. 

### Content Type for a serialisation of server metadata

This Working Group will register a Content Type for a serialisation of server metadata that is easy to author and easy to process on resource constrained devices. This metadata will enable other servers to identify which protocols, data formats and encodings to use when communicating with a given server.

### Application Domain Independent Scripting APIs for Things

This work item will define programming language dependent APIs for application scripts to interact with things and their metadata. This includes the means to register and unregister things and their proxies, as well as event listeners for events associated with things. For static programming languages, this will include the means to access and update properties, and to invoke actions and handle their results.

### Bindings to common protocols

This work item will define how common protocols can be used to convey messages for registering and unregistering proxies, event notifications, property and metadata updates, action invocations and responses. The set of protocols should include HTTP, WebSockets, and CoAP as a minimum, and may include MQTT, MQTT-SN, XMPP and AMQP. The work item may be split into separate specifications for each protocol.

## Milestones

Specification | FPWD | CR | PR | REC
--------------|------|----|----|----
Data Modelling Vocabulary | July 2016 | December 2017 | September 2018 | November 2018
Server Protocols Vocabulary | July 2016 | December 2017 | September 2018 | November 2018
Data Models Content Type | July 2016 | December 2017 | September 2018 | November 2018
Server Metadata Content Type | July 2016 | December 2017 | September 2018 | November 2018
Scripting APIs | December 2016 | December 2017 | September 2018 | November 2018
Protocol Bindings | December 2016 | December 2017 | September 2018 | November 2018

*Note: the group will document signifcant departures from this initial schedule on the group home page*

## Dependencies and Liaisons

### Other W3C Groups

* [Internationalization Core Working Group](http://www.w3.org/International/core/)
  for internationalization and localization review.
* [Privacy Interest Group](http://www.w3.org/Privacy/)
  for privacy reviews.
* [Protocols and Formats Working Group](http://www.w3.org/WAI/PF/) (and successor)
  to help ensure the protocols provide support for accessibility to people with disabilities.
* [Semantic Web Interest Group](http://www.w3.org/2001/sw/interest/)
  for review of this group's deliverables involving Linked Data.
* [Spatial Data on the Web Working Group](http://www.w3.org/2015/spatial/wiki/Main_Page)
  for geospatial metadata and the Semantic Sensor Network ontology.
* [Web Application Security](http://www.w3.org/2011/webappsec/)
  for security reviews.
* [Web of Things Interest Group](http://www.w3.org/WoT/IG/)
  for collaboration on use cases and requirements, as well as research and incubation of ideas for consideration by this group.
* [Web Security Interest Group](http://www.w3.org/community/webpayments/)
  for security reviews.
* [EXI Working Group](http://www.w3.org/XML/EXI/)
  for collaboration on efficient encoding schemes for thing descriptions and protocol bindings.

This group will also collaborate with future W3C Working Groups developing authentication protocols.

### Groups Outside W3C

* [IETF](http://www.ietf.org)
  for collaboration on use cases and requirements, as well as on protocol bindings, security and privacy.
* [Industrial Internet Consortium (IIC)](http://www.industrialinternetconsortium.org)
  for collaboration on use cases and requirements, and review of this group's draft specifications.
* [ETSI](http://www.etsi.org) and [OneM2M](http://www.onem2m.org)
  for collaboration on use cases and requirements, and enabling the use of the Linked Data vocabularies by M2M.
* [OASIS](https://www.oasis-open.org)
  for collaboration on use cases and requirements, and binding to the MQTT, MQTT-SN and AMQP protocols.
* [OGC SensorThings SWG](http://www.opengeospatial.org/projects/groups/sweiotswg)
  for review of this group's draft specifications in respect to their applicability to the OGC's Sensor Web Interface for IoT.
* *others to be added*

## Participation

To be successful, the Web of Things Framework Working Group is expected to have 10 active participants for its duration. Effective participation in Web of Things Framework Working Group may consume .1 FTE for each participant; for editors this commitment may be higher.

## Communication

This group primarily conducts its work on the public mailing list public-wot-wg@w3.org (archive). Administrative tasks may be conducted in Member-only communications.

Information about the group (deliverables, participants, face-to-face meetings, teleconferences, etc.) is available from the Web Payments Working Group home page.

## Decision Policy

As explained in the Process Document ([section 3.3](http://www.w3.org/Consortium/Process/policies#Consensus)), this group will seek to make decisions when there is consensus. When a Chair puts a question and observes dissent, after due consideration of different opinions, the Chair should put a question out for voting within the group (allowing for remote asynchronous participation -- using, for example, email and/or web-based survey techniques) and record a decision, along with any objections. The matter should then be considered resolved unless and until new information becomes available.

Any resolution first taken in a face-to-face meeting or teleconference (i.e., that does not follow a 7 day call for consensus on the mailing list) is to be considered provisional until 5 working days after the publication of the draft resolution. If no objections are raised on the mailing list within that time, the resolution will be considered to have consensus as a resolution of the Working Group.
## Patent Policy

This Working Group operates under the [W3C Patent Policy](http://www.w3.org/2014/Process-20140801/) (1 August 2014 Version). To promote the widest adoption of Web standards, W3C seeks to issue Recommendations that can be implemented, according to this policy, on a Royalty-Free basis.

For more information about disclosure obligations for this group, please see the [W3C Patent Policy Implementation](http://www.w3.org/2004/01/pp-impl/).

## About this Charter

This charter for the Web Payments Working Group has been created according to [section 5.2](http://www.w3.org/Consortium/Process/groups#GAGeneral) of the [Process Document](). In the event of a conflict between this document or the provisions of any charter and the W3C Process, the W3C Process shall take precedence.

Development of this charter was supported in part by the European Union's 7th Research Framework Programme (FP7/ 2013-2015) under grant agreement nº317862 - Compose.
