# WoT Discovery

This document describes initial ideas for usage of discovery protocols in WoT. The main goal of discovery in WoT is to find thing descriptions of things that fulfil a specific request (query). Another use is for an IoT device to discover a gateway or registry with which to register itself.

## Discovery Flows

This section discusses potential discovery options independent from the underlying discovery or lookup technology. Below is an explanation for each of the components used in the diagrams:

 - **Thing Consumer**: is an application component that discovers thing descriptions (TDs) that fulfil a discovery request (query).
 - **Thing Provider**: is an application component that is responsible for providing access to one or multiple things. A Thing Provider may offer the thing descriptions or use a central Thing Registry. 
 - **Thing Registry**: is an application component for registering thing descriptions. It offers a lookup interface to find thing descriptions for a specific query. It also offers an interface to retrieve a single thing description. In some cases, the registry could be combined with the role of a gateway that manages multiple IoT devices.
 - **TD Generator**: is an application component that generates Thing Descriptions on the fly based on templates for specific devices or technologies. It offers an interface that accepts requests containing metadata of a thing and returns a Thing Description with the corresponding binding information.

### Discovery Flow 1

![Discovery Flow 1](./wot-discovery-flow-1.png "Discovery Flow 1")

#### Steps

 1. Thing Provider registers its things in a Thing Registry. The Thing Registry stores for each Thing its corresponding Thing Description. 
 2. Thing Consumer sends a lookup request that contains the search query to the Thing Registry. The Thing Registry responds with a list of Thing Descriptions that fulfil the request.

#### Remarks

 - Thing Consumer and Thing Provider need to use the same Thing Registry

#### Potential Setup and Example Technologies
 
 - Thing Provider runs on a Gateway connected to the Internet using appropriate technologies e.g. HTTP, WS, CoAP, MQTT, ...  
 - Thing Registry uses an appropriate database e.g. SPARQL database and provides interfaces e.g. REST to register or retrieve things.
 - Thing Consumer sends lookup queries using appropriate query language e.g. SPAQL to the REST interface of the Thing Registry.

### Discovery Flow 2

![Discovery Flow 2](./wot-discovery-flow-2.png "Discovery Flow 2")

#### Steps

 1. Thing Provider registers its things in a remote Thing Registry. The Thing Registry stores for each Thing its corresponding Thing Description and return the TD-URIs (URIs of registered Thing Descriptions) to the Thing Provider.
 2. Thing Provider advertises the TD-URIs using an appropriate technology.
 3. Thing Consumer discovers TD-URIs advertised in previous step using the same technology.
 4. Thing Consumer requests the thing descriptions for the discovered TD-URIs from the Thing Registry.

#### Remarks

 - After retrieving the thing descriptions, the Thing Consumer may need to filter them according the query depending from the filtering capability of the used discovery technology. 

#### Potential Setup and Example Technologies

 - Thing Provider runs on a Gateway connected to the Internet using appropriate technology e.g. HTTP, WS, CoAP, MQTT, ...  
 - Thing Provider advertises TD-URIs in the Network e.g. using SSDP or to nearby devices using BLE
 - Thing Registry may use a simple web server to host the thing descriptions. It provides interfaces e.g. REST to register or retrieve things.

### Discovery Flow 3

![Discovery Flow 3](./wot-discovery-flow-3.png "Discovery Flow 3")

#### Steps

 - Thing Provider hosts the Thing Descriptions locally and advertises corresponding TD-URIs. 
 - Thing Consumer discovers TD-URIs advertised in previous step using the same technology.
 - Thing Consumer requests the thing descriptions for the discovered TD-URIs directly from the Thing Provider. 

#### Remarks

- After retrieving the thing descriptions, the Thing Consumer may need to filter them according the query depending from the filtering capability of the used discovery technology. 

#### Potential Setup and Example Technologies  

 - Thing Provider runs on a Gateway which may not be connected to the internet.
 - Thing Provider advertises local TD-URIs in the Network e.g. using SSDP.
 - Thing Consumer discovers TD-URIs in the Network e.g. using SSDP.
 - Thing Consumer retrieves Thing Descriptions e.g. using HTTP GET.  

### Discovery Flow 4

![Discovery Flow 4](./wot-discovery-flow-4.png "Discovery Flow 4")

#### Steps

 1. Thing Provider stores thing descriptions in a local database and advertises the local Lookup-Endpoint. 
 2. Thing Consumer discovers the Lookup-Endpoint advertised in previous step using the same technology.
 3. Thing Consumer sends the search query to the Lookup-Endpoint and receives the thing descriptions that fit the criteria of the query.

