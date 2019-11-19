# WoT Discovery
* Michael McCool, Intel Corporation, michael.mccool@intel.com
* Carsten Bormann, Universität Bremen TZI, cabo@tzi.org
* Kunihiko Toumura (東村邦彦), Hitachi Ltd., kunihiko.toumura.yv@hitachi.com

## Abstract

W3C Web of Things (WoT) Thing Descriptions (TD) provide metadata that
describe the affordances and semantics of IoT devices and services.
However, before a TD can be interpreted and used, it needs to be found.
This document describes a discovery process for WoT TDs that also 
provides appropriate security and privacy access controls, supports 
multiple "first contact" mechanisms, supports advanced querying
capabilities, and supports both local and global discovery use cases.
This discovery process is based on CoRE Resource Directory {{CoRE-RD}}
with authentication following ACE {{ACE}} and can be accessed over either
CoAP {{CoAP}} or HTTP {{HTTP1.1}}.  To preserve privacy, the system
separates the discovery process into two stages, open
introduction protocols for first contact and a directory service that
provides querying capabilities and access to metadata, but only after
authentication and authorization.  Any introduction mechanism may be
used that can provide the address of a directory service but we will
specify several useful ones.  

**Abbreviation:** wot-discovery

## Introduction

This MAY {{?RFC2119}} be useful.

## Background

## Requirements

The WoT discovery process should have the following capabilities:

### System
* Support discovery via third-party services (e.g. a directory service) in order to support sleeping devices
* Support WoT Scripting Discovery API

### Localization, Search, and Filtering
* Support peer-to-peer (self-identifying), local (network segment), and global (internet-wide) discovery
* Support various forms of query, including keyword, template, and semantic queries

### Data Management
* Support both Dynamic and Static TDs
* Automatically clean up TDs for devices that are no longer accessible

### Security
* Support best known methods for authentication
* Support authorization and role management

### Privacy
* Support authentication and authorization mechanisms that do not reveal user identities
* Support device and information lifecycle, trust management, access controls
* Distribute TDs only to authenticated and authorized users
* Don’t leak metadata or queries to unauthorized entities

### Alignment with Existing Standards
* Align with IETF CoRE Resource Directories, CoRE Link Format, and DID.
* Be accessible via a variety of existing discovery mechanisms,
  including DNS-SD, DNS-SRV, DHCP, QR codes, and Bluetooth beacons.

## Use Cases
TODO

## Architecture
Two-phase architecture: open and lightweight "first contact" introduction 
mechanism, following by an authenticated and authorization step that gates
access to an "exploration" directory mechanism that provides detailed metadata.

The first contact mechanism should be designed to preserve privacy, and will
essentially be designed just to provide links to directory services without
revealing what devices are indexed by those directories.

The exploration mechanism should be designed to be scalable, and implementable
both on small devices (with a small amount of data, such as a single TD) and on
larger systems managing millions of devices.   It should support searches of
various types.

### Introduction Phase: First Contact Mechanism
* Obtain address of directory service - only
* Address should not leak any other metadata, eg type of devices
* Can have multiple mechanisms for introduction
  - Local: QR code. mDNS, DNS-SD, DHCP, QR code, Bluetooth beacon, etc.
  - Global: search engine
  - Self: Well-known addresses, eg “.well-known/core?rt=wot.directory”

### Exploration Phase: Directory 
* Mutual authentication and secure connection required, and then...
* Queryable Directory service
* Multiple query type supported
  - Location (may be necessary to use for introduction)
  - Keywords
  - Templates
  - SPARQL semantic query
  - GraphQL
  - By-Example (templates)
* External service: 
  - Need registration sub-API
  - Timeouts
  - Access control
  - Self (peer-to-peer): same query API, but no public registration API
  - Mutable IDs need way to notify registered users of changes
  
## Design Options

### Use an Existing Mechanism for Discovery
TODO

### Use Existing Mechanisms for Introductions and a New Mechanism for Exploration
TODO

### Design a new Mechanism for both Introduction and Exploration
TODO

## CoRE Discovery and Directories
CoRE proposes several discovery and directory mechanisms.
* Things by CoAP multicast on well-known URI, for example, `/.well-known/core?rt=w3c.wot.thing-description`
* Discovery of Resource Directories use a similar approach: `/.well-known/core/?rt=core.rd*`
These, however, only support discovery in local network segments via a (non-scalable) broadcast mechanism.
This gives a rough localization as well, but delimited by the topology of the network segmentation.

## Registration of TDs to CoRE Resource Directories
```
POST coap://rd.example.com/rd?ep=(Thing-ID)
Content-Format: application/td+json
```
* Content-format ID is t.b.d., but needs to be in the 256-9999 range.
* Registration with a directory will also support a time-to-live.
  The Thing will have to periodically refresh the TD and/or send a keep-alive.
* Updates to existing TDs should be supported to allow changes to TDs, 
  including mutable IDs.
* HTTP should also be supported.

## Retrieve TD from CoRE Resource Directory
```
GET coap://rd.example.com/rd-lookup?rt=MyLampThing
Accept: application/td+json
```
* Technically CoRE-RD only stores links to resources, not the resources
  themselves.  A "CoRE Data Hub" combined with the RD may be required to actually
  allow storage and retrieval of TDs themselves.
* HTTP should also be supported

## Authentication
* Authentication should be through either OAuth2 (for HTTP) or ACE-OAuth2 for CoAP.
* Mutual authentication and confidentialityt should be supported via either TLS or DTLS.
* The secure connection should be established before query parameters are set to avoid
  inferencing of PII from query parameters.
