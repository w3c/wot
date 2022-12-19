# Security and Privacy

## Motivation
Security and Privacy considerations and assertions related to them are currently
scattered across many deliverables.  In addition, we have an informative guideline
document that does not have any assertions. 

Consolidating this material into a single normative document would make it easier to review
(and this is important, since security reviewers are hard to get and yet such
review is critical) and would also create a location for new security features to
be placed, such as onboarding.

## Description
The WoT Security and Privacy deliverable would describe integrated security and privacy 
considerations and features for all WoT systems and deliverables.  In addition to consolidating existing informative
and normative security and privacy content from existing document, this
deliverable would provide a location for new normative security and privacy features to
be located.

### Consolidation
The following existing content would be consolidated:
- Secure transport assertions (e.g. TLS version), currently in Arch.
- Deployment on LANs where CA is not available, currently in Arch and TD.
- PII handling assertions, currently scattered.
- Security bootstrapping (e.g. first contact with an unknown Thing), currently in Discovery.
- Informative content from the existing WoT Security and Privacy Guidelines document,
  including definitions, threat models, risks, actors, and testing recommendations.
  - Best practices, i.e. which security schemes are recommended for new development and which are provided only for compatibility with brownfield devices.
  
## New
The following new features would be defined normatively.

### Onboarding
In order to establish secure communications in some contexts, for example on a LAN,
some form of onboarding process to establish mutual trust between Things and
Consumers is needed.  Having a prescriptive (but optional) process for this
would be useful.

Note that this may be part of a larger "lifecycle" which would be described in the 
Architecture document.

<p>
In this work item we will define mechanisms to perform minimum-effort
onboarding of
Things in a secure way that conforms to the security and privacy requirements
of specific deployment scenarios and use cases.
</p>
<p>
This work item complements the work that is done for device discovery,
however is also applicable for other use cases.
</p>

### Signing
In order to ensure integrity of TDs, they may have to be signed in a way
consistent with emerging RDF/JSON-LD in this space.  Signatures also
need to be validated and this requires a key (or identity) management system.

### Security Scheme Ontology
Currently security schemes are "baked into" the TD specification but it would
be more manageable and consistent to break them out as separate ontologies so that all
security schemes would be done via extensions.  Then the TD 2.0 spec would only
have to include general-purpose "structural" security schemes like `nosec` and `combo`.
The security ontologies and URLs for them would be published in a new [Registry Track Note](https://www.w3.org/2021/Process-20211102/#registries).
