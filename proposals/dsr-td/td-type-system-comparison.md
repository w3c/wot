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
```json
{
    "type": "integer",
    "min": 0,
    "max": 100
}
```

```json
{
  "type": "integer",
  "description": "The colour saturation value",
  "minimum": 0,
  "maximum": 100
}
```

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
```json
{
    "value": {
        "type": "boolean",
        "writeable": false
    }
}
```

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

```
[
    owl:allValuesFrom xsd:boolean ;
    owl:onProperty ocf:value .
]
```

## oic.r.temperature
```json
{
    "type": "?",
    "collection": "ordered"
}
```

```json
{
    "type": "array",
    "items": {"$ref": "oic.r.temperature.json#/definitions/oic.r.temperature"}
}
```

```
[
    owl:qualifiedCardinality "3" ;
    owl:onProperty ocf:value .
]
```

## oic.r.sensor.magneticFieldDirection
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
```json
{
    "enum": [
        "Open",
        "Closed"
    ]
}
```

```json
{
  "enum": ["Open","Closed"],
  "description": "The state of the door (open or closed)"
}
```

```
[
    owl:oneOf ("Open" "Closed")
]
```

## oic.r.sensor.carbon*oxide
```json
{
    "union": [
        "?",
        "?"
    ]
}
```

```json
{
  "anyOf": [
    {"$ref": "oic.r.sensor.carbonMonoxide.json#/definitions/oic.r.sensor.carbonMonoxide"},
    {"$ref": "oic.r.sensor.carbonDioxide.json#/definitions/oic.r.sensor.carbonDioxide"}
  ]
}
```

```
[
    owl:unionOf (ocf:CarbonMonoxide ocf:CarbonDioxide)
]
```
