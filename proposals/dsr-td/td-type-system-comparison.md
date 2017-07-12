# Comparison with JSON Schema & OWL

| Proposed types | JSON Schema | OWL         | Example |
| ----------------| ------------| ----------- | ------- |
| Booleans | boolean | xsd:boolean | |
| Numbers | number | xsd:float, xsd:double, xsd:decimal | |
| Integers | integer | xsd:decimal | [oic.r.colour.saturation](#oicrcoloursaturation) |
| Strings | string | xsd:string | |
| Objects | object | owl:Restriction ; owl:allValuesFrom | [oic.r.button](#oicrbutton) |
| Ordered collections of a given data type | array + items | rdf:List | [oic.r.temperature](#oicrtemperature) |
| Unordered collections of a given data type | . | ~ | |
| Vectors | array + items + (min = max) | rdf:List, owl:min/maxCardinality  | [oic.r.sensor.magneticFieldDirection](#oicrsensormagneticFieldDirection) |
| Enumerations | object + enum | owl:oneOf | [oic.r.door](#oicrdoor) |
| Unions of data types | anyOf | owl:unionOf | [oic.r.sensor.carbon*oxide](#oicrsensorcarbonoxide) |
| Things | ? | td:Thing | | |

## oic.r.colour.saturation
Proposal:
```json
{
    "type": "integer",
    "min": 0,
    "max": 100
}
```

JSON Schema:
```json
{
  "type": "integer",
  "description": "The colour saturation value",
  "minimum": 0,
  "maximum": 100
}
```

OWL (JSON-LD):
```json
{
    "withRestrictions": [
        { "minimum": 0 },
        { "maximum": 100 }
    ],
    "onDatatype": "integer"
}
```

OWL (Turtle):
```
[
    owl:withRestrictions (
        [ xsd:minInclusive "0" ]
        [ xsd:maxInclusive "100" ]
    ) ;
    owl:onDatatype xsd:integer .
]
```

## oic.r.button
Proposal:
```json
{
    "value": {
        "type": "boolean",
        "writeable": false
    }
}
```

JSON Schema:
```json
{
  "properties": {
    "value": {
      "type": "boolean",
      "description": "Status of the button"
    }
  }
}
```

OWL (JSON-LD):
```json
{
    "allValuesFrom": "boolean",
    "onProperty": "ocf:value"
}
```

OWL (Turtle):
```
[
    owl:allValuesFrom xsd:boolean ;
    owl:onProperty ocf:value .
]
```

## oic.r.temperature
Proposal:
```json
{
    "type": "?",
    "collection": "ordered"
}
```

JSON Schema:
```json
{
    "type": "array",
    "items": {"$ref": "oic.r.temperature.json#/definitions/oic.r.temperature"}
}
```

OWL (JSON-LD):
```json
{
    "qualifiedCardinality": 3,
    "onProperty": "ocf:value"
}
```

OWL (Turtle):
```
[
    owl:qualifiedCardinality "3" ;
    owl:onProperty ocf:value .
]
```

## oic.r.sensor.magneticFieldDirection
Proposal:
```json
{
    "vector": [
        "Hx",
        "Hy",
        "Hz"
    ],
    "type": "number"
}
```

JSON Schema:
```json
{
  "properties": {
    "value": {
      "type": "array",
      "readOnly": true,
      "description": "Array containing Hx, Hy, Hz.",
      "minItems": 3,
      "maxItems": 3,
      "items": {
        "type": "number"
      }
    }
  }
}
```

## oic.r.door
Proposal:
```json
{
    "enum": [
        "Open",
        "Closed"
    ]
}
```

JSON Schema:
```json
{
  "enum": ["Open","Closed"],
  "description": "The state of the door (open or closed)"
}
```

OWL (JSON-LD):
```json
{
    "oneOf": ["Open", "Closed"]
}
```

OWL (Turtle):
```
[
    owl:oneOf ("Open" "Closed")
]
```

## oic.r.sensor.carbon*oxide
Proposal:
```json
{
    "union": [
        "?",
        "?"
    ]
}
```

JSON Schema:
```json
{
  "anyOf": [
    {"$ref": "oic.r.sensor.carbonMonoxide.json#/definitions/oic.r.sensor.carbonMonoxide"},
    {"$ref": "oic.r.sensor.carbonDioxide.json#/definitions/oic.r.sensor.carbonDioxide"}
  ]
}
```

OWL (JSON-LD):
```json
{
    "unionOf": ["ocf:CarbonMonoxide", "ocf:CarbonDioxide"]
}
```

OWL (Turtle):
```
[
    owl:unionOf (ocf:CarbonMonoxide ocf:CarbonDioxide)
]
```
