# Web of Things (WoT) Architecture

## Decisions
To be discussed during planning.

### Informative vs. Normative
Should we make Architecture informative?
- If we do, we need to determine disposition of existing normative content.

### Restructuring
What purposes does the Architecture document serve, and how can it be restructured to serve these purposes better?
1. First introduction/explainer.
2. Overview and guide to other deliverables and building blocks.  Note: not all building blocks are normative, e.g. Scripting API.
3. Defines overall abstract architecture.
4. Defines some (normative) requirements for other documents, e.g. use of URLs, IRIs, constraints on relational types, media types, etc. 
5. Describes applications domains (overlaps with Use Cases deliverable).
6. Describes usage patterns (overlaps with Use Cases deliverable).
7. Describes example deployments.
8. Defines terminology.
9. Security and privacy (normative) assertions.
10. General accessibility considerations (new, non-normative).

### Security Assertions
If Architecture is made informative, what should we do with existing normative security content?
Options include:
1. Make all security content informative.
     - Not ideal, some of it is useful.
3. Move normative security content to a Profile
     - Would make sense as they apply primarily to greenfield systems.
     - Some of the security assertions in other documents could also move into the same profile.
     - Would mean that WoT Things that need to support security, e.g. Discovery TDDs, would have to mandate a Profile.
     - Profiles would have to be understood as constraining the implementation, not just the TD, so support assertions like HAL, secure updates, etc.
5. Move normative security content to a new normative Security deliverable
     - Would require modifying the charter.
7. Move normative security content to other deliverables, e.g. to TD or Discovery.
     - Some don't really fit into any deliverable, e.g. secure update, HAL.

### Privacy Assertions
Same options as with security, although privacy assertions tend to be more "policy-like".

## Planning
Location of general planning documents for Architecture

* [Work Items](work-items.md)