* OAuth2 scopes should be pre-defined for a suitable set of roles and tasks associated with those roles

## Other Introduction Mechanisms
The IPv6 Authoritative Border Router Option, DHCP, DNS-SRV, QR codes, Bluetooth beacons
can also be used for discovery of Things and Directory Services.  
All such mechanisms are acceptable as long at they satisfy the following properties:
* No metadata about the Things are distributed; only an address of a directory service should be returned.
* If a link directly to a Thing is returned, the address should not have any implied metadata.
   - For example, a URL should not be used with a human-readable name.
* Generally, access to full directory services should only be provided after mutual authentication and authorization
   - Privacy: both TDs and query parameters for searches can be used to infer PII information
     even if the TDs do not explicitly include such information
   - Security: directory queries can be expensive and so should only be invoked for authorized users to mitigate
     denial-of-service attacks.  Mutual authentication also mitigates man-in-the-middle attacks based on manipulation
     of TD metadata.
Introduction services that are global in nature (eg DNS) may allow additional query parameters to identify
the location of interest.  Other forms of metadata should however be avoided and the granularity of location accuracy
should be limited to avoid the inference of PII.

# Appendices 
## A. Background

The aim of this appendix is to collect and document candidate discovery technologies, 
evaluate them, and to derive generic discovery interaction patterns. 
The list of discovery categories can be found in the [Discovery Categories] section. 
A list of discovery interaction patterns are presented in 
the [Discovery Patterns] section, and
an evaluation of technologies can be found in the [Discovery Technologies] section. 
Further, we also analyzed which discovery technologies are supported by which IoT consortia
and standards organizations.
This analysis can be found in the [Support] section.
      
### Discovery Categories

#### Finding Things Nearby
This category of discovery includes technologies that allow systems to
discover things nearby, in a spatial sense.

* **Barcodes and QR codes**
   - Can be visually read and decoded by a program (e.g. by an app)
   - Max range: line of sight of the client
   - Interaction style: pull (client initiates interaction)
* **RFID**
* **NFC (Near Field Communication)**
   - Employs electromagnetic induction between two loop antennas 
   - Operates on globally unlicensed radio frequency ISM band of 13.56 MHz
   - Builds on RFID by allowing two-way communication between endpoints
   - Can be utilized to bootstrap more powerful communication connections (e.g. Bluetooth or WiFi) between two devices
   - Max range: ~10 cm
