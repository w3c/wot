# Web of Things (WoT) Security

## Decisions
See also Architecture.  The following are not covered by that discussion.

### Signing
- Use of JSON-LD signing using RDF canonicalization
- General problem with wanting to avoid RDF processing.
- Problem with Directories modifying TDs to add expiry metadata, etc.
     - Possible to get around this, but not without breaking changes to Discovery.

### Extensions
- Want to restructuring Security schemes to use extensions, registry, etc.
- We need to ensure that plain JSON processing can still be used, primarily by using fixed unique prefixes for each extension.

### Ease of Use
- Inlined security scheme definitions

### Other
- Security improvements driven by new bindings

## Planning
Location of general planning documents for Security 

* [Work Items](work-items.md)


