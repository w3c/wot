## Thing Report

This report details the results of the test bench as of 18:00, Sunday 21.10.2018
These results could have been obtained also during the day.

### Blue Pump.json

Actions do not seem to work.

This applies also to the other Oracle Simulators at this point of time. Michael Lagally is working on to fix this.

### td-illuminance-local.json
It says it will return an array and some values of this array should be const. But these values of the array are returned with a non const value.

### ora-obd-devicemodel

All interactions which are only readable properties work

### td-motion-local.json

cannot get 3300/2 which crashes the test bench

### bacnet-logo-demo.jsonld

Actions time out

### EventSource.jsonld

one testable interaction which works

### Fujitsu WiFi agent

5 interactions which all work

### PanasonicAirConditionerP1

for desired temperature it says number but doesnt accept floats
"Problem setting propertyfunction Error() { [native code] }" as well

After talking with Panasonic we think that it actually expects integers and not numbers like it is specified in the TD

### Siemens CoAP Lamp

CoAP interactions do not work

### OCF 

Unstable behavior. Repeated testing causes different results, mostly resulting in timeouts