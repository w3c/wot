# Web of Things Standard Recommendation

This document is part of the [Web of Things Standard Recommendation](../).

This part proposes a set of rules for implementing Web Things. It assumes an [Integration Pattern](../web-things-integration-patterns/) was choosen and is extended by implementing the [Web Things Model](../web-things-model/).

## Web Things Requirements

### Level 0 – MUST
This section defines the Level 0 requirements – all of which MUST be in place in any WT implementation, as all WT client applications will expect these constraints. If a WT implements all of them, it’s compatibility with any other Web of Things entity is maximized.

#### R0.1 - WT MUST at least be an HTTP 1.1 server
All WT MUST support communication over HTTP 1.1. When possible, WTs SHOULD also support HTTP/2. WT clients SHOULD NOT expect that a WT always supports HTTP/2, but using HTTP 1.1 MUST always be possible with any WT.

HTTP 1.1 is the most widely spread protocol over the Web and virtually any HTTP client or server implementation supports it, therefore it’s likely that the majority of clients might not support HTTP/2 as of yet.  This can be implemented directly on the WT or can be provided via a proxy (see Integration Patterns).

#### R0.2 - WT MUST have a root resource accessible via an HTTP URL
Any entity on the WoT must be both uniquely identifiable and addressable over a network so that other clients can interact with it. This means any WoT entity must have a so-called “root resource” identified by a HTTP URL (uses the HTTP protocol, therefore starts with http:// or https://) that acts as the entry point for the Web Thing and enables the interaction with it. The URLs of all sub-resources of that Web Thing (actions, properties, etc.) are constructed by appending elements to the root URL of that Thing.

If the WT is a device connected on a LAN (e.g. a printer, a lamp, etc.), the root URL of a WT SHOULD be its IP address and standard HTTP port. In other words, it by only knowing the IP address of a networked device, if that device is a WT, it should be possible to do a GET on the IP address of the WT over the default port (80 for HTTP, or 443 for HTTPS). This feature is envisioned for a facilitated mechanism for discovery of devices at the network level, without requiring an additional protocol.

Notes
A WT does not need to be publicly accessible over the Internet, as some WoT scenarios might only work within a local area network (LAN) as defined above. This means a root URL does not need to be public and can be simply the local IP address of a device.

Examples of valid root URLs are:

  * http://gateway.api.com/devices/TV
  * http://kitchen-raspberry.device-lab.co.uk
  * https://192.168.10.10:9002
  * https://kitchen:3000/fridge/root
   
#### R0.3 - WT MUST support GET, POST, PUT, and DELETE HTTP verbs
The Web of Things aims to maximise interoperability by exposing the services of Things using REST. For this idea to come to reality, supporting certain HTTP verbs of the specification is a must. Considering the REST paradigm is based on resources and CRUD operations on them, the WT must support GET for reading operations, POST for creation, PUT for updates and state changes, and DELETE for removal.


#### R0.4 - WT MUST implement HTTP status codes 200, 400, 500
Proper usage of HTTP 1.1 error codes is advisable. However, considering that some devices are restricted, only the following subset is mandatory:

* **2XX Success**. Returned for any successful action. The WT SHOULD at least support the 200 OK response.
* **4XX Client Error**. This should be returned for any error due to the client that sent the request (from a wrong URL, to invalid authentication, or incorrect parameter). The WT SHOULD at least support the 400 Bad Request error code.
* **5XX Server Error**. This should be used for any error on the WT side when a request was valid but cannot be processed at this time for any reason, e.g. the WT has a server error, etc. The WT SHOULD at least support the 500 Internal Server Error error code.

#### R0.5 - WT MUST support JSON as default representation

A WT MUST always accept a valid JSON document as payload for request and always return a JSON representations when requested. If no “Accept:” HTTP header is specified in the request (or if the format is unknown or not supported), the WT SHOULD return an appropriate error code, but it also MAY return JSON as default. Additional formats MAY be supported by the WT, but JSON is the only default format that a WT MUST support.

A consequence of supporting JSON is that UTF-8 is the default encoding for payloads (see https://tools.ietf.org/html/rfc7159#section-8.1)

#### R0.6 - WT MUST support GET on its root URL
Because all WT have a unique root URL and sometimes it’s all we know about them, WT should always respond to HTTP GETs on their root URL and return their basic representation, so that clients of developers can use and understand it.

### Level 1 - SHOULD
Unless there are technical or practical limitations for not adhering to Level 1 constraints, Web Things SHOULD always support the following constraints,

#### R1.1 - WT SHOULD use secure HTTP connections (HTTPS)
Ideally, WT SHOULD always support secure connections with HTTPS over TLS. The ideal case for security is to support only HTTPS over TLS. However, for compatibility, WT Clients MUST support HTTPS over TLS. **WT that are exposed on the Internet MUST always implement HTTPS over TLS.**

WTs MAY use other security mechanisms if they want to (in addition or in place of HTTPS). In some cases, it might be impossible or impractical to implement HTTPS over TLS (for example in pure intranet scenario), in which case using another security mechanism is still highly recommended. 

#### R1.2 - WT SHOULD support additional HTTP status codes as needed
Especially for errors, WT SHOULD support the most common HTTP status codes as applicable (415 Invalid media type, 403 Forbidden, 201 Created, 503 Unavailable, etc.).

#### R1.3 - WT SHOULD implement the WebSocket Protocol
To support Thing push and Pub/Sub patterns a WT SHOULD implement the [WebSocket protocol](https://datatracker.ietf.org/doc/rfc6455/)) and clients should implement the [WebSockets API](http://www.w3.org/TR/websockets/).

#### R1.4 - WT SHOULD support the Web Things Model
If possible, every WT should implement [Web Things Model](../web-things-model). It is not essential to use it for a device to be part of the Web of Things, but implementing it will lead to much better interoperability.

### Level 2 - MAY
Any Web Thing MAY support these rules, but not expected to. It depends on the capabilities of the devices and implementation aspects.

#### R2.1 - WT MAY support OPTIONS for each of its resources
In particular, if possible the use of PUT and PATCH in addition to POST should be used for changing the value of a Property or sending an Action to the WT.

#### R2.2 - WT MAY have a default machine-readable documentation
WT may decide to provide their information in any machine-readable format available. As the only requirement is JSON it is left to the Web Thing developers to provide any alternative machine-readable format.

#### R2.3 - WT MAY provide additional representation mechanisms (RDF, XML, JSON-LD)
WT can provide additional representations of the data they provide and even their own descriptions. Being JSON the only mandatory representation, the rest of the formats are up to the implementers if needed for additional purposes. The Semantic Web Things Protocol defines extension points for this additional representation mechanisms.
R2.4 - WT MAY offer an HTML interface/representation (UI)
Some WT may come with a pre-programed HTML representation or UI that could be used under some conditions to integrate WT in dashboard environments.


