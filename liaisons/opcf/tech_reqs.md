# Technical Requirements for OPC UA/WoT Collaboration

# Goals
- Use OPC UA servers from WoT consumers
- Access WoT TD metadata for OPC UA servers

## Deliverables
* OPC UA Ontology
   - Defines information model and vocabulary for all OPC UA definitions and protocol options used in UA NodesetFile
   - RDF/TTL/JSONLD Context file and URL, suitable for use in JSON-LD and RDF
* WoT TD Protocol Binding for OPC UA Nodesets
* Process to transform a UA NodesetFile to a WoT Thing Description (and vice versa, if TD describes OPC UA Nodeset)
   - OPC UA TD Producer/Generator
* Discovery mechanism for fetching WoT TDs that describe OPC UA NodesetFiles in OPC UA installations
   - May generate new requirements for Discovery 2.0 to support existing OPC UA discovery
