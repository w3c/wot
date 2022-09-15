# Technical Requirements for OPC UA/WoT Collaboration

## Use Cases
See https://w3c.github.io/wot-usecases/#use-case-opc-ua-binding

## Objectives
1. Use OPC UA servers (device, node) from WoT Consumers; treat an OPC UA server as a Thing
2. Express metadata for OPC UA servers using WoT TDs

### Notes
* WoT TDs use RDF, typically serialized as JSON-LD, so Objective 2 includes support for semantic annotations and extensions, 
  which can be done either by annotations such as `@type` or by introducing new vocabulary via a context extension.
* Metadata for OPC UA servers will be expressed as WoT TDs, and WoT TDs can be distributed via
  WoT Discovery, so Objective 2 also implies that OPC UA devices can be discovered via WoT Discovery.
* Ideally metadata for OPC UA servers (that is, generation of WoT TDs) should be an automatic process,
  meaning there should be a formal definition of the mapping from the relevant parts of the
  OPC UA information model to the WoT TD model.
  
## Non-Objectives
1. Letting OPC UA servers connect to WoT Things

### Notes 
* If OPC UA devices are also WoT Consumers, Objective 1 would satisfy Non-Objective 1, resulting in "OPC UA Servients".
  However, as this depends on the ability of OPC UA devices to read and parse WoT TDs, and there will be smaller
  or brownfield devices that would not be capable of this, at best Non-Objective 1 would only be satisfied by
  a subset of OPC UA devices.
* As noted generation of metadata for OPC UA servers (that is, generation of WoT TDs) should be an automatic process,
  For Objective 1, this needs to allow expression of OPC UA information in a WoT TD.  For Non-Objective 1,
  the reverse mapping would also be needed: translating WoT TDs into equivalent OPC UA metadata.  However,
  supporting round-tripping tends to be difficult, which is why this is a non-goal.

## Deliverables
1. OPC UA Ontology
   - Defines information model and vocabulary for relevant OPC UA definitions and protocol options used in UA NodesetFile.
   - RDF/TTL/JSONLD Context file and URL, suitable for use in JSON-LD and RDF.
   - Note: useful for activites other than Deliverable 2.
2. WoT TD Protocol Binding for OPC UA Nodesets
   - Depends on Deliverable 1 (TDs with this protocol binding would include the OPC UA ontology defined in Deliverable 1)
3. Process to transform a OPC UA NodesetFile to a WoT Thing Description 
   - For Objective 1, this process needs to support transformation from OPC UA metadata to WoT TDs.
   - May have to infer or convert certain aspects of the metadata to do conversion.
   - May have to gather information from sources other than the NodesetFile, such as human-readable specifications, 
     if all information needed in a TD is not explictly available in a NodesetFile.
   - To support automatic tooling, the mapping between the information models should be formally defined.
   - Transformation could be performed by a OPC UA TD Producer/Generator, which might be a tool (static conversion) 
     or a service (dynamic conversion).
     
## Non-Deliverables
1. Process to transform a WoT Thing Description to an OPC UA NodesetFile 
   - For Non-Objective 1, this process would need to support transformation from WoT TDs to OPC UA metadata.
   - As with Deliverable 3, certain aspects of the information model would need to be inferred or gathered from other sources.
