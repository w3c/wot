# TD.Next Binding Templates Work Items
![GitHub labels](https://img.shields.io/github/labels/w3c/wot-thing-description/Binding)

## Binding Submission Mechanism

We need to specify how a new binding should be submitted. E.g. Registry or a similar approach.
Registry analysis is happening at a separate document. See [Registry Analysis](../../../registry-analysis/).

Our approach should clarify the following points:

- Rule-based validation process of the binding document submission (what checks should a submission pass)
- Review process (do we organize special meetings, invite submitters to explain, how do we document it all etc.)
- To be continued

## Binding Mechanism
![GitHub labels](https://img.shields.io/github/labels/w3c/wot-thing-description/Binding)

### Binding Templates Integration
![GitHub labels](https://img.shields.io/github/labels/w3c/wot-thing-description/Binding) ![GitHub labels](https://img.shields.io/github/labels/w3c/wot-thing-description/document%20reorganization)

Binding Templates core mechanism will be incorporated into the TD document.

### Payload Driven Protocols
![GitHub labels](https://img.shields.io/github/labels/w3c/wot-thing-description/data%20mapping)

Some protocols are built on top of the application layer protocols. Some examples are:

- RPC protocols on top of HTTP such as JSON-RPC.
- Protocols using MQTT topics together with payloads to identify affordances.
- Websocket sub-protocols.
- SSE usage across implementations.
- Webhook usage across implementations.

The Thing Description should be updated with mechanisms that make it possible to describe such protocols while optimizing the TD instances to be human and machine readable. 
The Binding Templates should be updated with concrete cases where this mechanism is already used.
The Profiles can use this mechanism to reduce the size of TDs while making them easier to understand.
The working group will also document in which cases this method does not work due to making the TDs too complicated to understand, thus requiring a binding document.

Note: This is dependent on *Reusable TD Elements* of [Usability and Design](./usability-and-design.md) work item list.

### External Security Ontologies
![GitHub labels](https://img.shields.io/github/labels/w3c/wot-thing-description/Binding) ![GitHub labels](https://img.shields.io/github/labels/w3c/wot-thing-description/Security)

Currently security schemes are "baked into" the TD specification but it would be more manageable and consistent to break them out as separate ontologies so that all security schemes would be done via extensions. For protocol-specific security schemes in particular, these should be moved to the Protocol Bindings and ontologies supporting them. The TD 2.0 spec would be updated to only include general-purpose "structural" security schemes and "generic" schemes that apply to all protocols.

See https://github.com/w3c/wot-charter-drafts/issues/57 , https://github.com/w3c/wot-thing-description/issues/1880
