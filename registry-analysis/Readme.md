# [DRAFT] Registry Mechanism Analysis

This file summarizes the registry mechanism that the WoT WG/IG needs along with the work done to analyze similar approaches and the requirements we have on such mechanisms.

- Explain what the WoT needs/requires in order to choose a mechanism and the rules

## Analysis of other W3C Documents

### Official Registry Track Registries

Volunteer: Ege Korkan

Documents that confirm to <https://www.w3.org/2023/Process-20230612/#registries>.
That section should be read first by everyone.
They can be queried at <https://www.w3.org/TR/?filter-tr-name=&status%5B%5D=dry&status%5B%5D=cry&status%5B%5D=ry>.
First Analysis as a presentation in TPAC 2023: <https://github.com/w3c/wot/blob/main/PRESENTATIONS/2023-09-tpac/2023-09-14-WoT-TPAC-Registry-Korkan.pdf>

#### Important Notes

- We cannot make normative references to the registry content. This is probably important for the profile discussions. 
  - Extract from the W3C Process document:

  > If there are entries that must be implemented, or any other such restrictions, they must be defined or documented in the referencing specification without dependency on the registry. For example, “All implementations must implement the Basic-Method as defined in the registry” is not acceptable; a change to the definition of the Basic-Method in the registry would then affect conformance. Instead, the requirement must be complete in the specification, directly or by reference to another specification. For example “All implementations must recognize the name Basic-Method, and implement it as defined by section yy of IETF RFC xxxx”. (The Registry should nonetheless contain Basic-Method as an entry.)

  - Extract from WebCodecs
  
  > Implementers of WebCodecs are not required to support any particular codec nor registry entry.

#### WebCodecs Codec Registry

