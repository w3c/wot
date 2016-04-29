# Expressing data types in a Thing Description

Thing description allows one to define a type for input and output values
(e.g., valueType). We need to allow for
- simple types and
- composed types (a.k.a. complex types)

The original idea was to base simple types on XML schema datatypes just like RDF does (e.g.,
  xsd:integer) and composed types based on schema.org.

That said using XSD datatypes seems to implicitly match to a given
representation (e.g., xsd:byte) while still not providing an easy way to limit
ranges or enumerate values without requring the full power of XML schema.

Goal
- express how JSON payload MUST look like
- do not prohibit mappings to other formats than JSON (e.g., XML)

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

## Schema.org

Schema.org allow for refering to existing types but introduces
another concept by linking to types defined
elsewhere. Coming up with user-defined types does not seem to be very easy also.

## JSON Schema

Using JSON schema in both cases, simple types and composed
types, seems a reasonable/possible approach.


## Comparison

<table>
  <tr>
    <th>JSON Schema</td>
    <th>Schema.org</td>
    <th>Notes</td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td>
    <dl>
      <dt>Community</dt>
      <dd>JSON Schema: ?loosely coupled?</dd>
      <dd>Schema.org: Strong community</dd>
      <dt>Shared vocabulary between different parties</dt>
      <dd>JSON Schema: ?No?</dd>
      <dd>Schema.org: Yes  (e.g., Bing, Google, Yahoo)</dd>
    </dl>
    </td>
  </tr>
  <tr>
    <td>
      <pre>
{
  "type": "integer",
  "maximum": 13
}
      </pre>
    </td>
    <td>
      <pre>
{
  "@type": "Integer",
  "maxValue": 13
}
      </pre>
    </td>
    <th></td>
  </tr>

  <tr>
    <td>
      <pre>
{
   "type": "string",
   "enum": [ "file", "memory"]
}
      </pre>
    </td>
    <td>
      <i>Not applicable</i>
    </td>
    <td>
    <dl>
      <dt>Enumerated value support</dt>
      <dd>JSON Schema: Yes </dd>
      <dd>Schema.org: No. Possible to use composed type?</dd>
    </dl>
    </td>
  </tr>

  <tr>
    <td>
      <pre>
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
    <dl>
      <dt>Tools Support for Validation</dt>
      <dd>JSON Schema: Yes e.g,  http://jsonschemalint.com/</dd>
      <dd>Schema.org: ??? https://developers.google.com/structured-data/testing-tool/ ???</dd>
      <dt>User-defined types</dt>
      <dd>JSON Schema: yes</dd>
      <dd>Schema.org: ??? request to schema.org community???</dd>
    </dl>

    </td>
  </tr>
</table>
