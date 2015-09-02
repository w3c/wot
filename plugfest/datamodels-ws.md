# Thing Data Models in JSON-LD

This is a description of how Thing data models can be defined in JSON-LD and has been implemented by a [NodeJS based server](https://github.com/w3c/web-of-things-framework).

Here is an example for discussion purposes:

```
{
            “name” : “MyLED”,
            “properties”: {
                        on: {
                                   “type” : “boolean”,
                                   “writeable”: true
                        },
                        “color_temp”: {
                                   “type” : “uint16”,
                                   “writeable” : true
                        },
                        “red”: “uint8”,
                        “green”: “uint8”,
                        “blue”: “uint8”
            },
            "actions" : {
                        "dim" {
                                    "brightness" : "float",
                                    "min_value" : 0.0,
                                    "max_value" : 1.0,
                                    "time" : float
                        }
            }
}
```

This has a name "MyLED" for the specific light.  It has two properties that scripts can write to: on which is a boolean and color_temp which is the colour temperature in Kelvin. Scripts can read but not write the corresponding red, green and blue values as unsigned 8 bit numbers.

There is one action "dim" which changes the brightness over a given number of seconds.  The brightness is given as a 32 bit IEEE floating point number in the range 0.0 to 1.0.  The delay is specified in seconds as a 32 bit IEEE floating point number.

This action returns no data.

This example has no events.


