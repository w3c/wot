# Exploration of Object models for OIC Resource Types

W3C is differentiated from many other organisations working on the IoT in that a) we focus on the object model exposed to applications rather than the underlying messaging model, and b) that we have the standards and framework for semantic models of services, which are essential for scalable open markets of services.

We need to demonstrate how particular frameworks for messaging can be abstracted with object models. Some of the frameworks we should study include OCF, OPC-UA, Google's Protocol Buffers, Apache Thrift, Hypercat, Thingworx, and so forth. Note that applications will also want to integrate with data and services from the cloud, so we need to study existing frameworks, e.g. JSON  over REST, WSDL and SOAP.

This page is an exploration of how to model the OIC resource types as objects with properties, actions, events and metadata. As you will see below, the OIC 1.1 resources can all be modelled as properties, presumably, because actions and events weren't part of the OIC conceptual framework.

The examples are expressed in a JSON based format that is easily translated into RDF, see the [online demo](https://www.w3.org/WoT/demos/td2ttl/), see also the related demo for [OCF's resources as defined in OIC 1.1](https://www.w3.org/WoT/demos/td2ttl/oic.html).

## Some comments

* Attempts to pass invalid values may in some cases be detectable by the application platform using the metadata in the thing description or linked semantic models. However, in other cases, the error will be detected on the server, and signalled to the application as an error event, which may take an appreciable time to fire.
* In many cases numeric values are restricted to integers, so it is convenient to use the term "integer" rather than "number" plus an annotation for restricting the value to integers.
* Many OCF examples use integer percentage values which could merit a shared definition.
* Many OCF examples use a read-only boolean value which could merit a shared definition.
* min and max metadata could be automatically mapped by an OCF library to range: [min, max].
* Units could be declared in place in a thing description or as part of a linked semantic model. An in place definition is needed when the application and change the units.
* OCF allows models to import property definitions from other models. This is something we could investigate for thing descriptions, but would entail the need for downloading such linked descriptions.
* OIC 1.1 uses the "id" property to uniquely identify an instance of a resource. For the Web of things, this corresponds to the URI for the thing's description.
* The RAML schemas could in principle be generated from the thing descriptions
* The following examples need to be augmented with @context files to link to semantic models.
* The examples are missing the resource URI and a protocol designation that indicates that the server requires use of the OCF protocol suite.

## Acceleration Sensor: /AccelerationResURI
This resource provides a measure of proper acceleration (g force) as opposed to co-ordinate acceleration (which is dependent on the co-ordinate system and the observer). The value is a float which describes the acceleration experienced by the object in 'g'.

```
{
    "comment": "measured acceleration in 'g'",
    "oic_rt": "oic.r.sensor.acceleration",
    "properties": {
        "value": {
            "type": "number",
            "units": "g",
            "writeable": false
        }
    }
}
```
## Activity Count: /ActivityCountResURI
This resource specifies an activity count. The resource can be readonly (oic.if.s interface) in which instance it represents a count. The resource can be readwrite (oic.if.a interface) in which instance it represents a goal or target for a count. The count property is an integer representing either the current count or goal value.

```
{
    "comment": "activity count",
    "oic_rt": "oic.r.sensor.activity.count",
    "properties": {
        "count": "integer"
    }
}
```
## Altimeter: /AltimeterResURI
This resource describes the properties associated with altimeter. Altimeter is a height of the position (metres).

```
{
    "comment": "sensed altitude in metres",
    "oic_rt": "oic.r.altimeter",
    "properties": {
        "alt": {
            "type": "number",
            "units": "metres",
            "min": 0,
            "writeable": false
        }
    }
}
```
## Atmospheric Pressure Sensor: /AtmosphericPressureResURI
This resource provides a measurement of Mean Sea Level Pressure experienced at the measuring point expressed in millibars. The value is float which describes the atmospheric pressure in hPa (hectoPascals). Note that hPa and the also commonly used unit of millibars (mbar) are numerically equivalent.

```
{
    "comment": "atmospheric pressure",
    "oic_rt": "oic.r.sensor.atmosphericpressure",
    "properties": {
        "atmosphericPressure": {
            "type": "integer",
            "units": "millibars"
        }
    }
}
```
## Air Flow: /AirFlowResURI
This resource describes the properties associated with air flow. The direction is the directionality of the air flow if applicable. Direction values are dependent on the capabilities of the unit. The speed is an integer representing the current speed level for the unit. The range is an array of the min,max values for the speed level. Speed and direction are settable, and invalid values results in an error

```
{
    "comment": "air flow direction and speed control",
    "oic_rt": "oic.r.airflow",
    "properties": {
        "direction": "string",
        "speed": {
            "type": "integer",
            "min": 1,
            "max": 7
        }
    }
}
```
The domain for the direction could be defined explicitly as a set of choices as this would make it easier to define mappings to other devices.
## Audio Controls: /AudioResURI
This resource defines basic audio control functions. The volume is an integer containing a percentage [0,100]. A volume of 0 (zero) means no sound produced. A volume of 100 means maximum sound production. The mute control is implemented as a boolean. A mute value of true means that the device is muted (no audio). A mute value of false means that the device is not muted (audio).

```
{
    "comment": "audio volume level and mute status",
    "oic_rt": "oic.r.audio",
    "properties": {
        "volume": {
            "type": "integer",
            "min": 0,
            "max": 100
        },
        "muted": "boolean"
    }
}
```
## Auto Focus: /AudioResURI
This resource describes an auto focus on/off feature (on/off). The value is a boolean. An AutoFocus value of 'true' means that the switch is on. An AutoFocus value of 'false' means that the switch is off. Note that when Pan Tilt Zoom (see 'Pan Tilt Zoom' Resource definition) is used the autofocus works only in the selected area.

```
{
    "comment": "autofocus state (on/off)",
    "oic_rt": "oic.r.autofocus",
    "properties": {
        "autoFocus": "boolean"
    }
}
```
## Automatic Document Feeder: /AutomaticDocumentFeederResURI
This resource describes the state of an automatic document feeder, typically used with a scanner.  The states are read only. The adfStates is an array of the possible operational states. adfProcessing – the OK state, other states are errors or require ‘user attention’. The currentAdfState is the current value of the ADF state on the device.

```
{
    "comment": "status of an automatic document feeder",
    "oic_rt": "oic.r.automaticdocumentfeeder",
    "types": {
        "adfStates": [
            "adfProcessing",
            "adfEmpty",
            "adfJam",
            "adfLoaded",
            "adfMispick",
            "adfHatchOpen",
            "adfDuplexPageTooShort",
            "adfDuplexPageTooLong",
            "adfMultipickDetected",
            "adfInputTrayFailed",
            "adfInputTrayOverloaded"
        ]
    },
    "properties": {
        "currentAdfState": {
            "type": "adfStates",
            "writeable": false
        }
    }
}
```
## Auto White Balance: /AutoWhiteBalanceResURI
This resource describes an auto balance on/off feature (on/off). The value is a boolean. An AutoWhiteBalance value of 'true' means that the switch is on. An AutoWhiteBalance value of 'false' means that the switch is off.

```
{
    "comment": "auto white balance status (on/off)",
    "oic_rt": "oic.r.colour.autowhitebalance",
    "properties": {
        "autoWhiteBalance": "boolean"
    }
}
```
## Battery: /AirFlowControlResURI
This resource describes a battery function. The charge is an integer showing the current battery charge level. The charge is a percentage in the range 0-100. A value of 0 means fully discharged. A value of 100 means fully charged.

```
{
    "comment": "read-only battery level",
    "oic_rt": "oic.r.energy.battery",
    "properties": {
        "charge": {
            "type": "integer",
            "min": 0,
            "max": 100,
            "writeable": false
        }
    }
}
```
## Binary Switch: /BinarySwitchResURI
This resource describes a binary switch (on/off). The value is a boolean. A value of 'true' means that the switch is on. A value of 'false' means that the switch is off.

```
{
    "comment": "binary on/off switch",
    "oic_rt": "oic.r.switch.binary",
    "properties": {
        "value": "boolean"
    }
}
```
## Brightness: /BrightnessResURI
This resource describes the brightness of a light or lamp. brightness is an integer showing the current brightness level as a quantized representation in the range 0-100. A brightness of 0 is the minimum for the resource. A brightness of 100 is the maximum for the resource.

```
{
    "comment": "read/write access to light brightness level",
    "oic_rt": "oic.r.light.brightness",
    "properties": {
        "brightness": {
            "type": "integer",
            "min": 0,
            "max": 100
        }
    }
}
```
## Button Switch: /ButtonResURI
This resource describes the operation of a button style switch. The value is a boolean. A value of 'true' means that the button is being pushed/pressed. A value of 'false' means that the button is not being pushed/pressed.

```
{
    "comment": "indication that a button is being pressed",
    "oic_rt": "oic.r.button",
    "properties": {
        "value": {
            "type": "boolean",
            "writeable": false
        }
    }
}
```
## Carbon Dioxide Sensor: /CarbonDioxideResURI
This resource describes whether carbon dioxide has been sensed or not. The value is a boolean. A value of 'true' means that carbon dioxide has been detected. A value of 'false' means that carbon dioxide has not been detected.

```
{
    "comment": "signals whether carbon dioxide is sensed",
    "oic_rt": "oic.r.sensor.carbondioxide",
    "properties": {
        "value": {
            "type": "boolean",
            "writeable": false
        }
    }
}
```
## Carbon Monoxide Sensor: /CarbonMonoxideResURI
This resource describes whether carbon monoxide has been sensed or not. The value is a boolean. A value of 'true' means that carbon monoxide has been detected. A value of 'false' means that carbon monoxide has not been detected. 

```
{
    "comment": "signals whether carbon monoxide is sensed",
    "oic_rt": "oic.r.sensor.carbonmonoxide",
    "properties": {
        "value": {
            "type": "boolean",
            "writeable": false
        }
    }
}
```
## Clock: /ClockResURI
This resource describes the properties associated with clock and time. Clock is a time information. Datetime is using ISO 8601 datetime format (e.g: "2007-04-05T14:30Z") (Time+Date+Timezone) Countdown is the desired total seconds for countdown.

```
{
    "comment": "clock and countdown timer",
    "oic_rt": "oic.r.clock",
    "properties": {
        "datetime": "dateTime",
        "countdown": {
            "type": "number",
            "units": "seconds",
            "min": 0,
            "optional": true
        }
    }
}
```
## Colour Chroma: /ColourChromaResURI
This resource describes the colour using chroma conventions. Properties are hue, saturation, csc, and ct. Hue and saturation are integer values as defined by the CIECAM02 model definition (see reference [CIE CIE159:2004]). csc is the colour space coordinates in CIE colour space. The first item in the array is the X coordinate. The second item in the array is the Y coordinate. ct is the Mired colour temperature.

```
{
    "comment": "read/write colour chroma property",
    "oic_rt": "oic.r.colour.chroma",
    "properties": {
        "hue": "integer",
        "saturation": "integer",
        "csc": {
            "properties": {
                "x": "number",
                "y": "number"
            }
        },
        "ct": "integer"
    }
}
```
Note that the colour chroma and brightness can be defined as sub-properties if needed.
## Colour RGB: /ColourRGBResURI
This resource specifies the actual colour in the RGB space represented as an array of integers. Each colour value is described with a Red, Green, Blue component. These colour values are encoded as an array of integer values ([R,G,B]). The minimum and maximum colour value per component is described by the range array. When the range value is omitted, then the range is [0,255].

```
{
    "comment": "RGB colour property",
    "oic_rt": "oic.r.colour.rgb",
    "properties": {
        "red": {
            "type": "integer",
            "min": 0,
            "max": 255
        },
        "green": {
            "type": "integer",
            "min": 0,
            "max": 255
        },
        "blue": {
            "type": "integer",
            "min": 0,
            "max": 255
        }
    }
}
```
This is a little redundant as the range of the red, green and blue values is the same. An alternative to the above is to define a named type and apply it to red, green and blue.
## Colour Saturation: /ColourSaturationResURI
This resource describes a Colour saturation value. The value is an integer. A coloursaturation has a range of [0,100]. A coloursaturation value of 0 means producing black and white images. A coloursaturation value of 50 means producing device specific normal colour images. A coloursaturation value of 100 means producing device very full colour images.

```
{
    "comment": "colour saturation as a percentage",
    "oic_rt": "oic.r.colour.saturation",
    "properties": {
        "coloursaturation": {
            "type": "integer",
            "min": 0,
            "max": 100
        }
    }
}
```
## Colour Control: /ColourControlResURI
This is a hypothetical control inspired by Michael Koster's slides and features the means to define a resource as a composite of other resources.

```
{
    "comment": "smart lighting control",
    "import": "rampTime",
    "properties": {
        "brightness": {
            "type": "integer",
            "min": 0,
            "max": 100
        }
    }
}
```
The import annotation provides a relative or absolute URI for another thing description. It has the effect of forming the union of the properties, actions and events defined in the linked models. There are restrictions for this to make sense, e.g. it shouldn't be permissible to attach an action to a property or an event.
## Contact Sensor: /ContactResURI
This resource describes whether a contact sensor has been tripped or not. Typical use case is in Security Systems detecting window or door open. The value is a boolean. A value of 'true' means that contact has been broken (open). A value of 'false' means that contact is in place (closed).

```
{
    "comment": "signals state of contact sensor (open/closed)",
    "oic_rt": "oic.r.sensor.contact",
    "properties": {
        "value": {
            "type": "boolean",
            "writeable": false
        }
    }
}
```
## Demand Response Load Control: /DRLCResURI
This resource describes any to be applied or currently being applied DRLC signal. The DRType is the ApplianceLoadReductionType defined in Zigbee/HA Smart Energy Profile 2.0. Start is a string containing an ISO8601 encoded start time. The duration value is in minutes. Override indicates whether the consumer has overridden the request (true) or not (false).

```
{
    "comment": "Demand Response Load Control",
    "oic_rt": "oic.r.energy.drlc",
    "properties": {
        "DRType": "integer",
        "start": "dateTime",
        "duration": {
            "type": "integer",
            "units": "minutes"
        },
        "override": "boolean"
    }
}
```
## Dimming: /DimmingResURI
This resource describes a dimming function. The value is an integer showing the current dimming level. The step is the increment between dimmer values. The range is the maximum and minimum values for the dimming value. If the range is omitted [0,100] is assumed. A value of 0 means total dimming; a value of 100 means no dimming.

```
{
    "comment": "dimmer control with current level and step between values",
    "oic_rt": "oic.r.light.dimming",
    "properties": {
        "setting": {
            "type": "integer",
            "min": 0,
            "max": 100
        },
        "step": "integer"
    }
}
```
## Door: /DoorResURI
This resource describes a door. A door is modelled by means of openState (Open/Closed), openDuration (ISO 8601 Time), and openAlarm (boolean). For openState, the value 'Open' indicates the door is open. The value 'Closed' indicates the door is closed. The type of openDuration is an ISO 8601 Time encoded string. The openAlarm value 'true' indicates that the open alarm is active. The openAlarm value 'false' indicates that open alarm is not active.

```
{
    "comment": "door with open/closed state and alarm",
    "oic_rt": "oic.r.door",
    "properties": {
        "openState": "boolean",
        "openDuration": "duration",
        "openAlarm": "boolean"
    }
}
```
Ideally, the model would include events for when the door opens and closes, but that isn't something I would expect a generic OCF library to be able to support.
## Energy Consumption: /EnergyConsumptionResURI
This resource describes the energy consumed by the device since power up (the energy value is in Watt Hours [Wh]) and the instantaneous power draw of the device (the power value is in Watts [W]) at the time the resource was queried. The power value is in Watts [W]. The energy value is in Watt Hours [Wh].

```
{
    "comment": "current power drain and energy consumed since power up",
    "oic_rt": "oic.r.energy.consumption",
    "properties": {
        "power": {
            "type": "number",
            "units": "Watts",
            "writeable": false
        },
        "energy": {
            "type": "number",
            "units": "Watt Hours",
            "writeable": false
        }
    }
}
```
## Energy Overload/Circuit Breaker: /EnergyOverloadResURI
This resource describes whether an energy overload detector/circuit breaker is currently tripped. The value is a boolean. A value of 'true' means that energy overload has been tripped. A value of 'false' means that energy overload has not been tripped.

```
{
    "comment": "whether a circuit breaker has been tripped",
    "oic_rt": "oic.r.energy.overload",
    "properties": {
        "value": {
            "type": "boolean",
            "writeable": false
        }
    }
}
```
## Energy Usage: /EnergyUsageResURI
This resource describes an energy usage query. The resource is a composite resource being made up as a collection of: TimePeriod Resource EnergyConsumption Resource

```
{
    "comment": "energy usage query",
    "oic_rt": "oic.r.energy.usage",
    "properties": {
        "resources": {
            "writeable": false,
            "properties": {
                "href": "string",
                "rel": "string",
                "rt": {
                    "type": "string",
                    "collection": "ordered"
                },
                "if": {
                    "type": "string",
                    "collection": "ordered"
                }
            },
            "collection": "unordered"
        }
    }
}
```
Note this is very OCF specific in its use of OCF resource types and interfaces
## Generic Sensor: /GenericSensorResURI
This resource describes whether some value or property or entity has been sensed or not. The value is a boolean. A value of 'true' means that the target has been sensed. A value of 'false' means that the target has not been sensed.

```
{
    "comment": "whether the target has been sensed",
    "oic_rt": "oic.r.sensor",
    "properties": {
        "value": {
            "type": "boolean",
            "writeable": false
        }
    }
}
```
## Geolocation: /GeolocationResURI
This resource describes the properties associated with the current geolocation coordinate. Geolocation is a geolocation coordinate data. latitude is a device's current Latitude coordinate (degrees). longitude is a device's current Longitude. coordinate (degrees). altitude is a device's current altitude position (metres). Accuracy is the accuracy level of the latitude and longitude coordinates (metres). altitudeAccuracy is the accuracy level of the altitude coordinates (metres). heading is a direction of travel of device (degree). speed is a device's current velocity (metres per second)

```
{
    "comment": "geolocation with latitude, longitude, altitude and accuracy",
    "oic_rt": "oic.r.sensor.geolocation",
    "properties": {
        "latitude": {
            "type": "number",
            "writeable": false
        },
        "longitude": {
            "type": "number",
            "writeable": false
        },
        "accuracy": {
            "comment": "accuracy in metres of latitude and longitude measurement",
            "type": "number",
            "min": 0,
            "writeable": false,
            "optional": true
        },
        "alt": {
            "type": "number",
            "units": "metres",
            "min": 0,
            "writeable": false
        },
        "altitudeAccuracy": {
            "comment": "accuracy in metres of altitude measurement",
            "type": "number",
            "min": 0,
            "writeable": false,
            "optional": true
        },
        "heading": {
            "type": "number",
            "min": 0,
            "max": 360,
            "units": "degrees",
            "optional": true
        },
        "speed": {
            "type": "number",
            "min": 0,
            "writeable": false,
            "optional": true
        }
    }
}
```
Note that the OCF schema references the altimeter schema rather than embedding the alt property directly. We could provide a similar mechanism for importing a definition, but that might have a performance penalty on constrained devices.
## Glass Break Sensor: /GlassBreakResURI
This resource describes a glass break sensor. The value is a boolean. A value of 'true' means that glass break has been sensed. A value of 'false' means that glass break not been sensed.

```
{
    "comment": "whether the glass has been broken",
    "oic_rt": "oic.r.sensor.glassbreak",
    "properties": {
        "value": {
            "type": "boolean",
            "writeable": false
        }
    }
}
```
## Heart Rate Zone: /HeartRateZoneResURI
This resource describes a measured heart rate by the current Zone using the Zoladz method The Zoladz method defines Zones based on maximum heart rate; Zone 1 is the lowest, Zone 5 is the highest. The heartRateZone is an enumeration containing one of: "Zone1", "Zone2", "Zone3", "Zone4", "Zone5".

```
{
    "comment": "Zoladz heart rate zone",
    "oic_rt": "oic.r.sensor.heart.zone",
    "properties": {
        "heartRateZone": [
            "Zone1",
            "Zone2",
            "Zone3",
            "Zone4",
            "Zone5"
        ]
    }
}
```
## Height: /HeightResURI
This resource describes the properties associated with height of an object. Height (height) is height of an object.

```
{
    "comment": "the height of an object",
    "oic_rt": "oic.r.height",
    "properties": {
        "height": {
            "type": "number",
            "min": 0
        }
    }
}
```
## Humidity: /HumidityResURI
This resource describes a sensed or desired humidity. The value humidity is an integer describing the percentage measured relative humidity. The value desiredHumidity is an integer showing the desired target relative humidity.

```
{
    "comment": "read/write percentage humidity level",
    "oic_rt": "oic.r.humidity",
    "properties": {
        "value": {
            "type": "integer",
            "min": 0,
            "max": 100
        },
        "desired": {
            "type": "integer",
            "min": 0,
            "max": 100
        }
    }
}
```
## Ice Maker: /IceMakerResURI
This resource describes an Ice Maker. The status is a string containing a value from the set of possible ice maker statuses. The possible statuses are defined by the enumeration [on, off, full] A status of 'on' means that the Ice Maker is operating. A status of 'off' means that the Ice Maker is not operating. A status of 'full' means that the ice collection bin is full (Ice Maker is operating).

```
{
    "comment": "ice maker",
    "oic_rt": "oic.r.icemaker",
    "properties": {
        "status": [
            "on",
            "off",
            "full"
        ]
    }
}
```
## Illuminance Sensor: /IlluminanceSensorResURI
This resource describes an illuminance sensor. Illuminance is a float and represents the sensed luminous flux per unit area in lux.

```
{
    "comment": "luminous flux per unit area in lux",
    "oic_rt": "oic.r.sensor.illuminance",
    "properties": {
        "illuminance": {
            "type": "number",
            "units": "lux",
            "writeable": false
        }
    }
}
```
## Lock: /LockStatusResURI
Resource describing a lock. For the type of lockState, the value 'Locked' indicates that the door is Locked. The value 'Unlocked' indicates that the door is Unlocked.

```
{
    "comment": "property denoting whether a door is locked or unlocked",
    "oic_rt": "oic.r.lock.status",
    "properties": {
        "lockState": [
            "Locked",
            "Unlocked"
        ]
    }
}
```
Why did OCF define this with a enumeration rather than a boolean?
## Lock Code: /LockCodeResURI
Resource describing a lock code. The lockCodeList is an array of possible codes that may be associated with a lock. These are all presented as strings.

```
{
    "comment": "set of codes for opening a lock",
    "oic_rt": "oic.r.lock.code",
    "properties": {
        "lockCodeList": "string",
        "collection": "unordered"
    }
}
```
## Magnetic Field Direction Sensor: /MagneticFieldDirectionResURI
This resource describes the direction of the Earth’s magnetic field at the observer's current point in space. Typical use case includes measurement of compass readings on a personal device. The value is an array containing Hx, Hy, Hz (in that order) each of which are floats. Each of Hx, Hy and Hz are expressed in A/m (Amperes per metre) 

```
{
    "comment": "Direction of magnetic field [Hx,Hy,Hz]",
    "oic_rt": "oic.r.sensor.magneticfielddirection",
    "properties": {
        "value": {
            "type": "number",
            "collection": "ordered",
            "length": 3,
            "units": "Amperes per metre",
            "writeable": false
        }
    }
}
```
It would be nicer if the Hx, Hy and Hz values were broken out as named properties rather than using an array, but that would require richer metadata to automatically translate to the OCF array representation.
## Media: /MediaResURI
This resource specifies the media that an OIC Server (Camera) supports. The resource is an array of media elements. Each element contains: A URL at which the specified media type can be accessed. A string array containing the definition of the media using SDP. Each entry in the sdp array is an SDP line. Each line shall follow the SDP description syntax as defined in the SDP specification. The SDP specification can be found at http://tools.ietf.org/html/rfc4566. The mime subtype video/H264 indicates video resource and the mime subtype video/jpeg indicates still image resource.

```
{
    "comment": "RFC4566 list of media supported by the device",
    "oic_rt": "oic.r.media",
    "properties": {
        "media": {
            "properties": {
                "url": "string",
                "sdp": {
                    "type": "string",
                    "collection": "ordered"
                }
            },
            "collection": "unordered",
            "writeable": false
        }
    }
}
```
URLs occur sufficiently frequently, that the W3C could bind this as part of the default vocabulary to the corresponding RFC as a constraint on the string value, and its meaning.
## Media Source Input: /mediaSourceInputResURI
This resource provides the list of input media sources available on the device. The sources are an array of mediaSource(s) as separately defined.

```
{
    "comment": "list of media sources on the device",
    "oic_rt": "oic.r.media.input",
    "properties": {
        "sources": {
            "properties": {
                "sourceName": "string",
                "sourceNumber": {
                    "type": "integer",
                    "writeable": false,
                    "optional": true
                },
                "sourceType": {
                    "choices": [
                        "audioOnly",
                        "videoOnly",
                        "audioPlusVideo"
                    ],
                    "writeable": false,
                    "optional": true
                },
                "status": "boolean"
            },
            "collection": "unordered"
        }
    }
}
```
By default things are writable unless this is overridden.
## Media Source Output: /mediaSourceOutputResURI
This resource provides the list of output media sources available on the device. The sources are an array of mediaSource(s) as separately defined.

```
{
    "comment": "list of media source outputs on the device",
    "oic_rt": "oic.r.media.output",
    "properties": {
        "sources": {
            "properties": {
                "sourceName": "string",
                "sourceNumber": {
                    "type": "integer",
                    "writable": false,
                    "optional": true
                },
                "sourceType": {
                    "choices": [
                        "audioOnly",
                        "videoOnly",
                        "audioPlusVideo"
                    ],
                    "writeable": false,
                    "optional": true
                },
                "status": "boolean"
            },
            "collection": "unordered"
        }
    }
}
```
## Mode: /ModeResURI
This resource describes the modes of operation that a device can provide. The mode can be read or set. The supportedModes is an array of possible modes the device supports. The modes are an array of the currently active mode(s).

```
{
    "comment": "list of modes supported by a device",
    "properties": {
        "supportedModes": {
            "comment": "Array of modes that the device supports",
            "type": "string",
            "collection": "unordered",
            "writeable": false
        },
        "modes": {
            "comment": "Array of the currently active modes",
            "type": "string",
            "collection": "unordered"
        }
    }
}
```
## Movement: /MovementResURI
This resource specifies linear movement. The movementSettings is an array of strings containing possible movement values (e.g. spin, stop, left, right). The movement is the currently selected movement value. The movementModifier is a modifier to the movement value (e.g. spin-90, left+20), units are device dependent.

```
{
    "comment": "linear movement of some object",
    "oic_rt": "oic.r.movement.linear",
    "properties": {
        "movementSettings": {
            "type": "string",
            "collection": "ordered"
        },
        "movement": "string",
        "movementModifier": {
            "type": "string",
            "optional": true
        }
    }
}
```
## Motion Sensor: /MotionResURI
This resource describes whether motion has been sensed or not. The value is a boolean. A value of 'true' means that motion has been sensed. A value of 'false' means that motion not been sensed.

```
{
    "comment": "whether motion has been sensed",
    "oic_rt": "oic.r.sensor.motion",
    "properties": {
        "value": {
            "type": "boolean",
            "writeable": false
        }
    }
}
```
## Night Mode: /NightModeResURI
This resource describes a night mode on/off feature (on/off). A nightMode value of 'true' means that the feature is on. A nightMode value of 'false' means that the feature is off.

```
{
    "comment": "night mode switch",
    "oic_rt": "oic.r.nightmode",
    "properties": {
        "value": "boolean"
    }
}
```
## Open Level: /OpenLevelResURI
This resource describes how open or ajar an entity such as a window, door, blind or shutter is. The openLevel can be read (acting as a sensor). The openLevel can also be set (acting as an actuator). The openLevel is device dependent across the range provided. If no range is provided then 0 to 100 is assumed. 0 means closed, 100 means fully open. If a range is provided the lower bound=closed, upper bound=open. The increment is the step between possible values; if not provide 1 is assumed.

```
{
    "comment": "property demoting how open a window, door, shutter, etc. is",
    "oic_rt": "oic.r.openlevel",
    "properties": {
        "openLevel": {
            "type": "integer",
            "min": 0,
            "max": 100
        },
        "increment": "integer"
    }
}
```
Note: The Web of things should provide a means for updating metadata. This allows the min and max values for the range to be overridden as appropriate.
## Operational State: /OperationalStateResURI
This resource describes the operational and job states on a device. The states can be read or set, setting indicates a desired state. A device may reject an attempt to set a state that would result in adverse operational characteristics. The machineStates is an array of the possible operational states. The currentMachineState is the current state of operation of the device. The jobStates is an array of the possible job states. The currentJobState is the currently active jobState. The runningTime is the ISO8601 encoded elapsed time in the current operational state. The remainingTime is the ISO8601 encoded time till completion of the current operational state. The progressPercentage is the percentage completeness of the current jobState.

```
{
    "comment": "property for a device's operational and job status",
    "oic_rt": "oic.r.operational.state",
    "types": {
        "machineStates": [
            "pause",
            "stopped",
            "idle",
            "active"
        ],
        "jobStates": [
            "preWash",
            "wash",
            "rinse",
            "spin",
            "dry",
            "airDry",
            "wrinklePrevent"
        ],
        "percentage": {
            "type": "integer",
            "min": 0,
            "max": 100
        }
    },
    "properties": {
        "currentMachineState": "machineStates",
        "currentJobState": "jobStates",
        "runningTime": "duration",
        "remainingTime": "duration",
        "progressPercentage": "percentage"
    }
}
```
## Pan Tilt Zoom Movement: /PanTiltZoomResURI
This resource specifies the pan tilt and zoom capabilities of a device. The resource rt is dynamic and reflects whether the values apply to physical movement of the device or digital/virtual enhancements to the image. For physical movement the rt is 'oic.r.movement.ptz'. For digital/virtual image enhancements the rt is 'oic.r.image.ptz'. The Pan and Tilt are specified in degrees. The Zoom Factor is a value in the range 1-100 for linear (optical) zoom. The Zoom Factor is a value in the range [1x, 2x, 4x, 8x, 16x, 32x] for digital zoom. If there is no zoom value to set the Zoom Factor shall be '1x'. The value 0 degrees means neutral, this is the vendor defined setting. Note that this resource also can be used to create an offset for physical movement. When that is the case, the rt value is: oic.r.movement.offset.ptz Note that this resource also can be used to create an offset for image movement. When that is the case, the rt value is: oic.r.image.offset.ptz When the pan_range value is omitted, then the range is [-180.0,180.0]. If pan is not supported then the range shall be [0.0,0.0] When the tilt_range value is omitted, then the range is [- 180.0,180.0]. If tilt is not supported then the range shall be [0.0,0.0]

```
{
    "comment": "pan tilt and zoom capabilities of a device",
    "oic_rt": "oic.r.ptz",
    "properties": {
        "pan": {
            "type": "number",
            "units": "degrees"
        },
        "tilt": {
            "type": "number",
            "units": "degrees"
        },
        "pan_range": {
            "comment": "Min and Max values for the pan setting",
            "type": "number",
            "collection": "ordered",
            "length": 2,
            "writeable": false,
            "optional": true
        },
        "tilt_range": {
            "comment": "Min and Max values for the tilt setting",
            "type": "number",
            "collection": "ordered",
            "length": 2,
            "writeable": false,
            "optional": true
        },
        "zoomFactor": "string",
        "zoomRange": {
            "choices": [
                "linear, 1x, 2x, 4x, 8x, 16x, 32x"
            ],
            "writeable": false
        }
    }
}
```
## Presence Sensor: /PresenceResURI
This resource describes whether presence has been sensed or not. The value is a boolean. A value of 'true' means that presence has been sensed. A value of 'false' means that presence not been sensed.

```
{
    "comment": "whether presence is sensed",
    "oic_rt": "oic.r.sensor.presence",
    "properties": {
        "value": {
            "type": "boolean",
            "writeable": false
        }
    }
}
```
## Ramp Time: /RampTimeResURI
This resource that describes the Ramp Time of a dimming function. This specifies the actual speed of changing between 2 dimming values. Time is specified in milliseconds [ms]. If the range value is not specified then the maximum value is 100 ms. The RampTime of 0ms indicates the minimal delay possible by the implementation.

```
{
    "comment": "ramp time for dimming function",
    "oic_rt": "oic.r.light.ramptime",
    "properties": {
        "rampTime": {
            "type": "integer",
            "min": 0,
            "max": 100,
            "units": "milliseconds"
        }
    }
}
```
## Refrigeration: /RefrigerationResURI
This resource describes a refrigeration function. This is not a Refrigerator device. The filter state is a read-only value providing the percentage life time remaining for the water filter. RapidFreeze is a boolean that controls the rapid freeze capability if present. RapidCool is a boolean that controls the rapid cool capability if present. Defrost is a boolean that controls the defrost cycle if present.

```
{
    "comment": "Refrigerator status and control",
    "oic_rt": "oic.r.refrigeration",
    "properties": {
        "filter": {
            "type": "integer",
            "min": 0,
            "max": 100
        },
        "rapidFreeze": "boolean",
        "rapidCool": "boolean",
        "defrost": "boolean"
    }
}
```
## Signal Strength: /SignalStrengthResURI
This resource describes the strength of a signal by means of lqi and rssi. The lqi is a floating point number that represents Link Quality Indicator. The rssi is a floating point number that represents the received signal strength indicator.

```
{
    "comment": "received signal quality and strength",
    "oic_rt": "oic.r.signalstrength",
    "properties": {
        "lqi": {
            "comment": "received signal quality",
            "type": "number",
            "writeable": false
        },
        "rssi": {
            "comment": "received signal strength",
            "type": "number",
            "writeable": false
        }
    }
}
```
## Sleep Sensor: /SleepSensorResURI
This resource describes whether sleep has been sensed or not. The value is a boolean. A value of 'true' means that sleep has been sensed. A value of 'false' means that sleep not been sensed.

```
{
    "comment": "whether sleep has been sensed",
    "oic_rt": "oic.r.sensor.sleep",
    "properties": {
        "value": {
            "type": "boolean",
            "writeable": false
        }
    }
}
```
## Smoke Sensor: /SmokeSensorResURI
This resource describes whether smoke has been sensed or not. The value is a boolean. A value of 'true' means that smoke has been sensed. A value of 'false' means that smoke not been sensed.

```
{
    "comment": "whether smoke has been sensed",
    "oic_rt": "oic.r.sensor.smoke",
    "properties": {
        "value": {
            "type": "boolean",
            "writeable": false
        }
    }
}
```
## Speech Synthesis: /SpeechTTSResURI
This resource may be created on the OIC Server that is capable of rendering speech by an OIC Client or may be created on the OIC Server by some resident application. The audio rendered is at this stage local to the Server (i.e. not streamed). The utterance is an SSML document. The supportedLanguages is an array of the RFC 5646 defined language tags that are supported. The supportedVoices is an SSML document fragment indicating the voices that are supported.

```
{
    "comment": "speech synthesiser using SSML",
    "oic_rt": "oic.r.speech.tts",
    "properties": {
        "utterance": "string",
        "supportedLanguages": {
            "type": "string",
            "collection": "ordered",
            "writeable": false,
            "optional": true
        },
        "supportedVoices": {
            "type": "string",
            "writeable": false,
            "optional": true
        }
    }
}
```
## Temperature: /TemperatureResURI
This resource describes a sensed or actuated Temperature value. The temperature describes the current value measured. The units is a single value that is one of C, F or K. It provides the unit of measurement for the temperature value. It is a read-only value that is provided by the server. If the units Property is missing the default is Celsius [C]. The range is an array with min,max values for this temperature on this device. If no range is provided the default is +/- MAXINT.

```
{
    "comment": "sensed or actuated temperature",
    "oic_rt": "oic.r.temperature",
    "properties": {
        "temperature": {
            "type": "number",
            "units": [
                "celsius",
                "fahrenheit",
                "kelvin"
            ],
            "min": {
                "type": "number",
                "writeable": false
            },
            "max": {
                "type": "number",
                "writeable": false
            }
        }
    }
}
```
## Three Axis Sensor: /ThreeAxisResURI
This resource provides a representation of the measurement from a three-axis sensor. The orientation is an array of numbers representing x-plane, y-plane and z-plane values. The unit of measurement for each pane is 'g'.

```
{
    "comment": "sensor measurement along x, y and z axes",
    "oic_rt": "oic.r.sensor.threeaxis",
    "properties": {
        "orientation": {
            "type": "number",
            "collection": "ordered",
            "length": 3,
            "writeable": false
        }
    }
}
```
Note the introduction is misleading. The unit of measurement suggests this is an accelerometer rather than a generic three axis sensor! It would be nicer if this this used explicit x, y and z properties rather than an array.
## Time Period: /TimePeriodResURI
This resource describes the time period over which any additionally provided information is derived or bounded. The start and stop times are ISO8601 encoded strings.

```
{
    "comment": "time period with start and stop times",
    "oic_rt": "oic.r.time.period",
    "properties": {
        "startTime": "dateTime",
        "stopTime": "dateTime"
    }
}
```
## Touch Sensor: /TouchResURI
This resource describes whether touch has been sensed or not. The value is a boolean. A value of 'true' means that touch has been sensed. A value of 'false' means that touch not been sensed.

```
{
    "comment": "whether a touch has been sensed",
    "oic_rt": "oic.r.sensor.touch",
    "properties": {
        "value": {
            "type": "boolean",
            "writeable": false
        }
    }
}
```
## UV Radiation: /UVRadiationResURI
This resource specifies UV radiation measurement. The measurement is the current measured UV Index

```
{
    "comment": "measured UV radiation index",
    "oic_rt": "oic.r.sensor.radiation.uv",
    "properties": {
        "measurement": {
            "type": "number",
            "writeable": false
        }
    }
}
```
## Water Sensor: /WaterResURI
This resource describes whether water has been sensed or not. The value is a boolean. A value of 'true' means that water has been sensed. A value of 'false' means that water not been sensed.

```
{
    "comment": "whether water has been sensed",
    "oic_rt": "oic.r.sensor.water",
    "properties": {
        "value": {
            "type": "boolean",
            "writeable": false
        }
    }
}
```
## Weight: /WeightResURI
This resource describes the properties associated with height of an object. Height (height) is height of an object.

```
{
    "comment": "the weight of an object",
    "oic_rt": "oic.r.weight",
    "properties": {
        "weight": {
            "type": "number",
            "min": 0
        }
    }
}
```
