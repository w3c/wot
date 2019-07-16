# Draft Specification for Thing Descriptions

_This is an initial draft specification for the core interaction model, and has been produced to see if I can better understand what people are looking for — Dave Raggett_

## Introduction

The Internet of Things suffers from fragmentation with many platforms and barriers to integration. The Web of Things seeks to stimulate growth in the size and sophistication of markets of services for the IoT. This is based upon defining open standards for an interoperability framework that aims to reduce the effort and risk for providing  services, and enable open markets of services across a broad range of IoT platforms.

The Web of Things deals with local or remote, physical or abstract, things that applications can either provide or consume as software objects. Applications are decoupled from the underlying protocols, data formats, as well as their encodings, and communication patterns. This makes it easy to provide and consume services across a wide range of platforms and standards.

Each thing in the Web of Things requires a description of its interaction model. This must be accessible via a Uniform Resource Identifier (URI), see [RFC3986](https://www.ietf.org/rfc/rfc3986.txt). The interaction model provides a programming language independent abstract description of how applications can interact with things in terms of their properties, actions, events and metadata.

The interaction model may be linked to semantic models that describe the kinds of things as a basis for discovery, composition, validation and adaptation to variations in the interaction model, e.g. for devices provided by different vendors. 

As an example, the interaction model for a thing could describe a property with a read-only numeric value. The fact that this is a temperature reading in a recognised temperature scale is described in the thing's semantic model along with any expected metadata, e.g. the sensor's location. Such models allow suppliers and consumers of services to agree on the meaning of the data they exchange, enabling _semantic interoperability_. The predicate rdf:type can be used to declare that a thing, property, etc. is an instance of a class. The predicate td:role is reserved for declaring that a property etc. plays a given role in a semantic class.

Further considerations include security, safety, privacy, trustworthiness and resilience of systems based upon the Web of Things. In addition, suppliers and consumers of services may  be concerned with servlce level agreements and other terms and conditions as a basis for an open market of business to consumer or business to business services.

This specification deals with the core interaction model in terms of a thing's properties, actions, events and metadata. The underlying framework is based upon W3C's work on [Linked Data](https://www.w3.org/standards/semanticweb/data) as a _lingua franca_ for comparing data and data models in different formats. One such format uses the JavaScript Object Notation (as described in [RFC7493](https://tools.ietf.org/html/rfc7493)) together with a simple algorithmic mapping to Linked Data, see [JSON to LD](json-to-ld-dsr.md).

This specification defines vocabulary terms using the "td" prefix for the following Linked Data namespace:

- http://www.w3.org/ns/td#

Further supplementary specifications will deal with metadata specific to IoT platforms, security, privacy, access control, and so forth. Note that the predicate _td:platform_ has been reserved for use with identifying the IoT platform for the purpose of selecting an appropriate software driver. Where possible the drivers will expect cross platform metadata predicates, e.g. _td:rate_ for the sampling rate of a sensor, but in some cases, platform specific metadata will also be needed.

The following sections specify how the interaction model for things can be modelled using Linked Data in terms of labelled binary relationships where a predicate links a subject to an object.

## Data Types

The interaction model for things is based upon a core set of data types. In summary, these are:

* Booleans whose value is restricted to _true_ or _false_
* Numbers with Integers as a subclass
* Strings encoded in UTF8
* Objects as a unique mapping from names to values
* Ordered and unordered collections of a given data type
* Vectors as a set of named coordinates with the same data type
* Enumerations over a set of literal values
* Unions of data types
* Things as first class types using the URI for their interaction models

Interaction models may define additional named data types in terms of the above data types. For example, a Point could be defined as a Vector of Numbers for the x, y and z axes. A Polygon could then be defined as an ordered collection of Points. Named types may include arbitrary metadata, e.g. min/max constraints, units of measure, sampling rate, accuracy, as well as contextual information, e.g. where a sensor is located and what it is measuring, when it was last calibrated and so forth.

### Booleans
The Boolean data type is declared using the predicate _td:type_ with the the RDF node  _td:boolean_ as its object.

### Numbers
These are declared using the predicate _td:type_ whose object is the RDF node _td:number_ .

Lower and upper limits for numeric values can be declared using the predicates _td:min_ and _td:max_, whose object must be a numeric literal. The limits are inclusive, e.g. setting a min of 0 declares that the value must be zero or above, whilst setting a max of 9 declares that the value must be 9 or less.

The precision of numbers is platform dependent.

### Integers
These are declared using the predicate _td:type_ whose object is the RDF node _td:integer_ .

Lower and upper limits for numeric values can be declared using the predicates _td:min_ and _td:max_, whose object must be a integer literal. The limits are inclusive, e.g. setting a min of 0 declares that the value must be zero or above, whilst setting a max of 9 declares that the value must be 9 or less.

The precision of integers is platform dependent.

### Strings
These are declared using the predicate _td:type_ whose object is  the RDF node _td:string_ .

Valid strings may be constrained to match a given regular expression (as defined by ECMA 262) by using the predicate _td:pattern_ whose object is an RDF string literal for the regular expression.

**Question**: are there any further constraints on valid strings, e.g. on permitted characters?

### Objects
Objects consist of a set of name/value pairs. For each such name there must be a triple with the predicate _td:property_. The object for this triple must be the subject of a triple with the predicate _td:name_ whose object is an RDF string literal for the given name. The names must uniquely identify the object properties of the given object. Objects may be nested arbitrarily with the restriction that no object is a descendant of itself. The data types for named values can be declared using any of the core types or application defined types, but must be unique, i.e. there must be one and only one td:type predicate.

**Question**: should we use rdfs:label rather than td:name?

### Collections
These are declared with the predicate _td:collection_ whose object is either _td:ordered_ or _td:unordered_.

### Vectors
Vectors define a point in a coordinate space with a set of named axes with the same data type. A vector is declared  using the predicate _td:type_ whose object is  the RDF node _td:vector_ .  The data type for coordinates is declared using the predicate _td:itemType_.

Each axis is declared using the _td:item_ predicate whose object is an RDF node (e.g. a blank node) that must be the subject of a pair of triples.  One of these has the predicate _td:order_ whose object is a non-negative integer value. The other has the predicate _td:name_ whose value is an RDF string literal for the name. The values for the order should be unique for a given vector, and form a contiguous sequence starting from zero. If there are three axes, the first must have order 0, the second 1 and the third 2.

### Enumerations
Valid values may be constrained to be members of given set of named values. These are declared using the predicate _td:type_ whose object is  the RDF node _td:enum_. The set of permitted named values are declared using the predicate _td:item_ whose object must be an RDF string literal for a named value.

Here is an example of a thing (in the turtle syntax) with a single property named "rank" whose value is an enumeration with values  {low, medium, high}:

```Turtle
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix td: <http://www.w3.org/ns/td#> .

<http://example.com/rank> a td:thing ;
	td:property _:1 .
_:1 td:name "rank" ;
	td:type td:enum ;
	td:item "low" , "medium" , "high" .
```

### Unions
Unions are used when the value can belong to one of several data types. These are declared using the predicate _td:type_ whose object is  the RDF node _td:union_. The set of permitted named data types are declared using the predicate _td:item_ whose object must be the subject of a td:type that identifies a core type or an application defined type, together with any associated metadata. Unions may be nested arbitrarily with the restriction that no union is a descendant of itself.

Here is a an example where a property value is a union of a string and a number:

```Turtle
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix td: <http://www.w3.org/ns/td#> .

<http://example.com/order> a td:thing ;
	td:property _:1 .
_:1 td:name "product" ;
	td:type td:union ;
	td:item _:2 , _:3 .
_:2 rdfs:comment "the product name" ;
	td:type td:string .
_:3 rdfs:comment "the product number" ;
	td:type td:number .
```

**Question**: should we require a td:name for each data type the union declares?

### Things as first class types

Things can be identified via the URI for their interaction model. This allows them to be the subject or object of triples. It further allows for things to be first class types, so that they used as the value of properties, and passed with actions and events.  The data type can be declared as a generic thing using the predicate _td:type_ whose object is  the RDF node _td:thing_. If you want to limit this to a specific thing, you can instead use the URI for that thing's interaction model.

## Interaction Model

Interaction models are programming language and serialisation independent models of how applications can interact with local or remote, physical or abstract things. An interaction model could be one of the following:

1. A complete interaction model for a specific instance of a device
2. A complete interaction model for a class of devices, e.g. a particular model of air conditioner
3. A partial interaction model for use in compositions, e.g. a model for a binary on/off switch

Partial interaction models are useful for describing devices in terms of sets of resources. This reflects common practice for IoT standards suites, see the later section on syntactic modularity. The distinction between a model of a specific instance of a device compared to a model of a class of devices, is that it also involves metadata specific to that instance.

The interaction model for a thing consists of:

* Zero or more _properties_
* Zero or more _actions_
* Zero or more _events_
* Zero or more metadata triples

The simplest interaction model is the empty set of triples.

### Properties

Properties are defined as objects, see above for details. The _td:writable_ predicate may be used to declare whether a property is writeable or read-only, e.g. as is the case for sensor readings. The object of the predicate is respectively either _true_ or _false_.

### Actions

Actions, loosely speaking, correspond to invoking methods on objects. One distinction is that actions are asynchronous as their implementation may be on a remote device resulting in a communications lag. This will be exacerbated for devices that spend most of their time sleeping to conserve power, so that the action can only be acted upon when the device next wakes up.  Some actions are intrinsically asynchronous in that they take considerable time to complete. In some cases, such actions may be cancellable.

Each action is declared using the predicate _td:action_, whose object must be the subject for the predicate _td:name_, where the object is an RDF string literal for the action's name.

Actions requests and responses may pass data as a set of name/value pairs. The request is declared using the predicate _td:request_, whilst the response is declared using the predicate _td:response_. The object for these predicates must be the subject for zero or more arguments. Arguments are defined in the same way as object properties, using _td:argument_ in place of td:property. Each argument must therefore have a name.

In the absence of a td:request or td:response triple, the request and response, respectively, are assumed to carry no data.  The data type for an argument can be declared using any of the core data types or application defined data types.

**Question**: which terminology is better:  request/response or input/output?  Given that actions are asynchronous and may take a considerable time to provide a response, I suspect that request/response will be preferred by a majority of developers.

Here is an example of an action with a single request argument and five response arguments:

```
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix td: <http://www.w3.org/ns/td#> .

<http://example.com/weather> a td:thing ;
	td:action _:1 .
_:1 td:name "weather" ;
	td:request _:2 ;
	td:response _:4 .
_:2 td:argument _:3 .
_:3 td:name city ;
	td:type td:string .
_:4 td:argument _:5 , _:6 , _:7 , _:8 , _:9 .
_:5 td:name high ;
	td:type td:number .
_:6 td:name low ;
	td:type td:number .
_:7 td:name wind ;
	td:type td:number .
_:8 td:name precipitation ;
	td:type td:number .
_:9 td:name synopsis ;
	td:type td:string . 
```

### Events

Events are defined in the same way as properties, but using _td:event_ in place of td:property. Each event must therefore have a name.

### Metadata

The RDF nodes for thing descriptions, properties, actions, events and arguments may be the subject for triples that define metadata.

### Application defined types

The _td:typedef_ predicate can be used to reference application defined types along with associated metadata. The object for the td:typedef predicate must be the subject for the _td:name_ predicate whose object is an RDF string literal for the name of the type. The name should uniquely identify the type within the context of a given interaction model. Here is an example that defines a temperature type and uses it for different rooms in a home:

```
@prefix haim: <http://example.org/haim#> .
@prefix units: <http://example.org/units#> .
@prefix td: <http://www.w3.org/ns/td#> .

<http://example.com/home> a td:thing ;
	td:typedef _:1 ;
	td:property _:2 .
_:1 td:name "temperatureSensor" ;
	a units:temperature ;
	td:type td:number ;
	td:min -10 ;
	td:max 100 ;
	td:units units:celcius .
_:2 td:name "temperature" ;
	td:type _:1 ;
	haim:location haim:room ;
	td:collection td:unordered .
```
This defines a thing that exposes a collection of temperature readings from different rooms in a home. It makes use of an ontology for describing different rooms as an enumeration (something that has been done by ECHOnet). 

### Syntactic modularity
IoT standards suites such as OCF and oneM2M, etc. commonly define interfaces and compose them into the definitions for classes of devices. This can be modelled in RDF using the predicate _td:import_ whose object is the URI for a thing. This allows the interaction model for a thing to be defined as a composition of the interaction models for other things.

When td:import is used at the level of a thing the properties, actions and events for an imported thing become the properties, actions and events of thing that imports them.  You can also analogously apply td:import to properties, actions and events, e.g. to import the data type and associated metadata. This enables re-use of shared definitions, making it easier to maintain consistency across a group of thing descriptions.