* **Markerless Recognition**
   - Augmented reality technique using a location service
   - Location in turn can be based on accelerometers, cameras, compasses, available WiFi access points, GPS, etc.
   - Camera may also be used to find field of view
   - Based on derived position and a database of things indexed by location, surrounding things can be identified
   - Implemented e.g. by AR browsers such as LAYAR or AURASMA
   - Max range: Vicinity of client (accuracy of client's location is more of a constraint)
   - Interaction style: pull (client initiates interaction)
* **UriBeacon (Google's Physical Web)**
   - Base technology: Bluetooth Low Energy
   - BLE-enabled device periodically transmits an advertising packet containing a URI.
   - UriBeacon approach does not require an app. 
   - Since URI is identifying a beacon, standard Web mechanisms (DNS) can be used for resolving
   - UriBeacon is now part of the Eddystone open source project which allows other beacon data formats in addition to URLs
   - Eddystone supports broadcasting URLs via its Eddystone-URL frame type
   - Max range: 100 meters (see: {{BLE}})
   - Interaction style: push (beacons broadcast information)
   - References: {{UriBeacon}}, {{EddyStone}}
* **iBeacon (Apple)**
   - Base technology: Bluetooth Low Energy
   - BLE-enabled device periodically transmits an advertising packet containing a UUID
   - iBeacon requires an app that is enabled to read whitelisted objects
   - UUID resolution requires an external server containing an directory
   - Max range: 100 meters 
   - Interaction style: push (beacons broadcast information)
   - References: {{BLE}}, {{iBeacon}}

#### Finding Things on My Local Network
This category includes technologies that allow discovery of endpoints on a local network segment.
This can also find things "nearby", but in a network topology sense, which may be only loosely 
correlated with spatial locality.  On the other hand, it may be better correllated with access
rights.

* **mDNS (+ DNS-SD)**
    - Base technology: IP + UDP
    - multicast DNS (mDNS) resolves host names to IP addresses within small networks. When an mDNS client needs to resolve a host name, it sends an IP multicast query message that asks the host having that name to identify itself. That target machine then multicasts a message that includes its IP address. All machines in that subnet can then use that information to update their mDNS caches.
    - often used in conjunction with DNS-SD that allows clients to conduct simple service discovery using standard DNS queries.
    - part of 'zeroconf' technology suite
    - implemented e.g. by Apple Bonjour
    - Interaction style: pull (client initiates communication)
    - References: {{RFC6762}} (+ {{RFC6763}} )

* **Multicast CoAP**
    - Base technology: IP + UDP + CoAP
    - CoAP supports making requests to an IP multicast group.
    - Clients can use multicast CoAP and the "All CoAP Nodes" multicast address to find CoAP servers. CoAP servers listen on the "All CoAP Nodes" address and the default CoAP port to reply to clients.
    - in combination with CoRE Link Format: a GET request to the appropriate multicast address is made for '/.well-known/core' (https://tools.ietf.org/html/rfc6690)
    - Interaction style: pull (client initiates communication)
    - References: {{RFC7252}}

* **SSDP**
    - Base technology: IP + UDP + HTTPU + SOAP
    - used by UPnP for discovery
    - 'Simple Service Discovery Protocol' (SSDP)
    - In order to discover SSDP services, an SSDP client multicasts a HTTP UDP discovery request to the SSDP multicast channel/Port. SSDP services listen to the SSDP multicast channel/Port. If a SSDP service hears a HTTP UDP discovery request that matches the service it offers then it will respond using a unicast HTTP UDP response.
    - Interaction style: pull (client initiates communication); however, some UPnP devices also push info periodically
    - References: {{SSDP}}

* **WS-Discovery**
    - Base technology: IP + TCP/UDP + SOAP et al.
    - specifies multicast discovery via web service based communication; avoids the need for centralized registries in smaller networks.
    - used by OASIS' Device Profile for Web Services (DPWS)
    - implemented e.g. by Microsoft Web Services on Devices API
    - Interaction style: pull (client initiates communication)
    - References: {{WS-Discovery}}

* **XMPP Service Discovery**
    - Base technology: IP + TCP + XMPP
    - discovering information about other XMPP entities (e.g. user). Two kinds of information can be discovered: (1) the identity and capabilities of an entity and (2) the items associated with an entity, such as the list of rooms hosted at a multi-user chat service.
    - Interaction style: pull (client initiates communication)
    - Reference: {{XEP-0030}}, update: {{XEP-0115}}

* **µPnP**
    - Base technology: IP + UDP + CoAP + IPSO
    - CoAP support makes use of CoAP's Resource Directory. Modified 802.15.4 link layer for support of uPnP. Resources formatted using IPSO Objects.
    - Reference: {{MicroPnP}}

#### Searching in Directories
In contrast to the above technologies, here, a central directory can be used for discovery of things and resources. Queries can be submitted to the directory to search for things and/or resources.

* **CoRE Resource Directory**
    - Base technology: IP + UDP + CoAP
    - Resource Directory (RD) hosts descriptions of resources held on other servers, allowing lookups to be performed for those resources
    - Also defines lookup interface that allows simple queries (e.g.: `GET /rd-lookup/res?rt=temperature` )
    - Reference: {{CoRE-RD}} 
    
* **XMPP IoT Discovery**
    - Base technology: IP + TCP
    - Thing Registry can be searched for public Things and their metadata (various tags, e.g., location or serial number). A search is performed by providing one or more comparison operators in a search request to the registry.
    - Reference: {{XEP-0347}}</li>

* **HyperCat**
    - Base technology: IP + TCP + HTTP
    - HyperCat is an open, lightweight JSON-based hypermedia catalogue format for exposing collections of URIs. HyperCat catalogue may expose any number of URIs, each with any number of resource description framework-like (RDF-like) triple statements about it.
    - Reference: {{HyperCat}} 

* **Push API**
    - Base technology: HTTP + web push protocol
    - The Push API enables sending of a push message to a previously registered Service Worker of a web application via a push service, e.g. allowing the web application to resume on this device. The Push API makes it possible to discover, awaken and connect user devices.
    - Reference: {{Push-API}}, {{RFC8030}}

* **SIR**
    - Base technology: IP + TCP + HTTP + XML
    - Discussion paper at the Open Geospatial Consortium (OGC) and part of the Sensor Web Enablement (SWE) framework.
    - Sensor Instance Registry (SIR) is a web service interface for managing the metadata and status information of sensors. Furthermore it is capable of automatically harvesting sensor metadata, and transforming the collected metadata sets into a homogeneous data model.
    - Rerefence: {{SIR}}

* **SPARQL Endpoints**
    - Base technology: IP + TCP + HTTP + RDF
    - a SPARQL endpoint of a central triplestore accepts advanced queries (generally consisting of SELECT/WHERE statements) for RDF data.
    - Reference: {{SPARQL}}

* **Research article: "Mobile digcovery: A global service discovery for the IoT"**
    - A centralized infrastructure that allows registration of sensors. Employs 'digrectory' to handle different resources. Each directory is attached to a particular communication technology, such as NFC, IPv6 etc. A mobile app enables users to discover and access sensors. Discovery mechanism takes advantage of geolocation and context awareness.
    - Reference: {{Jara2013}}

* **Research article: "A discovery service for smart objects over an agent-based middleware"**
    - Indexes all smart objects connected to the registry. Indexing is done based on domains. Discovery process is based on searching the indices.
    - Reference: {{Fortino2013}}

* **Research article: "A Semantic Enhanced Service Proxy Framework for Internet of Things"**
    - A semantic based framework which uses the concept of service advertisement of a smart object. Authors argue that such a mechanism makes the service registration easier which in turn facilitates discovery. The advertisement contains a service metadata including name, id, endpoint, location and semantic annotation link.
    - Reference: {{Alam2010}}

#### Searching Across Peers

In peer to peer discovery, the directory is essentially distributed across the peers. This is often based upon distributed hash tables which maps the search space into a numeric range and then allocates servers to parts of that range. The technique works well for scale free networks. It requires Peers in the P2P overlay to host parts of the RD and to have full connectivity and certain computing power in order to forward overlay messages, keep a consistent DHT and routing tables in the node. P2P Overlays tolerate certain amounts of churn but it would be impractical for constrained devices to participate as full peers on the DHT.

* **"RFC7650": CoAP usage for RELOAD**
    - Base technology: IP + UDP/TCP + CoAP
    - CoAP Usage for RELOAD allows CoAP nodes to store resources in a RELOAD peer-to-peer overlay, provides a lookup service, and enables the use of RELOAD overlay as a cache for sensor data. RELOAD is a DHT-based (Chord) P2P protocol of IETF.
    - Reference: {{RFC7650}}

* **"IETF Draft": Distributed RD**
    - Base technology: IP + UDP/TCP + CoAP
    - This document defines a Distributed Resource Directory (DRD) for Constrained Application Protocol (CoAP). This case uses raw DHT with no RELOAD dependencies.
    - Reference: {{A Distributed Resource Directory (DRD)}}

* **Research article: "A Scalable and self-configurable architecture for service discovery in the IoT"**
    - IoT gateways are backbones of the architecture. Gateways enable registration and un-registration of smart objects. A list of registered objects are maintained in a CoAP server. Service discovery is based on sending a GET request to ./well-known/core. In the distributed architecture several gateways are interlinked through two P2P overlays namely distributed local service (DLS) and distributed geographic table (DGT) to facilitate global service discovery.
    - References: {{Cirani2014}}

#### Accessing Thing Metadata

Once a "service" has been discovered with the approaches above, next "resources" and/or general metadata access at thing level needs to be performed.

* **CoRE Link Format**
    - Base technology: IP + UDP + CoAP
    - lists URIs (links) for the resources hosted by the server, complemented by attributes about those resources and possible further link relations. A well-known relative URI "/.well-known/core" is defined as a default entry point for requesting the list of links about resources hosted by a server.
    - References: {{RFC6690}}

* **HATEOAS**
    - Base technology: IP + TCP + HTTP (typically)
    - abbrv. for 'Hypermedia as the Engine of Application State'
    - principle of REST architectures (not a standard)
    - hypertext should be used to find your way through the API => client interacts with an application through hypermedia provided dynamically by application servers - no prior knowledge on how to interact, since links to resources are provided
    - References: {{HATEOAS}}

* **SOS**
    - Base technology: IP + TCP + HTTP + SOAP etc.
    - Standard by the Open Geospatial Consortium (OGC) and part of the Sensor Web Enablement (SWE) framework.
    - Sensor Observation Service (SOS) is a Web service interface which allows querying sensor measurements as well as sensor metadata. Advanced spatial, temporal and thematic filtering is possible to query measurements.
    - References: {{SOS}}</li>

#### Semantic Based Discovery

Several research articles using semantics for discovery can be found below.

* **A web service discovery computational method for IOT system**
    - Zhou and Ma presents an ontology concept for vehicular sensors. The algorithm calculates semantic similarity, relativity and combines them to work out the maximum value of the required concepts of the web services. Then a matching degree is computed to find out the relevant web services. 
    - Reference: {{Zhou2012}}

* **Semantic Enhanced Service Proxy Framework for Internet of Things**
    - The authors of this paper have introduced a semantic based framework which uses the concept of service advertisement of a smart object. They mention that such mechanism makes the service registration easier which in turn facilitates discovery. The advertisement contains a service metadata including name, id, endpoint, location and semantic annotation link.
    - Reference: {{Alam2010}}

* **An evaluation of semantic service discovery of a U-city middleware**
    - Another semantic based service discovery is presented in this paper. It proposes a middleware which performs SD using semantic web technologies on the contextual information inferred from sensor data.
    - Reference: [Yun2010]

### Discovery Interaction Patterns

TODO

### Evaluation of Discovery Technologies
In the following, we analyze the identified discovery technologies according to a set of evaluation criteria. Those criteria are listed below.
        
* **Evaluation Criteria**
    - Interaction Pattern: This criterion specifies whether a discovery technology complies with the identified interaction pattern in that discovery category. 
    - Support of higher layer discovery: 
            This criterion specifies whether a discovery technology provides means to submit search queries based on terms used in the underlying data model, so the thing description. This includes searches such as e.g.: 'search all things with name X' or 'search all things with property XYZ'. 
    - Bootstrapping:
            This criterion specifies whether means are provided to start/interact with things after discovery. 
    - Lifetime / sleepy nodes: 
            This criterion specifies whether sleeping times of constrained devices are directly considered by the discovery technology. 
    - Range: 
            This criterion specifies the spatial extent within which a discovery technology is functioning. This is important for the category “finding things around me”. 
    - Support for (physically) local/remote discovery of things
    - Richness of query:
            This criterion specifies to what extent contextual query parameters can be passed in a search query to discover things. E.g., this may include spatial parameters ('search all things in NYC') and temporal parameters ('search all things active yesterday'). In comparison to the criterion 'Support of higher layer discovery', this criterion looks at richer search query mechanisms that go beyond a basic search for terms of the thing description model. 
    - Ranking of results:
            This criterion specifies how/if the discovery mechanism is capable of ranking search results. 

* **Category: 1) Finding things around me**
        <table border="1">
          <tr bgcolor="LightGray">
          <th> <b>Technology</b> </th>
          <th> <b>Follows <a rel="nofollow" href="#discoveryPattern">Identified Interaction Pattern</a></b> </th>
          <th> <b>Higher Layer Discovery</b> </th>
          <th> <b>Bootstrapping</b> </th>
          <th> <b>Sleeping Time Support</b> </th>
          <th> <b>Range</b> </th>
          <th> <b>Local / Remote Discovery</b> </th>
          <th> <b>Richness of Query</b> </th>
          <th> <b>Ranking of Results</b>
          </th></tr>
          <tr>
          <td> <b>Optical Markers</b></td>
          <td> No (marker cannot send messages)</td>
          <td> No </td>
          <td> Pointing to thing endpoint </td>
          <td> n/a </td>
          <td> vicinity of client </td>
          <td> Local (vicinity of client) </td>
          <td> n/a </td>
          <td> n/a
          </td></tr>
          <tr>
          <td> <b>NFC</b> </td>
          <td> No (NFC initiator [client]starts interaction with target [thing]) </td>
          <td> No </td>
          <td> Pointing to thing endpoint </td>
          <td> n/a </td>
          <td> &lt; 10 cm </td>
          <td> Local </td>
          <td> n/a </td>
          <td> n/a
          </td></tr>
          <tr>
          <td> <b>Markerless Recognition</b> </td>
          <td> No (things are not part of interactions)</td>
          <td> Yes (could be supported by filtering out things on an AR layer) </td>
          <td> Pointing to thing endpoint </td>
          <td> n/a </td>
          <td> vicinity of client </td>
          <td> Local </td>
          <td> n/a </td>
          <td> n/a
          </td></tr>
          <tr>
          <td> <b>UriBeacon</b> </td>
          <td> Yes </td>
          <td> No </td>
          <td> Advertise message points to thing endpoint </td>
          <td> There is support for sleep state in BLE and depends on which power mode is being used in the thing. For lowest power mode, the radio is switched off completely and the thing will not periodically announce its URI. There are power mode configurations where the thing powers on once every so many seconds, broadcasts, listens, then goes back to sleep. </td>
          <td> &lt; 100 m (<a rel="nofollow" href="http://www.bluetooth.com/Pages/low-energy-tech-info.aspx">link</a>) </td>
          <td> Local (around the client) </td>
          <td> n/a (since this discovery is not initiated by manual search) </td>
          <td> n/a
          </td></tr>
          <tr>
          <td> <b>iBeacon</b> </td>
          <td> Yes </td>
          <td> No </td>
          <td> Advertise message points to thing endpoint</td>
          <td> Same as above (need to confirm) </td>
          <td> &lt; 100 m (<a rel="nofollow" href="http://www.bluetooth.com/Pages/low-energy-tech-info.aspx">link</a>) </td>
          <td> Local (around the client) </td>
          <td> n/a </td>
          <td> n/a
          </td></tr>
        </table>
        
* **Category: 2) Finding things on my network**
        <table border="1">
          <tr bgcolor="LightGray">
          <th> <b>Technology</b> </th>
          <th> <b>Follows <a rel="nofollow" href="#discoveryPattern">Identified Interaction Pattern</a></b> </th>
          <th> <b>Higher Layer Discovery</b> </th>
          <th> <b>Bootstrapping</b> </th>
          <th> <b>Sleeping Time Support</b> </th>
          <th> <b>Range</b> </th>
          <th> <b>Local / Remote Discovery</b> </th>
          <th> <b>Richness of Query</b> </th>
          <th> <b>Ranking of Results</b>
          </th></tr>
          <tr>
          <td> <b>mDNS</b> </td>
          <td> Yes </td>
          <td> No (but can be implemented on application layer) </td>
          <td> Client receives an IP address of the thing for direct interaction </td>
          <td> No </td>
          <td> n/a </td>
          <td> Local (network point of view) </td>
          <td> N/A since there is no manual entry of keywords </td>
          <td> No
          </td></tr>
          <tr>
          <td> <a rel="nofollow" class="external text" href="https://tools.ietf.org/html/rfc6690#section-1.2.1"><b>Multicast CoAP</b></a> </td>
          <td> yes </td>
          <td> yes, if resource directory is used </td>
          <td> address, port, and resource descriptions </td>
          <td> No </td>
          <td> n/a </td>
          <td> Local (network point of view) </td>
          <td> N/A since there is no manual entry of keywords </td>
          <td> No
          </td></tr>
          <tr>
          <td> <b>SSDP</b> </td>
          <td> Yes </td>
          <td> No (only basic filtering for devices or services with a specific type) </td>
          <td> Client receives the endpoint of the UPnP device description  </td>
          <td> No </td>
          <td> n/a </td>
          <td> Local (network point of view) </td>
          <td> N/A querying using keywords is not possible </td>
          <td> No
          </td></tr>
          <tr>
          <td> <b>WS-Discovery</b> </td>
          <td> Yes </td>
          <td> Only basic filtering is possible. They use the term 'scope' for this. </td>
          <td> Discovery happens in two steps: (1) find services and (2) locate a target service, i.e., to retrieve its transport address(es) </td>
          <td> No </td>
          <td> n/a </td>
          <td> Local (network point of view) </td>
          <td> basic querying using service types and scopes </td>
          <td> No
          </td></tr>
          <tr>
          <td> <b>XMPP Service Discovery</b> </td>
          <td> No </td>
          <td> Yes (Two kinds of information can be discovered: (1) the identity and capabilities of an entity, including the protocols and features it supports; and (2) the items associated with an entity, such as the list of rooms hosted at a multi-user chat service) </td>
          <td> Provides information on identity and capabilities of an entity. </td>
          <td> No </td>
          <td> n/a </td>
          <td> Local discovery </td>
          <td> basic querying which discovers entity, features etc </td>
          <td> No
          </td>
        </tr>
        </table>
        
* **Category: 3) Searching in directories**
        <table border="1">
          <tr bgcolor="LightGray">
          <th> <b>Technology</b> </th>
          <th> <b>Follows <a rel="nofollow" class="external text" href="https://github.com/w3c/wot/blob/master/TF-DI/Interactions.md">Identified Interaction Pattern</a></b> </th>
          <th> <b>Higher Layer Discovery</b> </th>
          <th> <b>Bootstrapping</b> </th>
          <th> <b>Sleeping Time Support</b> </th>
          <th> <b>Range</b> </th>
          <th> <b>Local / Remote Discovery</b> (DOES THIS MAKE SENSE HERE??) </th>
          <th> <b>Richness of Query</b> </th>
          <th> <b>Ranking of Results</b>
          </th></tr>
          <tr>
          <td> <a rel="nofollow" class="external text" href="https://tools.ietf.org/html/draft-ietf-core-resource-directory-04#section-5"><b>CoRE Resource Directory</b></a> </td>
          <td> Yes </td>
          <td> Yes, key-value-pair search based on tagged resources (e.g., "resource type", "interface type" etc.) is supported </td>
          <td> IP address &amp; port of thing and list of resources matching the query </td>
          <td> No </td>
          <td> n/a </td>
          <td> Local and remote </td>
          <td> No. Not beyond tag concatenation. </td>
          <td> No
          </td></tr>
          <tr>
          <td> <b>XMPP IoT Discovery</b> </td>
          <td> Yes </td>
          <td> Yes </td>
          <td> Provides various metadata for discovered thing. </td>
          <td> Yes </td>
          <td> n/a </td>
          <td> Local and remote </td>
          <td> Basic (the spec is not finalized) </td>
          <td> No
          </td></tr>
          <tr>
          <td> <b>HyperCat</b> </td>
          <td> Yes </td>
          <td> Yes, flexible key-value-pair search based on tagged resources is supported </td>
          <td> Provides reference to thing. </td>
          <td> No </td>
          <td> n/a </td>
          <td> Local and remote </td>
          <td> No. Not beyond key-value-pairs. </td>
          <td> No
          </td></tr>
          <tr>
          <td> <a rel="nofollow" class="external text" href="https://w3c.github.io/push-api/"><b>Push API</b></a> </td>
          <td> Yes </td>
          <td> (<i>???</i>) </td>
          <td> Yes, through notifications </td>
          <td> Yes, Service Worker runs in the background </td>
          <td> n/a </td>
          <td> Yes </td>
          <td> (<i>???</i>) </td>
          <td> (<i>???</i>)
          </td></tr>
          <tr>
          <td> <a rel="nofollow" class="external text" href="https://portal.opengeospatial.org/modules/admin/license_agreement.php?suppressHeaders=0&amp;access_license_id=3&amp;target=http://portal.opengeospatial.org/files/?artifact_id=40609"><b>Sensor Instance Registry</b></a> </td>
          <td> Yes </td>
          <td> Yes (bound to SensorML as thing description) </td>
          <td> Provides rich metadata description (SensorML) of discovered device </td>
          <td> No </td>
          <td> n/a </td>
          <td> Local and remote </td>
          <td> Yes. Spatial and Temporal queries. </td>
          <td> No
          </td></tr>
          <tr>
          <td> <b>SPARQL Endpoint</b> </td>
          <td> Yes </td>
          <td> Yes (flexible search interface - independent of underlying thing description) </td>
          <td> Provides description of discovered thing. </td>
          <td> No </td>
          <td> n/a </td>
          <td> Local and remote </td>
          <td> Yes, high flexibility in query formulation. </td>
          <td> Yes (with 'order by')
          </td></tr></table>
        <p><b>Category: 4) Searching across peers</b>
        <table border="1">
          <tr bgcolor="LightGray">
          <th> <b>Technology</b> </th>
          <th> <b>Follows <a rel="nofollow" class="external text" href="https://github.com/w3c/wot/blob/master/TF-DI/Interactions.md">Identified Interaction Pattern</a></b> </th>
          <th> <b>Higher Layer Discovery</b> </th>
          <th> <b>Bootstrapping</b> </th>
          <th> <b>Sleeping Time Support</b> </th>
          <th> <b>Range</b> </th>
          <th> <b>Local / Remote Discovery</b> </th>
          <th> <b>Richness of Query</b> </th>
          <th> <b>Ranking of Results</b>
          </th></tr>
          <tr>
          <td> <a rel="nofollow" class="external text" href="https://tools.ietf.org/html/rfc7650"><b>CoAP RELOAD</b></a> </td>
          <td> No pattern has been investigated </td>
          <td> See CoAP RD  </td>
          <td> See CoAP RD </td>
          <td> No </td>
          <td> n/a </td>
          <td> Local and remote </td>
          <td> See CoAP RD </td>
          <td> No
          </td></tr></table>
        <p><b>Category: 5) Accessing thing metadata</b>
        <table border="1">
          <tr bgcolor="LightGray">
          <th> <b>Technology</b> </th>
          <th> <b>Follows <a rel="nofollow" class="external text" href="https://github.com/w3c/wot/blob/master/TF-DI/Interactions.md">Identified Interaction Pattern</a></b> </th>
          <th> <b>Higher Layer Discovery</b> </th>
          <th> <b>Bootstrapping</b> </th>
          <th> <b>Sleeping Time Support</b> </th>
          <th> <b>Range</b> </th>
          <th> <b>Local / Remote Discovery</b> </th>
          <th> <b>Richness of Query</b> </th>
          <th> <b>Ranking of Results</b>
          </th></tr>
          <tr>
          <td> <b>CoRE Link Format</b> </td>
          <td> Yes </td>
          <td> No </td>
          <td> Yes, this format can be used for bootstrapping. </td>
          <td> No </td>
          <td> n/a </td>
          <td> Local and remote </td>
          <td> Low. Just direct access to metadata. </td>
          <td> Can be used by application layer to rank results
          </td></tr>
          <tr>
          <td> <b>HATEOAS</b> </td>
          <td> No (typically, not one metadata document, but information distributed and advertised via links) </td>
          <td> No </td>
          <td> Bootstrapping information can be gathered by following links. </td>
          <td> No </td>
          <td> n/a </td>
          <td> Local and remote </td>
          <td> Low. </td>
          <td> No
          </td></tr>
          <tr>
          <td> <b>Sensor Observation Service</b> </td>
          <td> Yes </td>
          <td> No </td>
          <td> Yes, it returns SensorML when metadata is queried. </td>
          <td> No </td>
          <td> n/a </td>
          <td> Local and remote </td>
          <td> Medium. Temporal queries are supported. </td>
          <td> No
          </td></tr></table>
      
