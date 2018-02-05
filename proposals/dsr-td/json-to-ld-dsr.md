# A Mapping from JSON to Linked Data

_This is an initial draft specification , and has been produced to provide an easier to  understand serialisation for web of thing interactions models — Dave Raggett_

The Internet of Things suffers from fragmentation with many platforms and barriers to integration. The Web of Things provides an interoperability framework that aims to reduce the effort and risk for providing  services and enable open markets of services across a broad range of IoT platforms.

The Web of Things deals with local or remote, physical or abstract, things that applications can either provide or consume as software objects. Applications are decoupled from the underlying protocols, data formats, as well as their encodings, and communication patterns. This makes it easy to provide and consume services across a wide range of platforms and standards.

Each thing in the Web of Things requires a description of its interaction model. This must be accessible via a Uniform Resource Identifier (URI), see [RFC3986](https://www.ietf.org/rfc/rfc3986.txt). The interaction model provides a [programming language independent abstract description](td-draft-spec-dsr.md) of how applications can interact with things in terms of their properties, actions, events and metadata.

Interaction models can be declared using the JavaScript Object Notation (as described in [RFC7493](https://tools.ietf.org/html/rfc7493)) as an alternative to other serialisations of Linked Data. This makes the models easier to understand than other serializations, including [JSON-LD](https://www.w3.org/TR/json-ld/), particularly so for more complex models. Here is an example of an interaction model expressed first as Turtle and then as JSON:

```Turtle
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix td: <http://www.w3.org/ns/td#> .
@prefix ex: <http://example.com/vocab/#> .

<http://example.com/water> a td:thing ;
	td:property _:1 , _:2 , _:3 , _:4 , _:5 ;
	td:event _:6 , _:7 ;
	td:context <http://example.com/context.json> .
_:1 td:name ex:inlet ;
	td:type td:boolean .
_:2 td:name ex:outlet ;
	td:type td:boolean .
_:3 td:name "upper" ;
	td:type td:number .
_:4 td:name "lower" ;
	td:type td:number .
_:5 td:name ex:level ;
	td:type td:number .
_:6 td:name "high_water" .
_:7 td:name "low_water" . 
```

and

```JSON
{
    "@context": "context.json",
    "events": {
        "high_water": null,
        "low_water": null
    },
    "properties": {
        "inlet": "boolean",
        "outlet": "boolean",
        "upper": "number",
        "lower": "number",
        "level": "number"
    }
}
```
## @context

The JSON object property names "@context",  "@prefix" and "@base" are reserved.  The value of "@context" is a URI that links to a file consisting of a single JSON object that maps names to RDF node URIs. "@context" may be used within the context file as a JSON object property whose value is either a URI linking to a further context, or the value is an array of such URIs. "@context" is used to translate JSON object property names representing RDF predicates to URIs. Context files may use "@prefix" as a JSON object property as a means to bind namespace prefixes to a string. This string is then used to expand prefixed names to URIs using the same algorithm as [Turtle](https://www.w3.org/TR/turtle/). The value for "@prefix" must be a JSON object whose property names are interpreted as prefix declarations, and the values as the URI for the namespace. "@base" may be used to define a base URI for expanding relative URIs.

## JSON object properties defining predicates or names

Nested JSON objects are interpreted as either defining predicates, or defining names, alternating between them at each successive level of nesting. In the following example properties, type, units and writeable are interpreted as predicates, whilst acceleration is interpreted as a name.

```JSON
{
    "@context": "context.json",
    "properties": {
        "acceleration": {
            "type": "number",
            "units": "g",
            "writeable": false
        }
    }
}
```

Note that @context is optional in cases where the default context is sufficient.

The default context is assumed to contain the following mappings 

* "properties" to _td:property_
* "actions" to _td:action_
* "events" to _td:event_
* "types" to _td:typedef_

The default context could thus take the form:

```JSON
{
    "@prefix" : {
        "td" : "<http://www.w3.org/ns/td#>",
    },
    "properties" : "td:property",
    "actions" : "td:action",
    "events" : "td:event",
    "types" : "td:typdef"
}
```

"@context" may be used in the interaction model at any level where the JSON object properties will be interpreted as predicates.

For each JSON object property that is interpreted as a name, an RDF node is constructed, e.g. as a new blank node. This node then becomes the subject for all predicates defined by the JSON object that is the value of the named JSON object property. The name is declared as an RDF string literal for the object of a triple, whose predicate is _td:name_, and whose subject is the aforementioned node.

When JSON object properties are interpreted as predicates, the context is searched for the mapping from the object property name to an RDF URI. In general, contexts are searched for mappings starting with the current JSON object and ascending the hierarchy of nested JSON objects until the default context has been searched. If no mapping is found for a JSON object property interpreted as a predicate, then a blank node is generated as the subject of triple with predicate td:name and a string literal corresponding to the JSON object property name as the object. This deals with the situation where the thing description lacks an application specific context. A warning should be generated as the missing definition may be unintentional.

In addition, the URI for the interaction model is used to declare that the given thing is an instance of the class _td:thing_. The prefix declarations in the context are used to generate the corresponding declarations when transforming to Turtle.

Applying this algorithm to the previous example, we get:

```Turtle
@prefix td: <http://www.w3.org/ns/td#> .

<http://example/accelerometer> a td:thing ;
	td:property _:1 .
_:1 td:name "acceleration" ;
	td:type td:number ;
	td:units "g" ;
	td:writeable false . 
```

If the value of a JSON object property acting as name is a JSON array, the array items are interpreted as defining an enumeration. For example:

```JSON
{
    "properties": {
        "color": [
            "red",
            "green",
            "blue"
        ]
    }
}
```

which translates to:

```Turtle
@prefix td: <http://www.w3.org/ns/td#> .

<http://example.com/color> a td:thing ;
	td:property _:1 .
_:1 td:name "color" ;
	td:type td:enum ;
	td:item "red" , "green" , "blue" . 
```

If the value of a JSON object property acting as a name is a string, this is interpreted as a type, and mapped to a predicate using the context. For example:

```JSON
{
    "properties" : {
        "switch" : "boolean"
    }
}
```

is translated to:

```Turtle
@prefix td: <http://www.w3.org/ns/td#> .

<http://example.com/switch> a td:thing ;
	td:property _:1 .
_:1 td:name "switch" ;
	td:type td:boolean . 
```

If the name of a JSON object property acting as a predicate is "types", then its value must be a JSON object whose property names are interpreted as the names of application defined  types. The property value is interpreted in the regular way. The type name can then be used in the same way as the names for core types. The "types" object must not be used to redefine an existing type.

If a string interpreted as the name of a type cannot be mapped to an RDF node, i.e. the string doesn't match a core type or an application defined type, this constitutes an error. It is also an error if the value of a JSON object property acting as name is neither a string nor an object.

If the name of a JSON object property acting as a predicate, and its value is an array, each item in the array is translated into the object for a triple with the given subject and predicate. If the array item is a JSON object, that object's properties are interpreted as predicates as translated in the regular way, including the generation of a new RDF node. It is an error for the array item to itself be an array. If the array item is null, the item is skipped and doesn't generate a tripple.

Here is an example that defines a type named acceleration and use it for each axis of an accelerometer:

```JSON
{
    "types": {
        "acceleration": {
            "type": "number",
            "min": -15,
            "max": 15,
            "rate": 32
        }
    },
    "properties": {
        "value": {
	    "properties" : {
                "x": "acceleration",
                "y": "acceleration",
                "z": "acceleration"
	    }
        }
    }
}
```

which translates to:

```Turtle
@prefix td: <http://www.w3.org/ns/td#> .

<http://example.com/acceleration> a td:thing ;
	td:typedef _:1 ;
	td:property _:2 .
_:1 td:name "acceleration" ;
	td:type td:number ;
	td:min -15 ;
	td:max 15 ;
	td:rate 32 .
_:2 td:name "value" ;
	td:property _:3 , _:4 , _:5 .
_:3 td:name "x" ;
	td:type _:1 .
_:4 td:name "y" ;
	td:type _:1 .
_:5 td:name "z" ;
	td:type _:1 . 
```

Note that this example could be rewritten using a Vector, e.g.

```JSON
{
    "types": {
        "acceleration": {
            "type": "number",
            "min": -15,
            "max": 15,
            "rate": 32
        }
    },
    "properties": {
        "value": {
            "vector": [
            	"x", "y", "z"
            ],
	    "type": "acceleration"
        }
    }
}
```

which translates to:

```Turtle
@prefix td: <http://www.w3.org/ns/td#> .

<http://example.com/acceleration> a td:thing ;
	td:typedef _:1 ;
	td:property _:2 .
_:1 td:name "acceleration" ;
	td:type td:number ;
	td:min -15 ;
	td:max 15 ;
	td:rate 32 .
_:2 td:name "value" ;
	td:type td:vector ;
    td:item _:3 , _:4 , _:5 ;
    td:itemType _:1 .
_:3 td:order 0 ;
	td:name "x" .
_:4 td:order 1 ;
	td:name "y" .
_:5 td:order 2 ;
	td:name "z" . 
```

Note that in JSON "vector" declares the set of coordinate names, whilst "type" declares the type used for each of the coordinates.

When a JSON object property acts as a name, and the propertyu value is a JSON object, then that object must declare "type" as a JSON object property except for union. Here is an example:

```JSON
{
    "types": {
        "product": {
            "union": [
                "meat",
                "fruit",
                "vegetables"
            ]
        },
        "meat": {
            "enum": [
                "chicken",
                "beef",
                "pork"
            ]
        },
        "fruit": {
            "enum": [
                "apples",
                "oranges",
                "grapes"
            ]
        },
        "vegetables": {
            "enum": [
                "potatoes",
                "carrots",
                "peas"
            ]
        }
    },
    "properties": {
        "basket": {
            "type": "product",
            "quantity": "number",
            "collection": "ordered"
        }
    }
}
```
The union is expressed as a JSON Array where each item is either the name of a core type or application defined type, or it is a JSON object that defines the type in situe, e.g.

```JSON
{
    "properties": {
        "power": {
            "union": [
	        {
		    "type": "boolean"
		},
		{
		    "type": "number"
		}
	    ]
	}
    }
}
```

## Examples for a variety of use cases

The approach described in this specification has been applied to a wide range of examples, see:

* https://www.w3.org/WoT/demos/td2ttl/
* https://www.w3.org/WoT/demos/td2ttl/oic.html
* https://www.w3.org/WoT/demos/td2ttl/m2m.html
