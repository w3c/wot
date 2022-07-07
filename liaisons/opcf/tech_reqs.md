# Technical Requirements for OPC UA/WoT Collaboration

## Use Cases
See https://w3c.github.io/wot-usecases/#use-case-opc-ua-binding

## Objectives
1. Use OPC UA servers (device, node) from WoT Consumers; treat an OPC UA server as a Thing
2. Express metadata for OPC UA servers using WoT TDs
3. ? Let OPC UA servers connect to WoT Things

### Notes:
* WoT TDs use RDF, typically serialized as JSON-LD, so Objective 2 includes support for semantic annotations and extensions, 
  which can be done either by annotations such as `@type` or by introducing new vocabulary via a context extension.
* Metadata for OPC UA servers will be expressed as WoT TDs, and WoT TDs can be distributed via
  WoT Discovery, so Objective 2 also implies that OPC UA devices can be discovered via WoT Discovery.
* If OPC UA devices are ALSO WoT Consumers, Objective 1 would satisfy Objective 3, resulting in "OPC UA Servients".
  However, as this depends on the ability of OPC UA devices to read and parse WoT TDs, and there will be smaller
  or brownfield devices that would not be capable of this, at best Objective 3 would only be satisfied by
  a subset of OPC UA devices.

## Deliverables
1. OPC UA Ontology
   - Defines information model and vocabulary for relevant OPC UA definitions and protocol options used in UA NodesetFile
   - RDF/TTL/JSONLD Context file and URL, suitable for use in JSON-LD and RDF
   - Note: useful for activites other than 2
2. WoT TD Protocol Binding for OPC UA Nodesets
   - Depends on 1 (TDs with this protocol binding would include the OPC UA ontology defined in 1)
3. Process to transform a OPC UA NodesetFile to a WoT Thing Description (and vice versa, if TD describes OPC UA Nodeset)
   - May have to infer or convert certain aspects to do conversion
   - May have to gather information from places other than NodesetFile
   - OPC UA TD Producer/Generator; possibly also a "service"
