# Charter items for the Web of Things Working Group

to comment, please add an issue or send a pull request.
Direct link for a pull request: https://github.com/w3c/wot/edit/master/WG/wot-wg-items.md

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

## Thing Description
Scope:

* A standard RDF vocabulary of terms for describing
	* data models (e.g., for use in generating scriptable objects for IoT services)
	* server metadata
	* security metadata
* Guidelines how to involve existing vocabulary  
* Evaluate different serialization formats for RDF (shall be also feasible for constraints Things in terms of memory, processing, and bandwidth) and make a recommendation for (a) suitable serialization format(s)
* Setup guidelines how to discover and filter Thing Descriptions
* Extendibility of the metadata (such as relation to other things, location information, etc.)?
* Consider lifecycle / lifecycle management in the TD (e.g., allow changes of metadata over lifetime (e.g., add location information, instanceTime, etc.))
* Include base vocabulary for atomic use cases (domain independent) such as switching on / off ?



Out-of scope:
* domain/application specific vocabularies
* define protocol specific
* develop a new serialization format
* post-processing (such as filtering and ranking of TD)
* system internal and generation of TD (may be addressed in AP)
* enforcement of described security mechanism

Deliverables:
* Specification document of the TD
* TD ontology/context file and a fix URI that can be used to refer to
