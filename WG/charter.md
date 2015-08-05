# [DRAFT] Charter for the Web of Things Framework Working Group
The Internet of Things (IoT) suffers from fragmentation and data silos. The mission of the Web of Things Framework Working Group is to address this fragmentation by connecting IoT platforms via the Web using an abstraction layer above existing platforms and transport protocols. We seek to reduce costs through the global reach of Web standards, to enable open markets of services, and to unleash the power of the network effect.

The approach is based upon the fundamentals of Web architecture

* URIs for identifying things
* A variety of protocols for accessing things, since no one protocol will be appropriate in all contexts
* Linked Data for describing things as the basis for interoperability

The starting point is the idea of virtual representations (objects) of "things" standing for physical or abstract entities. Thing descriptions enable the generation of scriptable objects as proxies for things on another server. Web developers are shielded from the details of the transport protocols, allowing system designers to choose the protocols best suited to the given context. Servers can be provided at a wide range of scales from microcontrollers to cloud-based server farms.

![web of things servers and scripts](https://github.com/w3c/web-of-things-framework/blob/master/images/wot-arch.png)

This Working Group will focus on a Linked Data vocabulary for describing things in terms of their events, properties and actions, and for describing which protocols a given server supports. In addition, the Working Group will define a content type for serialization of data models in JSON-LD along with a default context for the core vocabulary, and bindings for common protocols in collaboration with other groups.

## Goals

## Scope

## Deliverables

## Dependencies and Liaisons

### Other W3C Groups

Internationalization Core Working Group
: Internationalization and localization review.
Privacy Interest Group
: For privacy reviews.
Protocols and Formats Working Group (and successor)
: To help ensure the protocols provide support for accessibility to people with disabilities.
Web Application Security
: For security reviews.
Web Applications Working Group (and successor)
: For review of JavaScript APIs.
Web Security Interest Group
: For security reviews.

This group will also collaborate with future W3C Working Groups developing authentication protocols.

### Groups Outside W3C

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

This charter for the Web Payments Working Group has been created http://www.w3.org/Consortium/Processaccording to [section 6.2](http://www.w3.org/Consortium/Process/groups#GAGeneral) of the [Process Document](). In the event of a conflict between this document or the provisions of any charter and the W3C Process, the W3C Process shall take precedence.

Development of this charter was supported in part by the European Union's 7th Research Framework Programme (FP7/ 2013-2015) under grant agreement nº317862 - Compose.