### Discovery Technologies used by IoT Consortia

Below we analyze which discovery technologies are used by related IoT consortia, initiatives, and working groups.
        "--" equals NO (not supported). 
        <table border="1">
          <tr bgcolor="LightGray">
          <th> Consortium </th>
          <th> Focus Domain </th>
          <th> 1. Category: <a href="/WoT/IG/wiki/Discovery_Categories_and_Tech_Landscape#1._Finding_things_around_me" title="Discovery Categories and Tech Landscape">Finding things around me</a> </th>
          <th> 2. Category: <a href="/WoT/IG/wiki/Discovery_Categories_and_Tech_Landscape#2._Finding_things_on_my_network" title="Discovery Categories and Tech Landscape">Finding things on my network</a> </th>
          <th> 3. Category: <a href="/WoT/IG/wiki/Discovery_Categories_and_Tech_Landscape#3._Searching_in_Directories" title="Discovery Categories and Tech Landscape">Searching in Directories</a> </th>
          <th> 4. Category: <a href="/WoT/IG/wiki/Discovery_Categories_and_Tech_Landscape#4._Searching_across_Peers" title="Discovery Categories and Tech Landscape">Searching across Peers</a> </th>
          <th> 5. Category: <a href="/WoT/IG/wiki/Discovery_Categories_and_Tech_Landscape#5._Accessing_thing_metadata" title="Discovery Categories and Tech Landscape">Accessing thing metadata</a>
          </th></tr>
          <tr>
          <td> <a rel="nofollow" class="external text" href="https://www.ietf.org/">IETF</a> </td>
          <td> all </td>
          <td> -- </td>
          <td> <a rel="nofollow" class="external text" href="https://tools.ietf.org/html/rfc6762">mDNS</a>; <a rel="nofollow" class="external text" href="https://tools.ietf.org/html/rfc7252">Multicast CoAP</a>; <a rel="nofollow" class="external text" href="https://tools.ietf.org/html/draft-cai-ssdp-v1-03">SSDP</a> </td>
          <td> <a rel="nofollow" class="external text" href="https://tools.ietf.org/html/draft-ietf-core-resource-directory-04">CoRE Resource Directory</a> </td>
          <td> <a rel="nofollow" class="external text" href="https://tools.ietf.org/html/draft-jimenez-p2psip-coap-reload-10">CoAP RELOAD</a> </td>
          <td> <a rel="nofollow" class="external text" href="https://tools.ietf.org/html/rfc6690">CoRE Link Format</a>
          </td></tr>
          <tr>
          <td> <a rel="nofollow" class="external text" href="http://openmobilealliance.org/">OMA</a> </td>
          <td> all </td>
          <td> -- </td>
          <td> -- </td>
          <td> OMA LwM2M uses CoAP </td>
          <td> -- </td>
          <td> OMA LwM2M can be extended to work with CoRE Link Format
          </td></tr>
          <tr>
          <td> <a rel="nofollow" class="external text" href="http://openinterconnect.org">OIC</a> </td>
          <td> all </td>
          <td>&#160;? </td>
          <td>&#160;? </td>
          <td>&#160;? </td>
          <td>&#160;? </td>
          <td>&#160;?
          </td></tr>
          <tr>
          <td> <a rel="nofollow" class="external text" href="https://allseenalliance.org">Allseen Alliance</a> </td>
          <td> smart home </td>
          <td> <a rel="nofollow" class="external text" href="https://allseenalliance.org/framework/documentation/learn/core/about-announcement"><b>About Announcement</b></a> </td>
          <td> mDNS </td>
          <td>&#160;? </td>
          <td> -- </td>
          <td> --
          </td></tr>
          <tr>
          <td> <a rel="nofollow" class="external text" href="http://www.ipso-alliance.org">IPSO Alliance</a> </td>
          <td> all </td>
          <td> -- </td>
          <td> Not explicitely supports this but CoAP can be extended </td>
          <td> CoAP </td>
          <td> -- </td>
          <td> CoRE Link Format
          </td></tr>
          <tr>
          <td> <a rel="nofollow" class="external text" href="http://www.onem2m.org">oneM2M</a> </td>
          <td> telecomunication (Note from Soumya - oneM2M proposes to be independent of the underlying network and does not propose any specific protocols to work with. But they have worked on binding to HTTP and MQTT) </td>
          <td> Possible through UriBeacon </td>
          <td> Possible through mDNS </td>
          <td> Possible through CoAP </td>
          <td> -- </td>
          <td> CoRE Link Format
          </td></tr>
          <tr>
          <td> <a rel="nofollow" class="external text" href="http://threadgroup.org/">ThreadGroup</a> </td>
          <td> smart home </td>
          <td>&#160;? </td>
          <td>&#160;? </td>
          <td>&#160;? </td>
          <td>&#160;? </td>
          <td>&#160;?
          </td></tr>
          <tr>
          <td> <a rel="nofollow" class="external text" href="http://www.hypercat.io">Hyper/Cat</a> </td>
          <td> smart cities </td>
          <td> -- </td>
          <td> -- </td>
          <td> <a rel="nofollow" class="external text" href="http://www.hypercat.io/standard.html">HyperCat Catalogue</a> </td>
          <td> -- </td>
          <td> --
          </td></tr>
          <tr>
          <td> <a rel="nofollow" class="external text" href="http://www.opengroup.org/getinvolved/workgroups/iot">Open Group</a> </td>
          <td>&#160;? </td>
          <td>&#160;? </td>
          <td>&#160;? </td>
          <td>&#160;? </td>
          <td>&#160;? </td>
          <td>&#160;?
          </td></tr>
          <tr>
          <td> <a rel="nofollow" class="external text" href="http://www.opengeospatial.org/projects/groups/sensorwebdwg">OGC SWE</a> </td>
          <td> smart cities, environmental monitoring </td>
          <td> -- </td>
          <td> -- </td>
          <td> <a rel="nofollow" class="external text" href="https://portal.opengeospatial.org/modules/admin/license_agreement.php?suppressHeaders=0&amp;access_license_id=3&amp;target=http://portal.opengeospatial.org/files/?artifact_id=40609">Sensor Instance Registry</a> </td>
          <td> -- </td>
          <td> <a rel="nofollow" class="external text" href="https://portal.opengeospatial.org/files/?artifact_id=47599">Sensor Observation Service</a>
          </td></tr></table>
      
