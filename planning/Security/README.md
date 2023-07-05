# Web of Things (WoT) Security (Draft)

## Decisions
See also Architecture.  The following are not covered by that discussion.

### Signing
- Use of JSON-LD signing using RDF canonicalization
- General problem with wanting to avoid RDF processing.
- Problem with Directories modifying TDs to add expiry metadata, etc.
     - Possible to get around this, but not without breaking changes to Discovery.
 
Discussion:
- Could bind to profiles, e.g. define profiles that require RDF processing
- Could restrict applications of JSON-LD features generally to make signing and processing easier, e.g. prohibit cycles.  May have to apply to extension, though, and how would we validate?   Could do as part of signing... but might break semantic processing and annotation.  If someone wants to use a rich external ontology, such a restriction may break that.
- Could use JWT signing, but has other issues - really just signs a string

### Extensions
- Want to restructuring Security schemes to use extensions, registry, etc.
- We need to ensure that plain JSON processing can still be used, primarily by using fixed unique prefixes for each extension.

Discussion:
- Ege has looked into how to organize this
- Is discussion under TD and is also needed for other extensions, e.g. for protocol bindings (htv etc)

### Ease of Use
- Inlined security scheme definitions

### Onboarding
- Where will this go, especially if Architecture is made informative?

Discussion:
- In addition to identity and trust, there may also be other "first contact" processes needed, like fetching a TM
- In the abstract, it really needs its own deliverable
- Low priority, do a prototype as part of IG work, target next charter?
- How does this relate to the TD spec?  Is it an application of TDs or separate?
- Onboarding is also defined by other SDOs, e.g. OPC UA, we could collaborate

### Other
- Security improvements driven by new bindings

Discussion:

## Planning
Location of general planning documents for Security 

* [Work Items](work-items.md)


