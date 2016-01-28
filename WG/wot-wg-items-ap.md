
## Web of Things scripting API

Scope:
* API definitions for Client and Server-side scripts (servient model)
  * including high-level discovery client APIs for both local&remote cases 
  * including high-level security handling on client and servient side
  * lifecycle methods
  * registering and creating things (local and remote)
    * based on TD
    * imperatively
  * Define requirements & contracts between runtime and application (e.g. callback signatures and how to attach callbacks)
* security model and policies
* allow for structuring an interlinking of resources
* language-independent definitions with examples e.g. in JS
* concept of applications spanning multiple things resp. resources
* requirements/contracts for error handling
* considerations for cross-cutting work (e.g. I18N, accessibility, privacy)

Out-of scope:
* solutions for particular runtimes/frameworks
* middlewares and protocol drivers
* security frameworks and protocols

Deliverables:
* WoT API Standard Recommendation document
 * with API definitions e.g. in WebIDL
 * and exemplary mapping with examples in Javascript

Testing approach

## Bindings To Common Protocols

Scope:
* Resource Model and URI concepts
* Interaction Models
* description of integration point for protocols
* guidelines for SDOs how to map WoT to their protocol

Out of Scope:
* Protocol definitions (to be done by SDOs)
* URI mappings for non-resourceful protocols
* serializations/encodings

Deliverables:
* Spec & guidelines for model and integration points
