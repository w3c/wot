# Technical Requirements for OPC UA/WoT Collaboration

## Use Cases
See https://w3c.github.io/wot-usecases/#use-case-opc-ua-binding

## Objectives
1. Use OPC UA servers (device, node) from WoT Consumers; treat an OPC UA server as a Thing
2. Access WoT TD metadata for OPC UA servers - integrate discovery process with OPC UA
3. ? Let OPC UA servers connect to WoT Things; but if OPC UA devices are ALSO WoT Consumers, 1 satisfies this; --> "OPC UA Servients"

## Deliverables
1. OPC UA Ontology
   - Defines information model and vocabulary for all OPC UA definitions and protocol options used in UA NodesetFile
   - RDF/TTL/JSONLD Context file and URL, suitable for use in JSON-LD and RDF
   - Note: useful for activites other than 2
2. WoT TD Protocol Binding for OPC UA Nodesets
   - Depends on 1 (TDs with this protocol binding would include the OPC UA ontology defined in 1)
4. Process to transform a OPC UA NodesetFile to a WoT Thing Description (and vice versa, if TD describes OPC UA Nodeset)
   - May have to infer or convert certain things to do conversion
   - OPC UA TD Producer/Generator; possibly also a "service"
5. Discovery mechanism for fetching WoT TDs that describe OPC UA NodesetFiles in OPC UA installations
   - May generate new requirements for WoT Discovery 2.0 to support existing OPC UA discovery
