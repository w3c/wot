# TD.Next Feature Aiming Work Items

For new features (keywords or behavior), a use case (or user story) should exist in the first place.
While the refactoring topics are being worked on, new features should not be incorporated into the specification.
Instead, the TF will analyze current solutions, gather existing use cases and discussions, and write the requirements to shape the feature.
These are contained in this folder with the `analysis-` prefix.

## Historical Data
![GitHub labels](https://img.shields.io/github/labels/w3c/wot-thing-description/historical%20data)

Also known as time series.

Please refer to [Analysis Document](./../analysis-historical-data-work-item.md)

## Manageable Affordances
![GitHub labels](https://img.shields.io/github/labels/w3c/wot-thing-description/manageable%20affordances)

Note: This should be moved to an analysis document.

Various use cases require the implementation of more complex actions that span multiple protocol transactions. Such actions are not simply invoked but need to managed over time by the Thing and the Consumer. 
These are covered in the WoT Thing Description 1.1 via the initiation (invokeaction), monitoring (`queryaction`), and cancellation (`cancelaction`) of ongoing actions.
However, the following points are not supported:

- Sent and received payloads associated to the operations
- Management of dynamically generated identification
- Describing queues of actions

These limitations are also influencing the Profiles.

Additionally, there have been proposals by the WG members that need to taken into account and evaluated:

- <https://github.com/w3c/wot-thing-description/tree/main/proposals/hypermedia-control>
- <https://github.com/w3c/wot-thing-description/tree/main/proposals/hypermedia-control-2>
- <https://github.com/w3c/wot-thing-description/tree/main/proposals/hypermedia-control-3>

Related Issues:

- <https://github.com/w3c/wot-thing-description#1692>
- <https://github.com/w3c/wot-thing-description#1644>
- <https://github.com/w3c/wot-thing-description#1223>

## Streaming
![GitHub labels](https://img.shields.io/github/labels/w3c/wot-thing-description/streaming)

Note: This should be moved to an analysis document.

A streaming protocol establishes an ongoing connection supporting delivery of time-sensitive information such as audio or video. 
Note that this connection in general may be over either reliable (TCP) or unreliable (UDP) transports, or over a combination, and may also support encryption or content management.
Streaming may also be used to support other kinds of ongoing time-sensitive data delivery.

While related to event notification mechanisms, streaming in practice is supported by a specific set of protocols such as RTSP, HLS, DASH, MSE, WebRTC, etc.
This work item would add any infrastructure needed to TDs in order to support streaming protocol bindings generally, for example, by adding additional subprotocols supporting stream publication and subscription management (if needed).

In order to clearly define what infrastructure is actually needed, if any, one or more concrete streaming protocol bindings should also be attempted, such as [RTSP](https://w3c.github.io/wot-charter-drafts/wot-wg-2023-details.html#rtsp-binding-workitem).

## Signing and Canonicalization

Note: This should be moved to an analysis document.

### Signing
![GitHub labels](https://img.shields.io/github/labels/w3c/wot-thing-description/signing)

Mechanisms for signing TDs documents were under discussion in the last charter but were not mature enough to include.
Adding support for TD canonicalization and signing would be helpful to ensure that TDs are not intercepted and modified by third parties.
Verifying a signature requires identity management, i.e. the verifier needs to know or have trusted access to the public key of the signer.
Directories need to be extended to verify signatures and generate new chained signatures as needed.

### Canonicalization
![GitHub labels](https://img.shields.io/github/labels/w3c/wot-thing-description/canonicaliziation)

Thing Descriptions can contain the same information but serialized differently even in the same serialization format, due to structures such as maps which do not impose an order.
This is problematic for comparing TDs or more importantly, for signing them where every byte difference results in a different signature.
Thus, the WG will develop a canonicalization algorithm based on JSON-LD.

Related Issues:

- <https://github.com/w3c/wot-thing-description/issues/1023>
- <https://github.com/w3c/wot-thing-description/issues/940>

Some work has been done in the previous charter but has been postponed due to lack of features in JSON-LD. Related PRs:

- <https://github.com/w3c/wot-thing-description/pull/1304>
- <https://github.com/w3c/wot-thing-description/pull/1151>
- <https://github.com/w3c/wot-thing-description/pull/943>
- <https://github.com/w3c/wot-thing-description/pull/1086>

### TD Versioning
![GitHub labels](https://img.shields.io/github/labels/w3c/wot-thing-description/versioning)

Note: This should be moved to an analysis document.

Explain the semantics on how to version Thing Descriptions.
