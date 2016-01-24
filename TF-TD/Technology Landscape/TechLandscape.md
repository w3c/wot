# W3C WoT TF-TD Technology Landscape

Things needs to be described in order to provide basic information about themselves. For example, a thing description may provide information about what a thing is; what properties, event and actions the thing provides; how to access them; what type of data the thing produces/consumes and so forth. A thing description my be provided in accordance to a data model, a vocabulary and a serialization format. W3C WoT TF-TD Technology Landscape surveys existing technologies that may serve for this purpose. For more information, see [Thing Description Task Force](https://www.w3.org/WoT/IG/wiki/Thing_Description) of W3C WoT IG.

## Contents
1. [Iot Consortia Related to TD](#iot-consortia-related-to-td)
2. [Thing Description Model and Vocabulary](#thing-description-model-and-vocabulary)
3. [Metadata Model](#metadata-model)
4. [Serialization of Thing Descriptions](#serialization-of-thing-descriptions)
5. [Data Types](#data-types)

# Iot Consortia Related to TD

| Iot consortium Related to TD | Thing Description Model and Vocabulary | Metadata Model | Serialization of Thing Descriptions | Data Types | Functional Description |
| [IPSO Alliance](http://www.ipso-alliance.org)  | IPSO Smart Object  | -- | -- | -- | -- | 
| [Open Mobile Alliance (OMA)](http://openmobilealliance.org/)  | The OMA DM Management Objects  | -- | plain text, opaque binary data, TLV, JSON  | -- | -- | 
| [The Open Geospatial Consortium (OGC)](http://www.opengeospatial.org/)  | SensorThings Data Model SensorML  | -- | -- | -- | -- | 
| [RWE AG](http://www.lemonbeat.net/)  | Lemonbeat Device Language  | -- | -- | -- | -- | 
| [Google](https://developers.google.com/brillo/?hl=en)  | Google Weave  | -- | -- | -- | -- | 
| [Amazon AWS IoT](https://aws.amazon.com/iot/)  | [Device Registry and Thing Shadows for AWS IoT](###Device-Registry-and-Thing-Shadows-for-AWS-IoT)  | -- | JSON | -- | -- | 
| [Eclipse IoT](http://iot.eclipse.org/)  | --  | -- | -- | -- | -- | 
| [The Open Interconnect Consortium (OIC)](http://openinterconnect.org/)  | --  | -- | -- | -- | -- | 
| [Allseen Alliance (AllJoyn)](https://allseenalliance.org/)  | --  | -- | -- | -- | -- | 
| [oneM2M](http://www.onem2m.org/)  | --  | -- | -- | -- | -- | 
| [The Industrial Internet Consortium (IIC)](http://www.iiconsortium.org/)  | --  | -- | -- | -- | -- | 
| [The Alliance for Internet of Things Innovation (AIOTI)](http://www.aioti.eu/)  | --  | -- | -- | -- | -- | 
| [Thread Group](http://threadgroup.org/)  | --  | -- | -- | -- | -- | 
| [Hyper/Cat](http://www.hypercat.io/)  | [HyperCat catalogue](###HyperCat-catalogue)  | RDF-like triple statements | JSON | -- | -- | 
| [The Open Group](http://www.opengroup.org/)  | --  | -- | -- | -- | -- | 
| [IoT Consortium](http://www.iofthings.org/)  | --  | -- | -- | -- | -- | 
| [sensei-IoT](http://www.sensei-iot.org/)  | --  | -- | -- | -- | -- | 
| [SAREF](http://ontology.tno.nl/saref)  | [The Smart Appliances REFerence (SAREF) ontology]()  | RDF | RDF serialization formats | XSD | -- | 
| [ECHONET Consortium](http://echonet.jp/english/)  | ECHONET device objects  | -- | -- | -- | -- |
# Thing Description Model and Vocabulary

### The OMA DM Management Objects 
  - **Background of the technology:**
  - **Consortium:**
  - **Tool/Development Support:**
  - **Resource identification:**
  - **Query capabilities:**
  - **Data Types:**


### OMA Lightweight M2M (LWM2M) Objects
  - **Background of the technology:** Update OMA DM for M2M and unify DM and application stack using CoAP. LWM2M specifies interfaces (bootstrap, registration, device management & service enablement, information reporting) and operations (read, write, execute, notify) on top of CoAP. Functionality is structured in so-called Objects. LWM2M comes with device management objects (e.g., Access Control, Device, Firmware Update). OMA provides an open registry for application-specific Object definitions (http://technical.openmobilealliance.org/Technical/technical-information/omna/lightweight-m2m-lwm2m-object-registry)
  - **Consortium:** Open Mobile Alliance
  - **Tool/Development Support:** online Object editor, emulator for virtual devices and protocol/message inspection (https://github.com/OpenMobileAlliance/)
  - **Resource identification:** URIs with numeric identifiers (e.g., /3/0/2 is the Device Object (3), Instance 0, serial number (2))
  - **Query capabilities:** CoRE resource directory filtering or custom API, CoRE Link Format
  - **Data Types:** text/plain, application/vnd.oma.lwm2m+opaque, application/vnd.oma.lwm2m+tlv, application/vnd.oma.lwm2m+json

### IPSO Smart Object
  - **Background of the technology:** Provides application-specific Object models following OMA LWM2M and publishes to OMA Object registry. Also aims for HTTP support in addition to CoAP
  - **Consortium:** IPSO Alliance
  - **Tool/Development Support:** http://challenge.ipso-alliance.org/so-starter-pack, http://challenge.ipso-alliance.org/so-expansion-pack
  - **Resource identification:** See OMA LWM2M
  - **Query capabilities:** See OMA LWM2M
  - **Data Types:** See OMA LWM2M

### IOTDB.org
  - **Background of the technology:**
  - **Consortium:**
  - **Tool/Development Support:**
  - **Resource identification:**
  - **Query capabilities:**
  - **Data Types:**

### Vorto
  - **Background of the technology:** Metamodel to generate framework-specific data models and code. Open source project in the Eclipse Foundation started by Bosch.
  - **Consortium:** Open source project (Eclipse IoT working group)
  - **Tool/Development Support:** https://www.eclipse.org/vorto/
  - **Resource identification:**
  - **Query capabilities:**
  - **Data Types:**

### Semantic Sensor Network (SSN) Ontology
  - **Background of the technology:** SSN was developed by the W3C Semantic Sensor Networks Incubator Group (SSN-XG) to describe sensors and observations, and related concepts. SSN is now being extended and standardised by W3C Spatial Data on The Web Working Group(SDWWG) 
  - **Consortium:** SSN-XG, SDWWG
  - **Tool/Development Support:** ontology tools: SPARQL engine & RDF Parser etc.

  - **Resource identification:** URIs/URN
  - **Query capabilities:** SPARQL queries + spatial extensions
  - **Data Types:** XSD 

### SensorML
  - **Background of the technology:** The primary focus of the Sensor Model Language (SensorML) is to provide a robust and semantically-tied means of defining processes and processing components associated with the measurement and post-measurement transformation of observations. This includes sensors and actuators as well as computational processes applied pre- and post measurement.
  - **Consortium:** OGC
  - **Tool/Development Support:**
  - **Resource identification:**
  - **Query capabilities:**
  - **Data Types:**

### Schema.org
  - **Background of the technology:** Schema.org is a collaborative, community activity with a mission to create, maintain, and promote schemas for structured data on the Internet, on web pages, in email messages, and beyond. Among them, concepts like Events, Location, Primary data types can be used for Things Description model
  - **Consortium:** Google, Ms Bing, Yahoo,etc
  - **Tool/Development Support:** RDFa, Microdata and JSON-LD encodings
  - **Resource identification:**
  - **Query capabilities:**
  - **Data Types:**
### Device Registry and Thing Shadows for AWS IoT
  - **Background of the technology:** The Thing Registry enables registration of so called units (both for real devices and virtual applications). Units are properties that describe a device or virtual application. A user may define custom attributes associated with each unit. AWS IoT has a notion of a Thing Shadow. A thing shadow (sometimes referred to as a device shadow) is a JSON document that is used to store and retrieve current state information for a thing (device, app, and so on). The Thing Shadows service maintains a thing shadow for each thing you connect to AWS IoT.
  - **Consortium:** Amazon
  - **Tool/Development Support:** 
  - **Resource identification:** A device in the Device Registry can be uniquely identified.
  - **Query capabilities:** 
  - **Data Types:**
  
### HyperCat catalogue
  - **Background of the technology:** HyperCat is an open, lightweight JSON-based hypermedia catalogue format for exposing collections of URIs (uniform resource identifiers). Using HTTPS, REST and JSON, each HyperCat catalogue may expose any number of URIs, each with any number of resource description framework-like (RDF-like) triple statements about it. 
  - **Consortium:** HyperCat
  - **Tool/Development Support:** 
  - **Resource identification:** URIs
  - **Query capabilities:** Catalogues are accumulated into a knowledge graph that can be queried. 
  - **Data Types:**

### The Smart Appliances REFerence (SAREF) ontology
  - **Background of the technology:** The Smart Appliances REFerence (SAREF) ontology is a shared model of consensus that facilitates the matching of existing assets (standards/protocols/datamodels/etc.) in the smart appliances domain. The starting point of SAREF is the concept of device (e.g., a switch). The device performs one or more functions. SAREF ontology enables description of devices and their functions. 
  - **Consortium:** SAREF consortium
  - **Tool/Development Support:** ontology tools: SPARQL engine & RDF Parser etc.
  - **Resource identification:** URIs 
  - **Query capabilities:** SPARQL queries
  - **Data Types:** XSD


# Metadata Model

### The Resource Description Framework (RDF)
  - **Background of the technology:** Schema.org is a collaborative, community activity with a mission to create, maintain, and promote schemas for structured data on the Internet, on web pages, in email messages, and beyond. Among them, concepts like Events, Location, Primary data types can be used for Things Description model
  - **Consortium:** Google, Ms Bing, Yahoo,etc
  - **Tool/Development Support:** RDFa, Microdata and JSON-LD encodings
  - **Resource identification:**
  - **Query capabilities:**
  - **Data Types:**

# Serialization Formats
Serialization formats suitable for representing Thing Descriptions are surveyed here.

### [Efficient XML Interchange (EXI)](http://www.w3.org/TR/exi/)
  - **Background of the technology:** Binary serialization format of the XML Infoset
  - **Consortium:** W3C
  - **Tool/Development Support:** yes
  - **Data Types-aware encoding:** yes, based on XSD
  - **Binary Format:** yes
  - **Compression:** very high
  - **Small memory footprint:** yes
  - **Context-aware encoding:** yes

### EXI for JSON
  - **Background of the technology:** Binary serialization format for JSON data model based on EXI approach
  - **Consortium:** W3C
  - **Tool/Development Support:** yes
  - **Data Types-aware encoding:** yes
  - **Binary Format:** yes
  - **Compression:** very high
  - **Small memory footprint:** yes
  - **Context-aware encoding:**

### [JSON](http://www.json.org/)
  - **Background of the technology:** An attribute value-pair format to transmit data objects.
  - **Consortium:**  	RFC 7159 and ECMA-404
  - **Tool/Development Support:** yes
  - **Data Types-aware encoding:** supports limited type assignment (number, string, boolean, array, null), however, each value is presented in plain-text in JSON document
  - **Binary Format:** no
  - **Compression:** no compression (plain-text representation)
  - **Small memory footprint:** not feasible for constrained devices
  - **Context-aware encoding:** no

### [JSON-LD](http://json-ld.org/)
  - **Background of the technology:** Serialization format for RDF based on JSON data model
  - **Consortium:** W3C
  - **Tool/Development Support:** yes
  - **Data Types-aware encoding:** supports rich type assignment based on XSD data types, however, each value is presented in plain-text in a JSON-LD document
  - **Binary Format:** no
  - **Compression:** no (plain-text representation)
  - **Small memory footprint:** not feasible for constrained devices
  - **Context-aware encoding:** no

### [CBOR](http://cbor.io/)
  - **Background of the technology:** The "Concise Binary Object Representation (CBOR)" is based on the JSON data model
  - **Consortium:**   IETF
  - **Tool/Development Support:** yes
  - **Data Types-aware encoding:** yes
  - **Binary Format:**   yes
  - **Compression:** high
  - **Small memory footprint:** yes
  - **Context-aware encoding:**

### [CoRE Link Format](https://tools.ietf.org/html/rfc6690)
  - **Background of the technology:**
  - **Consortium:** IETF
  - **Tool/Development Support:**
  - **Data Types-aware encoding:**
  - **Binary Format:**
  - **Compression:**
  - **Small memory footprint:**
  - **Context-aware encoding:**
### RDF/EXI
  - **Background of the technology:** Serialize RDF in EXI format
  - **Consortium:** W3C (EXI/XML)
  - **Tool/Development Support:** yes
  - **Data Types-aware encoding:** yes
  - **Binary Format:** yes
  - **Compression:** very high (types-aware encoder + removes redundancy)
  - **Small memory footprint:** yes, feasible for constrained devices
  - **Context-aware encoding:** yes, is able to take fix context knowledge into account

### Type-Length-Value (TLV)
  - **Background of the technology:**
  - **Consortium:** none
  - **Tool/Development Support:**
  - **Data Types-aware encoding:**
  - **Binary Format:**
  - **Compression:**
  - **Small memory footprint:**
  - **Context-aware encoding:**

### Protocol Buffers
  - **Background of the technology:**
  - **Consortium:**
  - **Tool/Development Support:**
  - **Data Types-aware encoding:**
  - **Binary Format:**
  - **Compression:**
  - **Small memory footprint:**
  - **Context-aware encoding:**

# Data Types

### [XML Schema (XSD)](http://www.w3.org/TR/xmlschema11-1/)
  - **Background of the technology:** XML Schema: Datatypes is part 2 of the specification of the XML Schema language. It defines facilities for defining datatypes to be used in XML Schemas as well as other XML specifications. It provides a rich set of of primitive data types and enables to define new or restrict data types.
  - **Primitive data types:** boolean, (unsigned-)Byte, (unsigned-)Short, (unsigned-)Int, (unsigned-)Long, float, double, hexBinary, base64Binary, date, time, ...
  - **Composite data types:** Any simple-typed data can be composed to a structered complex typed data

### [SenML](https://tools.ietf.org/html/draft-jennings-core-senml)
  - **Background of the technology:** SenML is a media type for representing simple sensor measurements and device parameters. SenML has JSON, CBOR, XML, and EXI representations which all share the common SenML data model.  
  - **Primitive data types:** string, boolean, floating point, time (and plans for adding binary)
  - **Composite data types:** all measurements can include, in addition to value, "name", "time", and "measurement unit"

# Functional Description
Functional descriptions for RESTful APIs, hypermedia controls are surveyed here.

### [HATEOAS](https://spring.io/understanding/HATEOAS)
  - **Background of the technology:**
  - **Consortium:**
  - **Tool Support:**
  - **Underlying Language/Model/Serialization Formats:**

### [Hydra](http://www.hydra-cg.com/)
  - **Background of the technology:**
  - **Consortium:**
  - **Tool Support:**
  - **Underlying Language/Model/Serialization Formats:**

### [RAML](http://raml.org/)
  - **Background of the technology:**
  - **Consortium:**
  - **Tool Support:**
  - **Underlying Language/Model/Serialization Formats:**

### [Swagger](http://swagger.io/)
  - **Background of the technology:**
  - **Consortium:**
  - **Tool Support:**
  - **Underlying Language/Model/Serialization Formats:**

### [API Blueprint](https://apiblueprint.org/)
  - **Background of the technology:**
  - **Consortium:**
  - **Tool Support:**
  - **Underlying Language/Model/Serialization Formats:**

### [Functional Semantics for WoT Devices](http://htmlpreview.github.io/?https://github.com/smnmyr/iot-semantics-w3c/blob/master/iot-semantics-membersubmission.html)
  - **Background of the technology:**
  - **Consortium:**
  - **Tool Support:**
  - **Underlying Language/Model/Serialization Formats:**

### [RESTdesc]()
  - **Background of the technology:**
  - **Consortium:**
  - **Tool Support:**
  - **Underlying Language/Model/Serialization Formats:**

### [JSON HyperSchema](http://json-schema.org/latest/json-schema-hypermedia.html)  - **Background of the technology:**
  - **Consortium:**
  - **Tool Support:**
  - **Underlying Language/Model/Serialization Formats:**  
