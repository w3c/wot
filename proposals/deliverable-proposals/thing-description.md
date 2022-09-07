## Thing Description 2.0

A list of overall topics are written below. These contain multiple work items underneath that should be detailed later.

## Manageable Actions

How do we invoke, update, query, cancel actions and describe this in a generic way.

## Payload Driven Protocols

Some protocols are built on top of the application layer protocols. 
Some are RPC protocols on top of HTTP, some use MQTT topics together with payloads to identify affordances.

## Initial connection driven protocols

Protocols like MQTT and Websockets need a URI for the initial connection. 
However, the resources are not identified by this URI but can be through a feature of the protocol (topics, channels, etc) or through usage of specific payload structures.

## Timeseries

Some edge and cloud services can collect property value changes or event emissions for a certain time.
This data, called timeseries, can be collected by Consumers to display (or use in any other way) the evolution of the affordance data over time.

## Externalizing Security Definitions

See security proposal

## Versioning

Defining how TDs should be versioned, i.e. what does each version number incrementation mean for consumers.

## Normative TD Parsing and Consuming

See https://github.com/w3c/wot/issues/978#issuecomment-965127375
