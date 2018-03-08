# Expressing data types in a Thing Description

Thing descriptiown allows one to define a type for input and output values
(e.g., valueType). We need to allow for
- simple types and
- composed types (a.k.a. complex types)

The original idea was to base simple types on XML schema datatypes just like RDF
does (e.g., xsd:integer) and composed types based on schema.org.

That said using XSD datatypes seems to implicitly match to a given
representation (e.g., xsd:byte) while still not providing an easy way to limit
ranges or enumerate values without requiring the full power of XML schema.

Goal
- express how JSON payload MUST look like
- do not prohibit mappings to other formats than JSON (e.g., XML)
- enable semantic annotation of type definition

## Note on RDF data types

It is allowed (but not recommended) to associate a literal to any type
definition that has a URI (even without precise semantics). Still, a dedicated
mechanism to define complex types is needed: there is no way to specifiy the
nature of the data type on a literal.

Refering to arbitrary XSD schema is allowed, as long as schema components
define an ID. The other proposed solution was with XSCD, which never reached
the recommendation status, though.

OWL allows restriction on RDF-compatible XSD types. Structured values, such as
JSON objects should be expressed as classes. A simpler type declaration would
be beneficial.

References:
- https://www.w3.org/TR/rdf11-concepts/#section-Datatypes (RDF data types)
- https://www.w3.org/TR/owl2-syntax/#Datatype_Definitions (OWL data types)
- https://www.w3.org/TR/swbp-xsch-datatypes/#sec-userDefined (user-defined XSD data types)

## Other schemas

### Schema.org

Schema.org allow for refering to existing types but introduces
another concept by linking to types defined
elsewhere. Coming up with user-defined types does not seem to be very easy also.

### JSON Schema

Using JSON schema in both cases, simple types and composed
types, seems a reasonable/possible approach.


## Comparison

<table>
  <tr>
    <th>Feature</th>
    <th>JSON Schema</th>
    <th>Schema.org</th>
    <th><a href="https://www.w3.org/TR/shacl/">SHACL</a></th>
	<th><a href="http://shex.io/shex-semantics/index.html">ShEx</a></th>
    <th>Proposal from <a href="https://github.com/w3c/wot/issues/122">issue #122</a></th>
    <th>YANG</td>
    <th>Notes</td>
  </tr>
  <tr>
    <td>Community</td>
    <td>?loosely coupled?</td>
    <td>Strong community</td>
    <td>Semantic Web community</td>
	<td>Semantic Web community</td>
    <td>None</td>
    <td>Networking, mainly SDN community</td>
    <td>Schema.org vocabulary is shared between different parties (e.g., Bing, Google, Yahoo)<br/><br/>
    There is no official RFC or tools how to convert YANG to JSON.  RFC  https://tools.ietf.org/html/rfc6110 describes mapping YANG to DSDL.
    </td>
  </tr>
  <tr>
    <td>Tool support for validation</td>
    <td>Yes e.g.  http://jsonschemalint.com/</td>
    <td>Partially, e.g. https://developers.google.com/structured-data/testing-tool/</td>
    <td>Yes e.g. http://shacl.org/playground/</td>
	<td>Yes e.g. http://rawgit.com/shexSpec/shex.js/master/doc/shex-simple.html</td>
    <td>None</td>
    <td>Yes<br/> http://www.yangvalidator.com/</td>
    <td>Google's tool only check against existing classes and data types.</td>
  </tr>
  <tr>
    <td>Value constraints</td>
    <td>
      <pre>
{
  "valueType": {
    "type": "integer",
    "maximum": 13
  }
}
      </pre>
    </td>
    <td>
      <pre>
{
  "valueType": {
    "@type": "Integer",
    "maxValue": 13
  }
}
      </pre>
    </td>
    <td>
      <pre>
[
  sh:datatype xsd:integer ;
  sh:maxInclusive "13" .
]
      </pre>
    </td>
	<td>
      <pre>
[
  ex:id xsd:integer MaxInclusive 13
]
      </pre>
    </td>
    <td>
      <pre>
{
  "type": "integer",
  "max": 13
  "units": "celsius"
}
      </pre>
    </td>
    <td>
      <pre>
typedef new-int32-type {
  type int32 {
    range "min..13";
  }
}
     </pre>
     https://tools.ietf.org/html/rfc6020#page-111
    </td>
    <td>The third stucture does not differentiate between <i>quantities</i> and the <i>values</i> these quantities are associated with</td>
  </tr>

  <tr>
    <td>Enumerated value support</td>
    <td>
      <pre>
{
  "valueType": {
     "type": "string",
     "enum": [ "file", "memory"]
  }
}
      </pre>
    </td>
    <td>
      <i>Not applicable</i>
    </td>
    <td>
      <pre>
[
  sh:in ("file" "memory")
]
      </pre>
    </td>
	<td>
      <pre>
:enum ["file" "memory"];
      </pre>
    </td>
    <td>
      <pre>
{
  "enum": ["file", "memory"]
}
      </pre>
    </td>
    <td>
      <pre>
