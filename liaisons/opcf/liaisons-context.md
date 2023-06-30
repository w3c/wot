# Organization Name
OPC Foundation (https://opcfoundation.org/)

## Purpose 
OPC UA from OPCF is one of the prominent automation standards for device communication in manufacturing.
To describe OPC UA-based devices with a W3C WoT Thing Description, specific metadata is required. This metadata provides 
information that enables the connection to an OPC UA device/server and indicates how to retrieve specific OPC UA data and/or 
functions from the device.

The usage of those specific metadata in the WoT Thing Description should be described in an 'OPC UA Binding' W3C Note document, 
similar to what exists, e.g., for Modbus.

## Participants
Who is involved and what is their role?
* members from OPCF and/or WoT Connectivity WG (e.g., for OPC UA metadata support) 
* members from W3C WoT (applying OPC UA metadata to WoT Thing Description)

## Scope 
OPCF: 
* defines OPC UA Binding metadata for communication and security definition (namespace already exists for UA data
modeling)
* Optional: guideline to transform UA NodesetFile to Thing Description (and vice versa)

WoT:
* Provide formal approach how TD forms should be designed for UA based endpoints
based on OPC UA Binding Ontology (similar with, e.g., HTTP)
*  organize PlugFest and design scenarios to evaluate working assumptions

## Deliverables 
What deliverables are being created by which organization, if any?
* W3C Note OPC UA Binding for Web of Things
* OPC UA companion specification defines OPC UA Binding Metadata

## Dependencies
What depends on what?
### WoT Dependencies on Organization's Deliverables: 
* OPC UA companion specification defines OPC UA Binding Metadata
### Organization's Dependencies on WoT's Deliverables: 
* none

## Schedule
New charter for WoT 2.0
