# Thing Data Models in JSON-LD

This is a description of how Thing data models can be defined in JSON-LD and has been implemented by a [NodeJS based server](https://github.com/w3c/web-of-things-framework). Note that further work is needed to specify the data model for results returned by actions, and for metadata on whether a property value is static, or if not, how long its value can be relied on. 

The syntax assumes a JSON-LD context that maps short names to RDF URLs, e.g. to the RDF core datatypes that RDF imports from XML Schema. The default JSON-LD context is assumed, e.g. on the basis of the Media Type used for the model.  Thing descriptions should use @context to import domain specific models. This will be ignored on resource constrained devices, but on more powerful platforms, the domain semantics can be used as a basis for selecting matching services, e.g. during service composition.

Here is an example for discussion purposes:

```
{
            "name" : "MyLED",
            "properties": {
                        on: {
                                   "type" : "boolean",
                                   "writeable": true
                        },
                        "color_temp": {
                                   "type" : "uint16",
                                   "writeable" : true
                        },
                        "red": "uint8",
                        "green": "uint8",
                        "blue": "uint8"
            },
            "actions" : {
                        "dim" {
                                    "brightness" : "float",
                                    "time" : float
                        }
            }
}
```

This has a name "MyLED" for the specific light.  It has two properties that scripts can write to: "on" is a boolean and "color_temp" is the color temperature in Kelvin. Scripts can read but not write the corresponding red, green and blue values as unsigned 8 bit numbers.

There is one action "dim" which changes the brightness over a given number of seconds. This action takes two named parameters. The "brightness" is passed as a 32 bit IEEE floating point number in the range 0.0 to 1.0.  The "time" for the change to complete is specified in seconds as a 32 bit IEEE floating point number.

This action returns no data.

This example has no events.

I have kept things simple for now and would expect this to evolve incrementally as we tackle more complex use cases. When a property requires more than the name of a core data type, the idea would be to use a JSON object (associative array) whose properties provide further information, e.g. {“type”:”float”, “min”:0.0, “max”:1.0}.

Further work is needed on actions. If an action takes a single value, this could be expressed directly. Otherwise a JSON object is needed for the named arguments to pass to the action.  We could reserve the name "returns" to model the data asynchromously returned from an action, but we might want to use a name like "@returns" to avoid the possibility of name clashes with the names of arguments passed to the action.
