# Registry Mechanism Analysis

This file summarizes the registry mechanism that the WoT WG/IG needs along with the work done to analyze similar approaches and the requirements we have on such mechanisms.


- Explain what the WoT needs/requires in order to choose a mechanism and the rules

## Analysis of other W3C Documents

### Official Registry Track Registries

Volunteer: Michael Koster

Documents that confirm to https://www.w3.org/2023/Process-20230612/#registries
They can be queried at https://www.w3.org/TR/?filter-tr-name=&status%5B%5D=dry&status%5B%5D=cry&status%5B%5D=ry

Examples:
- https://www.w3.org/TR/webcodecs-codec-registry/
- https://www.w3.org/TR/aac-registry/

### Custom Registry Mechanism Registries

Volunteer: Jan Romann

#### TTML Media Type Definition and Profile Registry

**Status:** Active (Last updated Nov 2020)
**Creation:** 10 May 2016

This [document](https://www.w3.org/TR/ttml-profile-registry/#registry) defines a specific media type and a registry for associated "processor profiles".
##### Entry Format

- Entries must contain a unique ID, an absolute URI that identifies the profile, and contact information of the registrant
- Entries *should* contain links to the specification of the profile itself and its corresponding vocabulary

##### Submission and Modification Process

- Entries can be added, changed, or deleted
  - Although deletion is possible, entries are intended to be stable
- Requests are made via an email to the WG chair, and will be decided on in a WG meeting
- Decisions are made via consensus, the requestor is notified accordingly

#### Media Source Extensions Byte Stream Format Registry

**Status:** Active (Last entries added May 2021)
**Creation:** 04 October 2016

This [document](https://www.w3.org/TR/mse-byte-stream-format-registry/) defines
a registry that maps between MIME-type/subtype pairs and byte stream format
specifications.
These are relevant for
[`SourceBuffer` objects](https://www.w3.org/TR/media-source/#sourcebuffer) which
are used for consuming audio and video streams.

##### Entry Format

Each entry consists of MIME type/subtype which is mapped to a publicly available
specification for a byte stream format.
It is recommended that the specification should be available without fees.

Furthermore, it has to be specified if a flag for generating timestamps needs to
be set with the byte stream format.

##### Submission Process
All requirements mentioned in the [Media Source Extensions](https://www.w3.org/TR/media-source/#byte-stream-formats) specification must be fulfilled.

New entries are submitted to a public mailing list where they are supposed to be
discussed and evaluated before adding them to the registry.
The process of approving a new entry is (apparently?) not formally specified.

##### Modification Process
The possibility to remove entries that fail to satisfy any of the mandatory requirements is explicitly mentioned.

#### DID Specification Registries

**Status:** Active (Last updated Sep 2023)
**Creation:** 18 June 2020

This [document](https://www.w3.org/TR/did-spec-registries/) defines
a registry for all known global parameters, properties, and values used by the
Decentralized Identifier ecosystem.

##### Entry Format
- Entries must include a human-readable description and should have a clear and descriptive name.
- Entries must adhere to an IPR policy and do no harm to others (including legally and security-wise).
- Entries must link to a specification that makes it possible to implement the addition.
- Entries must specify a JSON-LD context (with a set of more fine-grained requirements).

##### Submission Process
.New entries have to be submitted via a modification request
(as part of a PR on the registry's repository).

##### Modification Process
Entries must not be removed, only deprecated.

#### XPointer Scheme Name Registry Policy

**Status:** Inactive? (Last registration request Nov 2021, still pending)
**Creation:** Nov 2005

This [document](https://www.w3.org/2005/04/xpointer-policy) defines a policy
that governs the registration of simple names for Scheme-Based XPointers.

##### Entry Format
Entries consist of a name and description.

##### Submission Process

- Entries are given out on a "first come, first serve" basis
- A W3C account is required
- Registration requests are made via a Web form
- After submission, registration is reviewed on a public mailing list where objections can be raised within one month
- In case of an objection, the Team Contact makes a decision within two weeks. If the objection is upheld, the submission can be revised or appealed within one week. Otherwise, it is rejected.
- In the case of an appeal, the W3C Director decides.
- In the case of no objection and an approval by the director, the request changes its state to "Registered". The other states are "Pending" and "Rejected".

##### Modification Process

A process for modifying an entry is not defined.
<!-- TODO: Double-check that this is really the case -->

#### Insights and Conclusion

After detailing the features of the individual registries, a summary and
conclusion of certain important aspects is given below.

##### Registration

In general, all of the registries above define a process for submitting new entries.
However, they vary in their complexity and the formality of the procedure for
admission.
Generally, the WG lead and sometimes -- in the case of an appeal -- even the W3C
directorate is involved in the decision.
However, all registries try to a consensus in one way or another, with different
levels of leadership acting as a mediator or coordinator of the process.

It probably makes sense to also focus on achieving consensus in the case of
our registries.
However, the process should not be too complicated while also
not leaving aspects too vague.

##### Components of a Registry Entry

Except for the XPointer scheme registry, all of the registries above require
formal specifications to be linked to from the registry.
Depending on the kind of registry, additional aspects need to be specified,
e.g., a JSON-LD `@context` when it comes to DID.

This emphasizes that special attention should be given to which parts need to be
included in a registry entry.
E.g., given the diverse nature of IoT protocols, we need to make sure to
allow for fitting all of them into our Binding Templates registry, while still
ensuring that all necessary components to work with a Protocol Binding are
included.

##### Deletion and Deprecation of Registry Entries

With the XPointer Scheme Registry being an exception once more, all registries
also define a way to delete or deprecate entries.
In the case of the "TTML Media Type Definition and Profile Registry" and the
"Media Source Extensions Byte Stream Format Registry", however, an entry is only
supposed to be deleted if it violates any of the mandatory requirements.

DID, however, only allows for the *Deprecation* of entries, which seems like a
a good way to avoid accidental breaking of deployed implementations.

##### Versioning

One aspect that is not explicitly covered in the registries mentioned above is
having different versions of the same entry.
New versions of the same document could be treated simply as a resubmission
while marking the old entries as deprecated (see the section on deletion and
deprecation above).
However, we could also opt for an explicit versioning mechanism for our
registries in order to, for instance, group different versions of a Binding
Template.

<!-- TODO: Are there more aspects that need to be covered here? -->

## Analysis of IANA Registries

Volunteer:  Cristiano Aguzzi

Examples:
- https://www.iana.org/assignments/websocket/websocket.xml
- https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry
- https://www.iana.org/assignments/media-types-parameters/media-types-parameters.xhtml

### Media Type Registry

## WoT Requirements and Expectations for a Potential Registry

In order to choose a mechanism and the rules, we document our requirements and expectations

- A binding should be written by people with a good understanding of the protocol, media type (or similar) and not necessarily the TD Editors
- The registry is bound to the TD spec version
- The registry table's entry acceptance should outlive the TD spec. This means that after a REC publication, the table can be updated
- What needs to be registered (i.e. what is put into the TD document and not what the linked document should contain)
  - Name of the binding
  - Link to the binding: Stable link
  - (possibly) The binding prefix
-  Requirements on the submitted document:
  - To be clarified but the initial list for protocols at https://w3c.github.io/wot-binding-templates/#creating-a-new-protocol-binding-template-subspecification

What we are doing now: https://w3c.github.io/wot-binding-templates/#protocol-bindings-table

## Appendix

### Useful Resources

- https://www.w3.org/2020/01/registering-mediatypes (we followed this for registering TD media type)
- IANA Guidelines: https://www.iana.org/help and https://www.iana.org/help/protocol-registration
- https://github.com/w3c/wot/blob/main/PRESENTATIONS/2023-09-tpac/2023-09-14-WoT-TPAC-Registry-Korkan.pdf
