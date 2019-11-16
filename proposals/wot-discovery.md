# WoT Discovery
abbreviation: wot-discovery

## Authors
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

## Introduction

This MAY {{?RFC2119}} be useful.

## Requirements

The WoT discovery process should have the following capabilities:
* Support peer-to-peer (self-identifying), local (network segment), and global (internet-wide) discovery
* Support various forms of query, including keyword, template, and semantic queries
* Be able to discover sleeping devices
* Support directory services (discovery via third-party services)
* Automatically clean up TDs for devices that are no longer accessible
* Support both static and dynamic TDs
* Support appropriate security and privacy goals
* Align with existing standards as much as possible
* Support WoT Scripting Discovery API

### Privacy-Preserving Architecture
* Support device and information lifecycle, trust management, access controls
* Distribute TDs only to authenticated and authorized users
* Don’t leak metadata or queries to unauthorized entities

### Alignment with existing standards
* Align with IETF CoRE Resource Directories, CoRE Link Format, and DID.
* Be accessible via a variety of existing discovery mechanisms,
  including DNS-SD, DNS-SRV, DHCP, QR codes, and Bluetooth beacons.

### Architecture
Two-phase architecture: open and lightweight "first contact" introduction 
mechanism, following by an authenticated and authorization step that gates
access to an "exploration" directory mechanism that provides detailed metadata.
The first contact mechanism should be designed to preserve privacy, and will
essentially be designed just to provide links to directory services without
revealing what devices are indexed by those directories.

#### Introduction: First Contact Mechanism
* Obtain address of directory service - only
* Address should not leak any other metadata, eg type of devices
* Can have multiple mechanisms for introduction
  - Local: QR code. mDNS, DNS-SD, DHCP, QR code, Bluetooth beacon, etc.
  - Global: search engine
  - Self: Well-known addresses, eg “.well-known/core?rt=wot.directory”

#### Exploration: Directory 
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

## Retrieve TD from CoRE Resource Directory
```
GET coap://rd.example.com/rd-lookup?rt=MyLampThing
Accept: application/td+json
```
Note: Technically CoRE-RD only stores links to resources, not the resources
themselves.   So this may technically require a "CoRE Data Hub" to actually
allow storage and retreival of TDs themselves.

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
## References

### Normative
* [ACE-OAuth2: Authentication and Authorization for Constrained Environments (ACE) using the OAuth 2.0 Framework](https://datatracker.ietf.org/doc/draft-ietf-ace-oauth-authz/)
* [CoAP (RFC7252): The Constrained Application Protocol](https://datatracker.ietf.org/doc/rfc7252/)
* [CoRE-Link (RFC6690): Constrained RESTful Environments (CoRE) Link Format](https://datatracker.ietf.org/doc/rfc6690/)
* [CoRE-RD: CoRE Resource Directory](https://datatracker.ietf.org/doc/draft-ietf-core-resource-directory/)
* [HTTP1.1 (RFC2616): Hypertext Transfer Protocol -- HTTP/1.1](https://datatracker.ietf.org/doc/rfc2616/)
* [WoT-TD: W3C Web of Things (WoT) Thing Description](https://www.w3.org/TR/wot-thing-description/)
* [RFC2119: Key words for use in RFCs to Indicate Requirement Levels](https://datatracker.ietf.org/doc/rfc2119/)

### Informative
* [WoT-Arch: W3C Web of Things (WoT) Architecture](https://www.w3.org/TR/wot-architecture/)
