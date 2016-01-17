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
| --------------------------- | -------------------------------------- | -------------- | ----------------------------------- | ---------- | ---------------------- |
| [IPSO Alliance](http://www.ipso-alliance.org)  | IPSO Smart Object  | -- | -- | -- | -- |
| [Open Mobile Alliance (OMA)](http://openmobilealliance.org/)  | The OMA DM Management Objects  | -- | plain text, opaque binary data, TLV, JSON  | -- | -- |
| [The Open Geospatial Consortium (OGC)](http://www.opengeospatial.org/)  | SensorThings Data Model SensorML  | -- | -- | -- | -- |
| [RWE AG](http://www.lemonbeat.net/)  | Lemonbeat Device Language  | -- | -- | -- | -- |
| [Google](https://developers.google.com/brillo/?hl=en)  | Google Weave  | -- | -- | -- | -- |
| [Amazon](https://aws.amazon.com/iot/)  | AWS IoT Metadata  | -- | -- | -- | -- |
| [Eclipse IoT](http://iot.eclipse.org/)  | --  | -- | -- | -- | -- |
| [The Open Interconnect Consortium (OIC)](http://openinterconnect.org/)  | --  | -- | -- | -- | -- |
| [Allseen Alliance (AllJoyn)](https://allseenalliance.org/)  | --  | -- | -- | -- | -- |
| [oneM2M](http://www.onem2m.org/)  | --  | -- | -- | -- | -- |
| [The Industrial Internet Consortium (IIC)](http://www.iiconsortium.org/)  | --  | -- | -- | -- | -- |
| [The Alliance for Internet of Things Innovation (AIOTI)](http://www.aioti.eu/)  | --  | -- | -- | -- | -- |
| [Thread Group](http://threadgroup.org/)  | --  | -- | -- | -- | -- |
| [Hyper/Cat](http://www.hypercat.io/)  | --  | -- | -- | -- | -- |
| [The Open Group](http://www.opengroup.org/)  | --  | -- | -- | -- | -- |
| [IoT Consortium](http://www.iofthings.org/)  | --  | -- | -- | -- | -- |
| [sensei-IoT](http://www.sensei-iot.org/)  | --  | -- | -- | -- | -- |
| [SAREF](http://ontology.tno.nl/saref)  | --  | -- | -- | -- | -- |
| [ECHONET Consortium](http://echonet.jp/english/)  | ECHONET device objects  | -- | -- | -- | -- |

# Thing Description Model and Vocabulary

### IPSO Smart Object
  - **Background of the technology:**
  - **Consortium:**
  - **Tool/Development Support:**
  - **Resource identification:**
  - **Query capabilities:**
  - **Data Types:**

### The OMA DM Management Objects
  - **Background of the technology:**
  - **Consortium:**
  - **Tool/Development Support:**
  - **Resource identification:**
  - **Query capabilities:**
  - **Data Types:**

### IOTDB.org
  - **Background of the technology:**
  - **Consortium:**
  - **Tool/Development Support:**
  - **Resource identification:**
  - **Query capabilities:**
  - **Data Types:**

### Vorto
  - **Background of the technology:**
  - **Consortium:**
  - **Tool/Development Support:**
  - **Resource identification:**
  - **Query capabilities:**
  - **Data Types:**

### Semantic Sensor Network (SSN) Ontology
  - **Background of the technology:** SSN was developed by the W3C Semantic Sensor Networks Incubator Group (SSN-XG) to describe sensors and observations, and related concepts. SSN is now being extended and standardised by W3C Spatial Data on The Web Working Group(SDWWG)
  - **Consortium:** SSN-XG, SDWWG
  - **Tool/Development Support:** SPARQL engine & RDF Parser
  - **Resource identification:** URIs/URN
  - **Query capabilities:** SPARQL queries + spatial extensions
  - **Data Types:** sensor, sensor observations, probably actuators in the newer version

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

### [JSON HyperSchema](http://json-schema.org/latest/json-schema-hypermedia.html)
  - **Background of the technology:**
  - **Consortium:**
  - **Tool Support:**
  - **Underlying Language/Model/Serialization Formats:**  
