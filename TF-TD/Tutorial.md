# About this Tutorial
This tutorial explains and how to use the Thing Description (TD) and its minimal vocabulary set. As example, an LED lamp will be modeled with the TD using the JSON-LD format. 

## Basics about Thing Description
The TD is mainly based on the entities Metadata, Data, and the 3 interaction models Property, Action, and Event. 

# Metadata 

Metadata is used to provide some generic information which may not that relevant at runtime. There are 3 mandatory vocabularies defined within the Metadata:

* Name: Name of the Thing
* Protocol: Which kind of protocols is supported (e.g., HTTP, CoAP, XMPP, etc,)
* Encoding: Which kind of serialization format is supported (e.g., JSON, XML, etc.)

Note: Besides of this 3 defined vocabularies additional characteristics can be defined such as product id, firmware version, location, etc..
