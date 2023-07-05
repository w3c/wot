# Web of Things (WoT) Architecture (Draft)
- please consider Ben's comment https://github.com/w3c/wot/pull/1096#issuecomment-1611130514

## Decisions
To be discussed during planning.

### Informative vs. Normative
Should we make Architecture informative?
- If we do, we need to determine disposition of existing normative content.
- Some of the normative content are actually requirements.
- Still seems to be useful for management review and introduction.

Issues:
- Developers are not really aware of the assertions in this document, easy to overlook.
- Some adopters have explictly chosen not to implement.
- Some of the assertions, e.g. security, overlap with assertions in other documents.
- Some of the assertions are very general and if we keep them they need to be more testable.
- Making it informative would simplify releases - one less normative deliverables
- Document is very large and hard to read

References:
- To do: add links, e.g. to TAG review

Consensus:
- Work towards making informative
- First restructure; if it is possible to restructure content so it can be made informative, then we will do so.
- Note that this change will require updating the charter (but relatively easy to REC->NOTE).

### Restructuring
What purposes does the Architecture document serve, and how can it be restructured to serve these purposes better?
1. First introduction/explainer, especially useful for management.
2. Overview and guide to other deliverables and building blocks.  Note: not all building blocks are normative, e.g. Scripting API.
3. Defines overall abstract architecture.
4. Defines some (normative) requirements for other documents, e.g. use of URLs, IRIs, constraints on relational types, media types, etc. 
5. Describes applications domains (overlaps with Use Cases deliverable).
6. Describes usage patterns (overlaps with Use Cases deliverable).
7. Describes example deployments.  Relevant to requirements.
8. Defines terminology.
9. Security and privacy (normative) assertions.
10. General accessibility considerations (new, non-normative).

#### Discussion
- Could do explainers in another way, e.g. in web page
- Use cases/patterns/deployment etc, in Architecture do reflect consensus and clearer than use case document.  Some are just general IoT uses cases, maybe more focus on WoT differentiation?

### Security Assertions
If Architecture is made informative, what should we do with existing normative security content?
Options include:
1. Make all security content informative.
     - Not ideal, some of it is useful.
2. Move normative security content to a Profile
     - Would make sense as they apply primarily to greenfield systems.
     - Some of the security assertions in other documents could also move into the same profile.
     - Would mean that WoT Things that need to support security, e.g. Discovery TDDs, would have to mandate a Profile.
     - Profiles would have to be understood as constraining the implementation, not just the TD, so support assertions like HAL, secure updates, etc.
3. Move normative security content to a new normative Security deliverable
     - Would require modifying the charter.
4. Move normative security content to other deliverables, e.g. to TD or Discovery.
     - Some don't really fit into any deliverable, e.g. secure update, HAL.
  
Discussion:
- These assertions are not features, but best practices.  Should these even be normative?
- Profiles would have dependencies on particular protocols (in some cases, e.g. DTLS would only match with CoAP, etc).
- Some are hard to test, are policies, etc.  Should decide if we need an assertion before we work on moving it.
- If pick profile option...
     - Would need to align profile requirements so it can support this usage.
     - Could also have different profiles for different levels of security, trading off with resource needs, etc.
     - May also have different profiles for different privacy needs, e.g. PII or not
- There are also security assertions in other documents that may also need to be relocated...

### Privacy Assertions
Same options as with security, although privacy assertions tend to be more "policy-like".

## Planning
Location of general planning documents for Architecture

* [Work Items](work-items.md)