#### Remarks

 - Filtering capabilities for discovery technology is not required

#### Potential Setup and Example Technologies

 - Thing Provider consists of a simple database for things description e.g. document oriented DB where each document represents a Thing Description.
 - Thing Provider advertises its local Lookup-Endpoint e.g. using mDNS.
 - Thing Consumer discovers Lookup-Endpoints e.g. using mDNS.
 - Thing Consumer retrieves Thing Descriptions by sending the query to each discovered Lookup-Endpoint e.g. using REST.

### Discovery Flow 5

![Discovery Flow 5](./wot-discovery-flow-5.png "Discovery Flow 5")

#### Steps

 1. The Thing Provider advertises Things-Metadata using appropriate technology.
 2. The Thing Consumer discovers Things-Metadata from previous step.
 3. The Thing Consumer sends discovered Things-Metadata including information about used technology to a TD Generator that creates the Thing Descriptions on the fly based on existing templates and Things-Metadata.
 4. The Thing Consumer may cache generated Thing Descriptions and use them when the same things are discovered again. 

#### Remarks

 - The TD Generator may run on the Thing Consumer.

#### Potential Setup and Example Technologies

 - Thing Provider is a BLE device that offers GATT services.
 - Thing Consumer is a BLE device that discovers and consumes discovered GATT services.
 - TD Generator supports templates for BLE GATT. It creates Thing Descriptions with BLE-GATT bindings.
 
## Bindings to Discovery Protocols

This section discusses bindings to state of the art discovery technologies. Each subsection considers one concrete technology.

### SSDP Binding

Ideas:

 - Define new SSDP device type for Things e.g. `urn:w3c-org:device:Thing:1`
 - Thing Provider advertises the following SSDP message when things appear in the network: 
 
    ```
    NOTIFY * HTTP/1.1
    HOST: 239.255.255.250:1900
    CACHE-CONTROL: max-age = seconds until advertisement expires
    LOCATION: URL to UPnP Device Description to stay compatible.  
    NT: urn:w3c-org:device:Thing:1
    NTS: ssdp:alive
    SERVER: OS/version UPnP/1.0 product/version
    USN: advertisement UUID
    TD.WOT.W3C.ORG: URL to Thing Description
    ```
    
 - Thing Provider advertises the following SSDP message before things disappear from the network: 

    ```
    NOTIFY * HTTP/1.1
    HOST: 239.255.255.250:1900
    NT: urn:w3c-org:device:Thing:1
    NTS: ssdp:byebye
    USN: uuid:advertisement UUID 
    ```
    
 - Thing Consumer searches for things in the network:
    
    ```
    M-SEARCH * HTTP/1.1
    HOST: 239.255.255.250:1900
    MAN: "ssdp:discover"
    MX: seconds to delay response
    ST: urn:w3c-org:device:Thing:1
    QUERY.WOT.W3C.ORG: the search query to find specific things
    ```
    
 - Thing Provider responds to search request with following message.
 
    ```
    HTTP/1.1 200 OK
    CACHE-CONTROL: max-age = seconds until advertisement expires
    DATE: when response was generated
    EXT:
    LOCATION: URL of the web page to advertise
    SERVER: OS/version UPnP/1.0 product/version
    ST: urn:w3c-org:device:Thing:1
    USN: advertisement UUID
    TD.WOT.W3C.ORG: URL to Thing Description
    QUERY-USED.WOT.W3C.ORG: 0 or 1 depending if the Thing Provider provides filtering or not
    ``` 
 
### mDNS Binding

- A typical scenario is a smart home with a gateway device that manages multiple IoT devices and bridges them to cloud based services. The IoT devices use multicast DNS to discover the gateway when they start up. Multicast DNS (mDNS) is DNS over multicast UDP packets and uses the same message format as regular DNS. DNS messages consist of a header field followed by a sequence of question records and a sequence of answer records. Each record starts with a NAME field followed by the record's type and class. This in turn is followed by type specific fields. DNS and mDNS are defined in a suite of IETF RFCs.
- The starting point is for a device to use IGMP to join the mDNS multicast group. The device can then send a message with a question for "PTR" records with the desired service type, e.g. "_http._tcp._local". The gateway replies with a DNS message containing several records, including a "SRV" record with the IP port number, and "A" records for an IPv4 address or "AAAA" records for an IPv6 address. A gateway could advertise multiple services. In principle, the gateway could use "TXT" records to provide a set of name/value pairs describing the service. When the device has finished with the discovery process it uses IGMP to leave the multicast group.

### BLE-GATT Binding

TBD

### Eddystone Binding

TBD