**Status:** Active (Last publication Jan 2024)
**Creation:** Since [13 October 2022](https://www.w3.org/TR/2022/DRY-webcodecs-codec-registry-20221013/) a Draft Registry. FPWD was on 8 April 2021, still same name. Also see <https://www.w3.org/standards/history/webcodecs-codec-registry/>.

[This registry](https://www.w3.org/TR/webcodecs-codec-registry/) provides the means to identify and avoid collisions among codec strings and provides a mechanism to define codec-specific members of WEBCODECS codec configuration dictionaries.
This registry maintains a mapping between codec strings and registration specifications as described below.

##### Entry Format

- Unique codec string
- Common name string
- Link to the codec’s specification.

##### Submission and Modification Process

There are requirements on the codec string and what the specification should contain.

- Submission is done by filing an issue over GitHub
- The Media WG may seek expertise from outside the Working Group as part of its evaluation, e.g., from the codec specification editors or relevant standards group.
- The codec specification must be made available to the Working Group for evaluation.
- If the Working Group reaches consensus to accept the candidate, a pull request should be drafted (either by editors or by the party requesting the candidate registration) to register the candidate. The registry editors will review and merge the pull request.
- Existing entries cannot be deleted or deprecated. They may be changed after being published through the same process as candidate entries.

#### W3C Alternative and Augmented Communication (AAC) Symbol Registry

**Status:** Kind of Active (Last publication December 2022) (WG still active) but not finalized (Draft Registry)
**Creation:**  Oct 2022

This [document](https://www.w3.org/TR/aac-registry/) provides reference numbers and symbols for symbol attribute.
The symbol attribute identifies the concept for symbols used in AAC devices, etc., for users who comprehend content more effectively when AAC (rather than just natural language alone) is used to convey meaning. The symbols are an alternative vocabulary, and multiple symbol sets exist today.
The symbol attribute accepts a numeric reference number.
See examples below

- ![question mark](./images/questionmark.png)
- ![acne](./images/acne.png)

##### Entry Format

- Index number
- (English) Text associated to index number to explain it
- SVG or pointer to an SVG with the symbol

They maintain a JSON file that maps the english text to the id.
Each symbol has an svg with the same id, i.e. 12332.svg is the symbol for `acne`.

##### Submission and Modification Process

The symbols are developed by the Blissymbolics Communication International (BCI) and this document is a joint work with them.

> Additions and extensions to the symbol and concept cross reference index are performed by time-tested BCI processes before they are migrated into this W3C Registry.

Other than this, they follow the process document.

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

New entries have to be submitted via a modification request
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

## Analysis of IANA Registries (DRAFT)

Volunteer:  Cristiano Aguzzi

> Examples:
> - <https://www.iana.org/assignments/websocket/websocket.xml>
> - <https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry>
> - <https://www.iana.org/assignments/media-types/media-types.xhtml>

The Internet Assigned Numbers Authority (IANA) plays a crucial role in ensuring the proper functioning
of the Internet through various coordination mechanisms, collectively known as IANA functions. This report 
focuses on the Protocol Assignments function, closely coordinated with the Internet Engineering Task Force (IETF), 
providing insights into the potential establishment of a registry for protocol binding templates.

### IANA Procedures and RFC 8126
IANA, as outlined in RFC 8126, establishes common procedures for protocol assignments. These procedures may be supplemented
or modified by specific registries defined in corresponding RFCs. The submission of registrations is typically facilitated 
through web forms on the IANA website or via email.

### Generic Considerations
Even in seemingly unlimited spaces, a minimal review before assignment is often necessary to prevent hoarding or wastage of values 
and to ensure the legitimacy of requests. Balancing adequate review with ease of registration is crucial, considering 
requests from various entities.

Common review policies, as defined by RFC, include (order of strictness):

1. Private Use
2. Experimental Use
3. Hierarchical Allocation
4. First Come First Served
5. Expert Review
6. Specification Required
7. RFC Required
8. IETF Review
9. Standards Action
10. IESG Approval

The following subsections expand the guidelines for the main review policies that were used across the relevant examples
of registries selected by the Working Group (see later sections). 

#### First Come First Served 
> ([RFC8126](https://datatracker.ietf.org/doc/html/rfc8126#section-4.4))

Streamlined review policy the requests are registered in a first come first served fashion and they are usually accepted without
any particular review. The requirement for acceptance is only that the request is well formed and does not clash with existing
registrations (e.g., for strings case-sensitive equality). Some registries might add some additional requirements but they are usually
regarding the format of the request and they are not used to add additional review steps to the process. Any registry that uses
this policy has to define a "change controller" an entity responsible for overseeing any change of the registry (e.g., protocol updates 
that deprecate old codes). The [RFC](https://datatracker.ietf.org/doc/html/rfc8126#section-4.4) advises any change controller to be 
careful "that the protocol retains wire compatibility". 

> It is also important to understand that First Come First Served really has no filtering.  Essentially, any well-formed request is
accepted.

#### Expert Review
> ([RFC8126](https://datatracker.ietf.org/doc/html/rfc8126#section-4.5))

The expert reviews policy requires the registry to define an expert for reviewing new registration requests. The role of the expert
is so important that IANA dedicates an [entire section](https://datatracker.ietf.org/doc/html/rfc8126#section-4.5) about this role 
and how to manage it. While is not mandatory, it is advised to provide additional documentation attached to a registration request 
to give the expert sufficient context to evaluate it. 

> The required documentation and review criteria, giving clear guidance to the designated expert, should be provided when defining the
> registry.

Another important aspect that needs to be laid out is the criteria for accepting requests or discarding them, it will help the expert
review process. Change controller should be defined here too. 


### URI Schemes
**Registration policy** for provisional: [First Come First Served](#First_Come_First_Served)

**Registration policy** for : [Expert Review](#Expert_Review)

TODO

### Websockets sub-protocols

TODO

### Websockets extensions

TODO

### Websockets other registries

TODO


## WoT Requirements and Expectations for a Potential Registry

In order to choose a mechanism and the rules, we document our requirements and expectations

- A binding should be written by people with a good understanding of the protocol, media type (or similar) and not necessarily the TD Editors
- The registry is bound to the TD spec version
- The registry table's entry acceptance should outlive the TD spec. This means that after a REC publication, the table can be updated
- What needs to be registered (i.e. what is put into the TD document and not what the linked document should contain)
  - Name of the binding
  - Link to the binding: Stable link
  - (possibly) The binding prefix
- Requirements on the submitted document:
  - To be clarified but the initial list for protocols at <https://w3c.github.io/wot-binding-templates/#creating-a-new-protocol-binding-template-subspecification>

What we are doing now: <https://w3c.github.io/wot-binding-templates/#protocol-bindings-table>

## Appendix

### Useful Resources

- <https://www.w3.org/2020/01/registering-mediatypes> (we followed this for registering TD media type)
- IANA Guidelines: <https://www.iana.org/help> and <https://www.iana.org/help/protocol-registration>
