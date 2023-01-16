# Thing Description 2.0

In this new charter, the Working Group will work on the WoT Thing Description specification to achieve the following goals:
- Address more use cases such that the applicability of the TD is broadened.
- Make it more usable in existing use cases
- Increase the efficiency of TDs when transmitting, parsing and consuming them

A list of overall topics are written below. These contain multiple work items underneath that should be detailed later.

## Manageable Actions

How do we invoke, update, query, cancel actions and describe this in a generic way.
This work will be carried from the current charter.

Existing Proposals:

Related Issues:
- https://github.com/w3c/wot-thing-description/issues/1692
- https://github.com/w3c/wot-thing-description/issues/1644
- https://github.com/w3c/wot-thing-description/issues/1223

## Payload Driven Protocols

Some protocols are built on top of the application layer protocols. 
Some examples are:
- RPC protocols on top of HTTP such as JSON-RPC.
- Protocols using MQTT topics together with payloads to identify affordances
- Websocket sub-protocols
- SSE usage across implementations
- Webhook usage across implementations

We should also decide and document in which cases this method does not work or make the TDs too complicated to understand.
We cannot (and probably should not try to) describe the CoAP using a `udp://` uri scheme.

## Initial connection driven protocols

Protocols like MQTT and Websockets need a URI for the initial connection. 
However, the resources are not identified by this URI but can be through a feature of the protocol (topics, channels, etc) or through usage of specific payload structures.

Related Issues:
- https://github.com/w3c/wot-thing-description/issues/1664
- https://github.com/w3c/wot-thing-description/issues/1248
- https://github.com/w3c/wot-thing-description/issues/1242
- https://github.com/w3c/wot-thing-description/issues/878

## Timeseries

Some edge and cloud services can collect property value changes or event emissions for a certain time.
This data, called timeseries, can be collected by Consumers to display (or use in any other way) the evolution of the affordance data over time.

Related Issues:
- https://github.com/w3c/wot-thing-description/issues/892

## Externalizing Security Definitions

See security proposal.

Related Issues:
- https://github.com/w3c/wot-thing-description/issues/1462
- https://github.com/w3c/wot-thing-description/issues/1395

## Inline Security Definitions

In order simplify how security mechanisms are described in simple cases, we need a proposal on how to use them with combining the definition and usage into a single term.

Related PR: https://github.com/w3c/wot-thing-description/pull/945

Related Issues:
- https://github.com/w3c/wot-thing-description/issues/1572
- https://github.com/w3c/wot-thing-description/issues/757 (sort of related?)
- https://github.com/w3c/wot-thing-description/issues/300

## Versioning

Defining how TDs should be versioned, i.e. what does each version number incrementation mean for consumers.
This probably has a dependency on the parsing, consuming, and validation chapter below since how the versions influence these steps for the consumer is important.
This will be important for the Discovery deliverable since TDDs can manage different versions of a TD.

Also see:
- https://github.com/w3c/wot-thing-description/issues/1607
- https://github.com/w3c/wot-discovery/issues/257

## Normative TD Parsing, Consuming, and Validation

Coming from https://github.com/w3c/wot/issues/978#issuecomment-965127375 . There are additional examples in the comment that can/should be carried over here.

Currently the TD specification defines an abstract information model and a default JSON serialisation for TDs, but something that is missing is an algorithm for parsing a TD. 

A validation process is defined but is not mandatory, which leads to certain ambiguities for a Consumer parsing a TD.
Additionally, no method is proposed for validation the extensions that are used via the prefixes and the `@context`.
This should be specified to have a better and clear support for the extensions, while assuring their usability by the Consumers.

## Canonical TD

We have dropped this in the current charter in order to wait for some progress in JSON-LD.

An algorithm on how to generate a canonical TD is needed. This should be then used for signing the TDs.

Related PRs:
- https://github.com/w3c/wot-thing-description/pull/1304
- https://github.com/w3c/wot-thing-description/pull/1151
- https://github.com/w3c/wot-thing-description/pull/943
- https://github.com/w3c/wot-thing-description/pull/1086

Related Issues:
- https://github.com/w3c/wot-thing-description/issues/1023
- https://github.com/w3c/wot-thing-description/issues/940
