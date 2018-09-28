This directory contains tools for converting device models into thing descriptions and vice versa.

* td2tm.js is a converter to generate a device model from a thing description.
* dm2td.js is a converter to convert a device model to a thing description.

Both converters are node.js applications. They are called with:

node td2dm.js {input_file} [-v]

and

node dm2td.js <deviceModel.json> <IoTCSServer> <applicationID> <deviceId> [-v]
Example: node dm2td.js Blue_Pump.json 129.150.200.242 0-AB F68452F4-E498-4A15-BB14-E0DB0E0539DB