leaf new-enum {
  type enumeration {
    enum zero;
    enum one;
    enum five {
     value 5;
    }
  }
}      
      </pre>
      value must be integer
    </td>
    <td>Enumerations values might not be of type "string", e.g. dates (see [example of US holidays](https://www.w3.org/TR/xmlschema-2/#rf-enumeration))</td>
  </tr>

  <tr>
    <td>User-defined types</td>
    <td>
      <pre>
{
  "valueType": {
      "type": "object",
      "properties": {
          "id": {
              "type": "integer"
          },
          "name": {
              "type": "string"
          }
      },
      "required": ["id"]
  }
}
      </pre>
    </td>
    <td>
      <pre>
[
  {
    "@type": "PropertyValueSpecification",
    "valueName": "id",
    "valueRequired": true,
  },
  {
    "@type": "PropertyValueSpecification",
    "valueName": "name"
  }
]
      </pre>
    </td>
    <td>
      <pre>
[
  sh:property [
    sh:path ex:id ;
    sh:datatype xsd:integer ;
    sh:maxCount 1 ;
    sh:minCount 1 ;
  ] ;
  sh:property [
    sh:path ex:name ;
    sh:datatype xsd:string
  ]
] .
      </pre>
    </td>
	<td>
      <pre>
ex:id xsd:integer;
ex:name xsd:string?
      </pre>
    </td>
    <td>
      <pre>
{
  "type": {
    "id": "integer",
    "name": "integer"
  }
}
      </pre>
    </td>
    <td>
      <pre>
container thermometer {
  leaf temperature {
    type int32 {
      range "-30..100";
    }
  }
}      
      </pre>
    </td>
    <td>A request to the schema.org community is needed to extend its model</td>
  </tr>
  <tr>
    <td>Reference to other types</td>
    <td>
      <pre>
"properties": [
  {
    "valueType": {
      "type": "Number",
      ...
    }
  }, {
    "valueType": {
      "$ref": "#/properties/0/valueType"
    }
  }
]
      </pre>
    </td>
    <td>
      <pre>
"properties": [
  {
    "valueType": {
      "@id": "valType1",
      "@type": "Number",
      ...
    }
  }, {
    "valueType": "valType1"
  }
]
      </pre>
    </td>
    <td>
      <pre>
&lt;valType1&gt; a sh:NodeShape ;
[
  sh:property [
    sh:path :valueType ;
    sh:datatype xsd:double ;
  ]
]
[
  sh:property [
    sh:class &lt;valType1&gt; .
    sh:path :valueType ;
  ]
]
      </pre>
    </td>
	<td>
      <pre>
&lt;valType1&gt;{
  :valueType xsd:double;
}
[	  
  :valueType  @&lt;valType1&gt;
]
      </pre>
    </td>
    <td>
      <pre>
"property1": {
  "type": "number",
  ...
},
"property2": "@property1"
      </pre>
    </td>
    <td>
      <pre>
typedef temperature {
  type int32 {
    range range "-30..100";
  }
}
...      
container thermometer {
  leaf value {
    type temperature;
  }
}
      </pre>
    </td>
    <td>
      In the third structure, property2 must be identical to property1? Is
      property2 needed then?
    </td>
  </tr>
</table>

## Next steps

JSON Schema appears a good candidate and it is recommended for complex data
type specification. However, it still needs to be mapped to RDF, so that type
definitions can be semantically annotated.

A further comparison has been made to evaluate the interplay between JSON Schema
and RDF, and more specifically with OWL.
See [here](https://github.com/w3c/wot/tree/master/proposals/type-system/owl-comparison.md).

Moreover, further languages have been proposed
([CDDL](https://tools.ietf.org/html/draft-greevenbosch-appsawg-cbor-cddl-08),
[YANG](https://tools.ietf.org/html/draft-ietf-netmod-rfc6020bis-12))
that still need to be reviewed.

## Mappings to Encodings

### Mapping to JSON/CBOR/EXIforJSON

By means of JSON schema mapping to JSON instances seems straightforward.

One question that remains is whether JSON payload needs to be wrapped in one way or the other.


| Not wrapped   | Wrapped   |
| ------------- | ------------- |
| `123`         | `{ "value": 123 }`  |

Note: some JSON parsers and also serializers have problems with value-only literals. Also, depending on the JSON specification (RFC vs. ECMA) the text "hello" is valid JSON or not -> hence the value-wrapping seems to be "safer".

### Mapping to XML/EXI


Mapping to XML could be done by transforming JSON schema to XML schema first. The XML schema defines then the structure of the XML document. Also, the XML schema can be used for efficient XML representations such as EXI.

The following is an example JSON schema defining a JSON object.

```javascript
{
    "type": "object",
    "properties": {
        "id": {
            "type": "integer"
        },
        "name": {
            "type": "string"
        }
    },
    "required": ["id"]
}
```

transforms to

```xml
<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema">
    <xs:element name="value">
        <xs:complexType>
            <xs:all>
                <xs:element name="id" type="xs:integer" minOccurs="1" />
                <xs:element name="name" type="xs:string" />
            </xs:all>
        </xs:complexType>
    </xs:element>
</xs:schema>
```

Here is another example JSON schema defining a JSON array.

```javascript
{
    "type": "array",
    "items": {
        "type" : "number"
    },
    "minOccurs" : 2,
    "minOccurs" : 3
}
```

transforms to

```xml
<xs:complexType xmlns:xs="http://www.w3.org/2001/XMLSchema">
    <xs:sequence>
        <xs:element name="value" type="xs:double" minOccurs="2" minOccurs="3" />
    </xs:sequence>
    <xs:attribute name="isArray">
        <xs:simpleType>
            <xs:restriction base="xs:boolean">
              <xs:enumeration value="true"/>
            </xs:restriction>
        </xs:simpleType>
    </xs:attribute>
</xs:complexType>
```

Note1: JSON schema does NOT define any order. That said, we would need to use xsd:all constructs instead of xsd:sequence.

Note2: A complete "JSON Schema" to "XML Schema" mapping needs to be defined.
