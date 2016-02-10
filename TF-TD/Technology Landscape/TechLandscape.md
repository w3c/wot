# W3C WoT TF-TD Technology Landscape

Things needs to be described in order to provide basic information about themselves. For example, a thing description may provide information about what a thing is; what properties, event andE actions the thing provides; how to access them; what type of data the thing produces/consumes and so forth. A thing description my be provided in accordance to a data model, a vocabulary and a serialization format. W3C WoT TF-TD Technology Landscape surveys existing technologies that may serve for this purpose. For more information, see [Thing Description Task Force](https://www.w3.org/WoT/IG/wiki/Thing_Description) of W3C WoT IG.

## Contents
1. [Iot Consortia Related to TD](#iot-consortia-related-to-td)
2. [Thing Description Model and Vocabulary](#thing-description-model-and-vocabulary)
3. [Metadata Model](#metadata-model)
4. [Serialization of Thing Descriptions](#serialization-of-thing-descriptions)
5. [Data Types](#data-types)

# IoT Origin Related  to TD

<!--
| IoT Origin Related to TD | Thing Description Model and Vocabulary | Metadata Model | Serialization of Thing Descriptions | Data Types | Functional Description |
| --------------------------- | -------------------------------------- | -------------- | ----------------------------------- | ---------- | ---------------------- |
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
| [SAREF](http://ontology.tno.nl/saref) and (http://uri.etsi.org/m2m/saref)  | [The Smart Appliances REFerence (SAREF) ontology]()  | RDF | RDF serialization formats | -- | -- |
| [ECHONET Consortium](http://echonet.jp/english/)  | ECHONET device objects  | -- | -- | -- | -- |
-->

### The OMA DM Management Objects (Matthias and Mohammed)
  - **Background of the technology:** Device management specification for mobile phone terminals targeting mobile network operators. WAP Binary XML serialization over HTTP(S), binary SMS for wakeup and bootstraping.
  - **Consortium:** Open Mobile Alliance
  - **Tool/Development Support:** ?
  - **Resource identification:** DM Objects
  - **Query capabilities:** 
  - **Data Types:** 

### Lemonbeat Device Language (Frank)
  - **Background of the technology:**
  - **Consortium:**
  - **Tool/Development Support:**
  - **Resource identification:**
  - **Query capabilities:**
  - **Data Types:**



### ECHONET device objects (Naka)
  - **Background of the technology:** ECHONET device object is a logical model of the information held by more than 100 types of equipment devices or home electrical appliances such as sensors, air conditioners and LED Lights, or of control items that can be remotely controlled.
  - **Consortium:** ECHONET Consortium
  - **Tool/Development Support:** The Consortium does NOT provide the official tool/development support, however, some member companies and a university provide SDK / test tool / maintenance tool
  - **Resource identification:** “Identification number” property whose data type is unsigned character is included in common part of ECHONET device object definition.
  - **Query capabilities:** Thing descovery and registration method is described as a guideline in ECHONET Lite specifications. The guideline includes implementation of UPnP search mechanism.
  - **Data Types:** Data types are dependent on property type specified in ECHONET device objects, e.g. binary unsigened character.

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

### IOTDB.org (David Janes)
  - **Background of the technology:**
  - **Consortium:**
  - **Tool/Development Support:**
  - **Resource identification:**
  - **Query capabilities:**
  - **Data Types:**

### Vorto (Matthias)
  - **Background of the technology:** (Meta) information model to generate framework-specific data models and code. Open source project in the Eclipse Foundation started by Bosch.
  - **Consortium:** Open source project (Eclipse IoT working group)
  - **Tool/Development Support:** information model DSL, model repository, code genereators
  - **Resource identification:** any (depends on target framework)
  - **Query capabilities:** (depends on target framework)
  - **Data Types:** (depends on target framework)

### Semantic Sensor Network (SSN) Ontology (Danh)
  - **Background of the technology:** SSN was developed by the W3C Semantic Sensor Networks Incubator Group (SSN-XG) to describe sensors and observations, and related concepts. SSN is now being extended and standardised by W3C Spatial Data on The Web Working Group(SDWWG)
  - **Consortium:** SSN-XG, SDWWG
  - **Tool/Development Support:** ontology tools: SPARQL engine & RDF Parser etc.

  - **Resource identification:** URIs/URN
  - **Query capabilities:** SPARQL queries + spatial extensions
  - **Data Types:** XSD

### SensorML (check from OGC, Simon and Arne)
  - **Background of the technology:** The primary focus of the Sensor Model Language (SensorML) is to provide a robust and semantically-tied means of defining processes and processing components associated with the measurement and post-measurement transformation of observations. This includes sensors and actuators as well as computational processes applied pre- and post measurement.
  - **Consortium:** OGC
  - **Tool/Development Support:**
  - **Resource identification:**
  - **Query capabilities:**
  - **Data Types:**

### Schema.org (Michael Koster)
  - **Background of the technology:** Schema.org is a collaborative, community activity with a mission to create, maintain, and promote schemas for structured data on the Internet, on web pages, in email messages, and beyond. Among them, concepts like Events, Location, Primary data types can be used for Things Description model
  - **Consortium:** Google, Ms Bing, Yahoo,etc
  - **Tool/Development Support:** RDFa, Microdata and JSON-LD encodings
  - **Resource identification:**
  - **Query capabilities:**
  - **Data Types:**

### Device Registry and Thing Shadows for AWS IoT (Michael Koster?)
  - **Background of the technology:** The Thing Registry enables registration of so called units (both for real devices and virtual applications). Units are properties that describe a device or virtual application. A user may define custom attributes associated with each unit. AWS IoT has a notion of a Thing Shadow. A thing shadow (sometimes referred to as a device shadow) is a JSON document that is used to store and retrieve current state information for a thing (device, app, and so on). The Thing Shadows service maintains a thing shadow for each thing you connect to AWS IoT.
  - **Consortium:** Amazon
  - **Tool/Development Support:**
  - **Resource identification:** A device in the Device Registry can be uniquely identified.
  - **Query capabilities:**
  - **Data Types:**

### HyperCat catalogue (John from BT)
  - **Background of the technology:** HyperCat is an open, lightweight JSON-based hypermedia catalogue format for exposing collections of URIs (uniform resource identifiers). Using HTTPS, REST and JSON, each HyperCat catalogue may expose any number of URIs, each with any number of resource description framework-like (RDF-like) triple statements about it.
  - **Consortium:** HyperCat
  - **Tool/Development Support:**
  - **Resource identification:** URIs
  - **Query capabilities:** Catalogues are accumulated into a knowledge graph that can be queried.
  - **Data Types:**

### The Smart Appliances REFerence (SAREF) ontology (Jasper Roes)
  - **Background of the technology:** The Smart Appliances REFerence (SAREF) ontology is a shared model of consensus that facilitates the matching of existing assets (standards/protocols/datamodels/etc.) in the smart appliances domain. The starting point of SAREF is the concept of device (e.g., a switch). The device performs one or more functions. SAREF ontology enables description of devices and their functions.
  - **Consortium:** Created for the EC by TNO with input from many different stakeholders, now standardized and maintained by ETSI (TS 103 264 - V1.1.1).
  - **Tool/Development Support:** ontology tools: SPARQL engine & RDF Parser etc.
  - **Resource identification:** URIs
  - **Query capabilities:** SPARQL queries
  - **Data Types:** No explicit choice. SAREF is currently only an ontology to translate information from and between communication standards.

### oneM2M (Martin)
  - **Background of the technology:** The Smart Appliances REFerence (SAREF) ontology is a shared model of consensus that facilitates the matching of existing assets (standards/protocols/datamodels/etc.) in the smart appliances domain. The starting point of SAREF is the concept of device (e.g., a switch). The device performs one or more functions. SAREF ontology enables description of devices and their functions.
  - **Consortium:** SAREF consortium
  - **Tool/Development Support:** ontology tools: SPARQL engine & RDF Parser etc.
  - **Resource identification:** URIs
  - **Query capabilities:** SPARQL queries
  - **Data Types:** XSD

# Metadata Model

### RDF Schema ([RDFS](https://www.w3.org/TR/rdf-schema/)) (Victor)
  - **Background of the technology:** RDFS defines simple semantics for RDF
  data, e.g. the concept of class and subsumption relations between classes or
  properties. It is intended to provide a baseline for other meta vocabularies,
  such as [SKOS](https://www.w3.org/TR/2009/REC-skos-reference-20090818/)
  (thesauri, taxonomies) or [Dublin Core](http://dublincore.org/)
  (document metadata).

  [Schema.org](http://schema.org/), based on RDFS, is a popular vocabulary for
  general information on the Web: persons, events, places, products... Its
  development has been driven by today's major search engines to help them
  structure search results using annotations on Web pages (e.g. in the RDFa or
  microdata formats).

  An overview of Web vocabularies can be found on the
  [Linked Open Vocabulary](http://lov.okfn.org/) platform.
  - **Consortium:** W3C, schema.org community (including Google, Microsoft, Yahoo, Yandex)
  - **Tool/Development Support:** e.g. schema.org's [extension mechanism](http://schema.org/docs/extension.html),
  [TopBraid](http://www.topquadrant.com/products/).
  - **Resource identification:** IRI (Internationalized Resource Identifier)
  - **Data Types:** Built-in XSD datatypes for literals. RDFS classes for resources.

### Web Ontology Language ([OWL](https://www.w3.org/TR/owl-ref/)) (Victor)
  - **Background of the technology:** Defined in extension to [RDFS](RDF Schema)
  to allow more complex modeling and non-trivial automated reasoning. OWL
  mostly relies on Description Logic (DL). It can have different levels of
  complexity (called [profiles](https://www.w3.org/TR/owl-ref/#Sublanguages)).
  A second version of OWL
  ([OWL 2](https://www.w3.org/TR/2012/REC-owl2-syntax-20121211/)) was published
  and new profiles were added, mostly to trade "some expressive power for the
  efficiency of reasoning".

  OWL proved successful (especially in specific domains like biology) and many
  Web vocabularies use it (see the LOV platoform for an overview). However, only
  few of them take full advantage of its expressiveness.
  - **Consortium:** W3C
  - **Tool/Development Support:** [TopBraid](http://www.topquadrant.com/products/)
  (TopQuadrant), [Protégé](http://protege.stanford.edu/) (Stanford University).
  - **Resource identification:** same as RDFS.
  - **Data Types:** same as RDFS.

### DTD/XML Schema (Sebastian)
  - **Background of the technology:** Data modeling tool to structure data content and data value types (such as simple and complex type)
  - **Consortium:** W3C
  - **Tool/Development Support:** rich support of tools and libs such as validators to check instances for correctness and editors to model data
  - **Resource identification:** Is done via namespace declerations
  - **Data Types:** rich set of data type support (boolean, byte, unsignedByte, etc.). See full list here [https://www.w3.org/TR/xmlschema-2/#built-in-datatypes]

### [JSON Schema](http://json-schema.org/) (Victor)
  - **Background of the technology:** JSON Schema is an open-source initiative
  aiming at formalizing the structure of JSON data used in current systems.
  It enables automatic validation of data, among others.
  - **Consortium:**  Used de facto in some Web standards (e.g.
  [Open API Initiative](https://openapis.org/specification),
  [Open Interconnect Consortium](http://openinterconnect.org/developer-resources/specs/))
  and submitted [to IETF](http://tools.ietf.org/html/draft-zyp-json-schema-04).
  - **Tool/Development Support:** See its [Github page](https://github.com/json-schema/json-schema).
  - **Resource identification:** see [JSON Hyper Schema](http://json-schema.org/latest/json-schema-hypermedia.html)
  for hyper-media control.
  - **Data Types:** Uses JSON base types.


# Serialization Formats
Serialization formats suitable for representing Thing Descriptions are surveyed here.

### [Efficient XML Interchange (EXI)](http://www.w3.org/TR/exi/) (Taki)
  - **Background of the technology:** Binary serialization format of the XML Infoset
  - **Consortium:** W3C
  - **Tool/Development Support:** yes
  - **Data Types-aware encoding:** yes, based on XSD
  - **Binary Format:** yes
  - **Compression:** very high
  - **Small memory footprint:** yes
  - **Context-aware encoding:** yes

### [EXI for JSON](https://www.w3.org/TR/exi-for-json/) (Taki)
  - **Background of the technology:** Binary serialization format for JSON data model based on EXI approach
  - **Consortium:** W3C
  - **Tool/Development Support:** yes
  - **Data Types-aware encoding:** yes
  - **Binary Format:** yes
  - **Compression:** very high
  - **Small memory footprint:** yes
  - **Context-aware encoding:**

### [JSON](http://www.json.org/) (Taki)
  - **Background of the technology:** An attribute value-pair format to transmit data objects.
  - **Consortium:**  	RFC 7159 and ECMA-404
  - **Tool/Development Support:** yes
  - **Data Types-aware encoding:** supports limited type assignment (number, string, boolean, array, null), however, each value is presented in plain-text in JSON document
  - **Binary Format:** no
  - **Compression:** no compression (plain-text representation)
  - **Small memory footprint:** not feasible for constrained devices
  - **Context-aware encoding:** no

### [JSON-LD](http://json-ld.org/) (Victor)
  - **Background of the technology:** JSON-based serialization format for Linked
  Data. Transformation from JSON-LD to RDF has been standardized. The
  opposite transformation is not fully supported.
  - **Consortium:** W3C
  - **Tool/Development Support:** [implementations](http://json-ld.org/test-suite/reports/)
  available, tested and open-source. JSON-LD [playground](http://json-ld.org/playground/).
  - **Data Types-aware encoding:** Type coercion for basic data types
  (from JSON types to XSD data types)
  - **Binary Format:** no
  - **Compression:** to some extent: plain-text representation but compaction
  algorithm specified to reduce the size of JSON keys and values.
  - **Small memory footprint:** not designed for constrained devices.
  - **Context-aware encoding:** Any JSON-LD document shall include a context.

### [CBOR](http://cbor.io/) (Carsten)
  - **Background of the technology:** The "Concise Binary Object Representation (CBOR)" is based on the JSON data model
  - **Consortium:**   IETF
  - **Tool/Development Support:** yes
  - **Data Types-aware encoding:** yes
  - **Binary Format:**   yes
  - **Compression:** high
  - **Small memory footprint:** yes
  - **Context-aware encoding:**

<!-- Matthias: CoRE Link Format is not a (generic) serialization format, but a specific format for Web links. There are also JSON and CBOR serializations of the Link Format. -->

### RDF/EXI (Daniel)
  - **Background of the technology:** Serialize RDF in EXI format
  - **Consortium:** W3C (EXI/XML)
  - **Tool/Development Support:** yes
  - **Data Types-aware encoding:** yes
  - **Binary Format:** yes
  - **Compression:** very high (type-aware coder + removes redundancy)
  - **Small memory footprint:** yes, feasible for constrained devices
  - **Context-aware encoding:** yes, is able to take into account context knowledge 


### [Google Protocol Buffers](https://developers.google.com/protocol-buffers/) (Daniel)
  - **Background of the technology:** Method of serializing structured data by involving an interface description language that describes the structure
  - **Consortium:** Google
  - **Tool/Development Support:** yes
  - **Data Types-aware encoding:** yes
  - **Binary Format:** yes
  - **Compression:** high
  - **Small memory footprint:** yes
  - **Context-aware encoding:** yes

# Data Types

### [XML Schema (XSD)](http://www.w3.org/TR/xmlschema11-1/) (Daniel)
  - **Background of the technology:** XML Schema: Datatypes is part 2 of the specification of the XML Schema language. It defines facilities for defining datatypes to be used in XML Schemas as well as other XML specifications. It provides a rich set of of primitive data types and enables to define new or restrict data types.
  - **Primitive data types:** boolean, (unsigned-)Byte, (unsigned-)Short, (unsigned-)Int, (unsigned-)Long, float, double, hexBinary, base64Binary, date, time, ...
  - **Composite data types:** Any simple-typed data can be composed to a structered complex typed data

### [SenML](https://tools.ietf.org/html/draft-jennings-core-senml) (Ari)
  - **Background of the technology:** SenML is a media type for representing simple sensor measurements and device parameters. SenML has JSON, CBOR, XML, and EXI representations which all share the common SenML data model.  
  - **Primitive data types:** string, boolean, floating point, time (and plans for adding binary)
  - **Composite data types:** all measurements can include, in addition to value, "name", "time", and "measurement unit"

# Functional Description
Functional descriptions for RESTful APIs, hypermedia controls are surveyed here.

### [HATEOAS](http://roy.gbiv.com/untangled/2008/rest-apis-must-be-hypertext-driven) (Matthias)
  - **Background of the technology:** HATEOAS (Hypermedia as the Engine of Application State) is part of the REST architectural style (uniform interface constraint). REST clients may not rely on typed resources or predefined (out-of-band) request definitions, but must receive the list of possible requests from the server. Hypermedia formats are providing these functional descriptions in-band through links and forms, which tell the client how to construct requests. Semantic information about the state transition when following a link or submitting a form is attached through the link relation type and respectively form relation type attribute. The types are managed in an IANA [registry](http://www.iana.org/assignments/link-relations/link-relations.xhtml). However, proper types for WoT applications are still missing.
  - **Consortium:** IETF/IANA
  - **Tool Support:**
  - **Underlying Language/Model/Serialization Formats:** any hypermedia format (e.g., HTML, HAL, Hydra, Siren)

### [RAML](http://raml.org/) (Victor)
  - **Background of the technology:** The RESTful API Definition Language (RAML)
  is a format to specify an API in the form of a resource tree. For each
  resource, one can specify supported methods (GET, POST, etc), parameters if
  any and the structure of its content. It follows the principles of
  design first and model-driven engineering to allow for more automation in
  the development of Web applications.
  - **Consortium:** onw community, including Cisco, VMWare, Spotify.
  - **Tool Support:** see [RAML projects](http://raml.org/projects/projects)
  (50+ projects). Enables code generation (for both client and server sides),
  API validation, automatic documentation and integrated development.  
  - **Underlying Language/Model/Serialization Formats:** YAML

### [Open API Initiative (OAI)](https://openapis.org/) (Victor)
  - **Background of the technology:** RESTful API specification framework.
  Formerly known as [Swagger](http://swagger.io/). Its specification has almost
  the same features as RAML, JSON-based.
  - **Consortium:** own community supported by the Linux Foundation. Members
  include Google, IBM, Microsoft, Paypal and others.
  - **Tool Support:** see [Swagger tools](http://swagger.io/tools/). Enables
  code generation (for both client and server sides), API validation and
  automatic documentation.
  - **Underlying Language/Model/Serialization Formats:** JSON-based. Resource
  types are defined using JSON Schema (not mandatory).

### [Hydra](http://www.hydra-cg.com/) (Victor)
  - **Background of the technology:** RDFS vocabulary for RESTful API
  specification. It includes most of the features of the frameworks mentioned
  above (some details are still being discussed).
  - **Consortium:** W3C Community Group
  - **Tool Support:** see Hydra's [website](http://www.hydra-cg.com/). Limited
  support.
  - **Underlying Language/Model/Serialization Formats:** JSON-LD, RDF

### [RESTdesc](http://htmlpreview.github.io/?https://github.com/smnmyr/iot-semantics-w3c/blob/master/iot-semantics-membersubmission.html) (Matthias)
  - **Background of the technology:** RESTdesc is based on the Notation3 (N3) syntax. It attaches REST request definitions to the conclusion of first-order logic inference rules. Given a goal definition (also in N3), a semantic reasoner can calculate a proof that also carries an execution plan (an ordered list of requests) to achieve the goal. RESTdesc is a community effort by  Universiteit Gent and Universitat Politecnica de Catalunya.
  - **Consortium:** n/a
  - **Tool Support:** EYE semantic reasoner, ClickScript goal editor, few other open source projects
  - **Underlying Language/Model/Serialization Formats:** Notation3/RDF

### [JSON HyperSchema](http://json-schema.org/latest/json-schema-hypermedia.html) (Michael)
  - **Background of the technology:**
  - **Consortium:**
  - **Tool Support:**
  - **Underlying Language/Model/Serialization Formats:**  
