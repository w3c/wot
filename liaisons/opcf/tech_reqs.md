# Technical Requirements for OPC UA/WoT Collaboration

## Use Cases
See https://w3c.github.io/wot-usecases/#use-case-opc-ua-binding

## Objectives
1. Use OPC UA servers (device, node) from WoT Consumers; treat an OPC UA server as a Thing
2. Express metadata for OPC UA servers using WoT TDs
3. ? Let OPC UA servers connect to WoT Things

## Notes
* Objective 3 is marked with a "?" since we should discuss whether it is an objective or not.  If it is
  not, we probably should state it as a "non-goal".  If it is not a goal, then Deliverable 4 below should also
  be removed.
* WoT TDs use RDF, typically serialized as JSON-LD, so Objective 2 includes support for semantic annotations and extensions, 
  which can be done either by annotations such as `@type` or by introducing new vocabulary via a context extension.
* Metadata for OPC UA servers will be expressed as WoT TDs, and WoT TDs can be distributed via
  WoT Discovery, so Objective 2 also implies that OPC UA devices can be discovered via WoT Discovery.
* If OPC UA devices are ALSO WoT Consumers, Objective 1 would satisfy Objective 3, resulting in "OPC UA Servients".
  However, as this depends on the ability of OPC UA devices to read and parse WoT TDs, and there will be smaller
  or brownfield devices that would not be capable of this, at best Objective 3 would only be satisfied by
  a subset of OPC UA devices.
* Ideally metadata for OPC UA servers (that is, generation of WoT TDs) should be an automatic process,
  meaning our goal should be a formal definition of the mapping between the two information models.
  For Objective 1, this needs to allow expression of OPC UA information in a WoT TD.  For Objective 3,
  the reverse mapping may be needed: translating WoT TDs into equivalent OPC UA metadata.

## Deliverables
1. OPC UA Ontology
   - Defines information model and vocabulary for relevant OPC UA definitions and protocol options used in UA NodesetFile.
   - RDF/TTL/JSONLD Context file and URL, suitable for use in JSON-LD and RDF.
   - Note: useful for activites other than Deliverable 2.
2. WoT TD Protocol Binding for OPC UA Nodesets
   - Depends on Deliverable 1 (TDs with this protocol binding would include the OPC UA ontology defined in Deliverable 1)
3. Process to transform a OPC UA NodesetFile to a WoT Thing Description 
   - For Objective 1, this process needs to support transformation from OPC UA metadata to WoT TDs.
   - May have to infer or convert certain aspects to do conversion.
   - May have to gather information from sources other than the NodesetFile, such as human-readable specifications, 
     if all information needed in a TD is not explictly available in a NodesetFile (and possibly vice-versa).
   - To support automatic tooling, the transformation process should be formally defined.
   - Transformation could be performed by a OPC UA TD Producer/Generator, which might be a tool (static conversion) 
     or a service (dynamic conversion).
4. ? Process to transform a WoT Thing Description to an OPC UA NodesetFile 
   - For Objective 3, this process needs to support transformation from WoT TDs to OPC UA metadata.
   - As with Deliverable 3, certain aspects of the information model may need to be inferred or gathered from other sources.
