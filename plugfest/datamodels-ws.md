# Thing Data Models in JSON-LD

This is a description of how Thing data models can be defined in JSON-LD and has been implemented by a [NodeJS based server](https://github.com/w3c/web-of-things-framework). Note that further work is needed to specify the data model for results returned by actions, and for metadata on whether a property value is static, or if not, how long its value can be relied on. 

The syntax assumes a JSON-LD context that maps short names to RDF URLs, e.g. to the RDF core datatypes that RDF imports from XML Schema. The default JSON-LD context is assumed, e.g. on the basis of the Media Type used for the model.  Thing descriptions should use @context to reference domain semantics. This will be ignored on resource constrained devices, but on more powerful platforms, the domain semantics can be used as a basis for selecting matching services, e.g. during service composition.

The following covers an example of an electric light. The model is protocol independent, provides an on/off switch, settable colour temperature, access to the rgb values, and a dim action that changes the brightness to the given setting in a given number of seconds.  The model allows for notification of changes, but the API for that would be platform dependent as I don’t believe it should be formally treated as an event in the model.

To allow the example to fully conform to the [JSON-LD Recommendation](http://www.w3.org/TR/json-ld/) concrete examples need to be provided for the default context and the domain model. The latter needs to provide URL bindings for the domain terms e.g. “on”, “color_temp” and “dim”. More generally, it could link to ontologies that describe semantic relationships, e.g. that an LED-lamp is a kind of electrically operated light source. The default context would define bindings for “name”, “properties”, “type”, “writeable”, “boolean”, "float" and so forth. You can see examples for how to do this in [section 5.1](http://www.w3.org/TR/json-ld/#the-context) of the JSON-LD specification.

Here is a data model for the light for discussion purposes:

```
{
            "name" : "MyLED",
            "@context" : "http://example.com/domain-semantics",
            "properties": {
                        "on" : {
                                   "type" : "boolean",
                                   "writeable": true
                        },
                        "color_temp" : {
                                   "type" : "uint16",
                                   "writeable" : true
                        },
                        "red": "uint8",
                        "green": "uint8",
                        "blue": "uint8"
            },
            "actions" : {
                        "dim" {
                                    "input" : {
                                                "brightness" : "float",
                                                "time" : "float"
                                    },
                                    "output" : null
                        }
            }
}
```

This has a name "MyLED" for the specific light.  It has two properties that scripts can write to: "on" is a boolean and "color_temp" is the color temperature in Kelvin. Scripts can read but not write the corresponding red, green and blue values as unsigned 8 bit numbers.

There is one action "dim" which changes the brightness over a given number of seconds. This action takes two named parameters. The "brightness" is passed as a 32 bit IEEE floating point number in the range 0.0 to 1.0.  The "time" for the change to complete is specified in seconds as a 32 bit IEEE floating point number. This action returns no data.

This example has no events.

I have kept things simple for now and would expect this to evolve incrementally as we tackle more complex use cases. When a property requires more than the name of a core data type, the idea would be to use a JSON object (associative array) whose properties provide further information, e.g. {“type”:”float”, “min”:0.0, “max”:1.0}.
