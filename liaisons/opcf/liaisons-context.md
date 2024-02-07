# Organization Name
OPC Foundation (https://opcfoundation.org/)

## Purpose 
OPC UA from OPCF is one of the prominent automation standards for device communication in manufacturing.
To describe OPC UA-based devices with a W3C WoT Thing Description, specific metadata is required. This metadata provides 
information that enables the connection to an OPC UA device/server and indicates how to retrieve specific OPC UA data and/or 
functions from the device.

The usage of those specific metadata in the WoT Thing Description should be described in an 'OPC UA Binding' (W3C Note) document, 
similar to what exists, e.g., for Modbus.

## Participants
Who is involved and what is their role?
* members from OPCF and/or WoT Connectivity WG (e.g., for OPC UA metadata support) 
* members from W3C WoT (applying OPC UA metadata to WoT Thing Description)

## Scope 
The primary aim is to collaboratively define the aforementioned 'OPC UA Binding' document, which can be utilized to create the Thing Description for a device/server with an OPC UA interface. Doing this, OPC UA-specific metadata are required, which either need to be formally selected (e.g, for node addressing like with nodeId or extendedNodeId), or newly defined within an OPC UA-specific namespace (e.g., for security purposes). In addition, a strategy will be provided how Thing Descriptions can be generated automatically using OPC UA mechanisms, such as those from UA nodesets or UA browsing mechanisms.

To work together on this document, we need expertise from both SDOs in the following areas:

OPCF: 
* selecting, and if necessary, defining new OPC UA Binding metadata for communication and security definitions (note: namespace already exists for UA data modeling)
* guideline to transform UA nodeset to Thing Description (and vice versa) or UA browsing to Thing Description

WoT:
* Provide formal approach how Thing Description forms (the part of the Thing Description that provide concrete connection information, including URLs and protocol methods) should be designed for UA based endpoints based on OPC UA Binding metadata (similar with, e.g., Modbus)
*  organize PlugFest and design scenarios to evaluate working assumptions

## Deliverables 
What deliverables are being created by which organization, if any?
* joint OPC UA Binding for Web of Things document (as Note Document at the W3C / as Companion Specification at the OPCF)
* if needed, OPC UA companion specification defines OPC UA Binding metadata (alternatively, this can be part of the new OPC UA Web-of-Things Connectivity WG)

## Dependencies
What depends on what?
### WoT Dependencies on Organization's Deliverables: 
* OPC UA companion specification defines OPC UA Binding Metadata
### Organization's Dependencies on WoT's Deliverables: 
* none

## Schedule
New charter for WoT 2.0