## References

### Normative
* [ACE-OAuth2: Authentication and Authorization for Constrained Environments (ACE) using the OAuth 2.0 Framework](https://datatracker.ietf.org/doc/draft-ietf-ace-oauth-authz/)
* [CoAP (RFC7252): The Constrained Application Protocol](https://datatracker.ietf.org/doc/rfc7252/)
* [CoRE-Link (RFC6690): Constrained RESTful Environments (CoRE) Link Format](https://datatracker.ietf.org/doc/rfc6690/)
* [CoRE-RD: CoRE Resource Directory](https://datatracker.ietf.org/doc/draft-ietf-core-resource-directory/)
* [HTTP1.1 (RFC2616): Hypertext Transfer Protocol -- HTTP/1.1](https://datatracker.ietf.org/doc/rfc2616/)
* [WoT-TD: W3C Web of Things (WoT) Thing Description](https://www.w3.org/TR/wot-thing-description/)
* [RFC2119: Key words for use in RFCs to Indicate Requirement Levels](https://datatracker.ietf.org/doc/rfc2119/)
* [Multicast DNS (RFC6762)](https://datatracker.ietf.org/doc/rfc6762/)
* [DNS-Based Service Discovery (RFC6763)](https://datatracker.ietf.org/doc/rfc6763/)
* [SSDP: Simple Service Discovery Protocol/1.0 Operating without an Arbiter](https://tools.ietf.org/html/draft-cai-ssdp-v1-03)
* [Web Services Dynamic Discovery (WS-Discovery) Version 1.1](http://docs.oasis-open.org/ws-dd/discovery/1.1/wsdd-discovery-1.1-spec.html)
* [XEP-0030: Service Discovery](https://xmpp.org/extensions/xep-0030.html)
* [XEP-0115: Entity Capabilities](https://xmpp.org/extensions/xep-0115.html#discover)
* [MicroPnP](http://www.micropnp.com/ipso/index.html) TODO: fix link
* [XEP-0347: Internet of Things - Discovery](https://xmpp.org/extensions/xep-0347.html#search)
* [HyperCat](http://www.hypercat.io/standard.html) TODO: fix link
* [Push-API](https://w3c.github.io/push-api/)
* [RFC8030: Generic Event Delivery Using HTTP Push](https://datatracker.ietf.org/doc/rfc8030/)
* [SIR: Sensor Instance Registry Discussion Paper](https://portal.opengeospatial.org/files/?artifact_id=40609)
* [SPARQL: SPARQL 1.1 Overview](https://www.w3.org/TR/sparql11-overview/)
* [RFC7650: A Constrained Application Protocol (CoAP) Usage for REsource LOcation And Discovery (RELOAD)](https://datatracker.ietf.org/doc/rfc7650/)
* [A Distributed Resource Directory (DRD)](https://datatracker.ietf.org/doc/draft-jimenez-t2trg-drd/)
* [SOS: Sensor Observation Service](https://www.opengeospatial.org/standards/sos)
* [UriBeacon](https://github.com/google/uribeacon/)
* [EddyStone](https://github.com/google/eddystone/blob/master/protocol-specification.md)
* [iBeacon](https://developer.apple.com/ibeacon/)
* [BLE](https://web.archive.org/web/20140214120404/http://www.bluetooth.com/Pages/low-energy-tech-info.aspx) TODO: fix link


### Informative
* [WoT-Arch: W3C Web of Things (WoT) Architecture](https://www.w3.org/TR/wot-architecture/)
* [Jara2013](https://dx.doi.org/10.1109/WAINA.2013.261)
* [Fortino2013](https://dx.doi.org/10.1007/978-3-642-41428-2_23)
* [Alam2010](https://doi.org/10.1109/GreenCom-CPSCom.2010.116)
* [Cirani2014](https://doi.org/10.1109/JIOT.2014.2358296)
* [HATEOAS](http://restcookbook.com/Basics/hateoas/)
* [Zhou2012](https://doi.org/10.1109/CCIS.2012.6664533)
* [Yun2010](https://ieeexplore.ieee.org/document/5440391?arnumber=5440391)
