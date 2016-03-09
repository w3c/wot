# Charter items for the Web of Things Working Group

to comment, please add an issue or send a pull request.
Direct link for a pull request: https://github.com/w3c/wot/edit/master/WG/wot-wg-items.md

IMPORTANT: please check if you have IPR in the scope of the recommendation track items

## Web of Things scripting API (API)

Scope:

1. API definitions for Client and Server-side scripts (servient model)
  1. including high-level discovery client APIs for both local&remote cases
  1. including high-level security handling on client and servient side
  1. lifecycle methods
  1. registering and creating things (local and remote)
    1. based on TD
    1. imperatively
  1. Define requirements & contracts between runtime and application (e.g. callback signatures and how to attach callbacks)
1. security model and policies for scripting runtimes
1. allow for structuring an interlinking of resources
1. language-independent definitions with examples e.g. in JS
1. concept of applications spanning multiple things resp. resources
1. requirements/contracts for error handling
1. considerations for cross-cutting work (e.g. I18N, accessibility, privacy)

Out-of scope:
* solutions for particular runtimes/frameworks
* middlewares and protocol drivers
* security frameworks and protocols

Deliverables:
* WoT API Recommendation track document
 * with API definitions e.g. in WebIDL
 * and exemplary mapping with examples in Javascript

Testing approach

## Bindings To Common Protocols (BP)

Scope:

1. Resource Model and URI concepts
1. Interaction Models
1. description of integration point for protocols
1. guidelines for SDOs how to map WoT to their protocol

Out of Scope:
* Protocol definitions (to be done by SDOs)
* URI mappings for non-resourceful protocols
* serializations/encodings

Deliverables:
* WG note: Spec & guidelines for model and integration points

## Thing Description (TD)
Scope:

1. A standard RDF vocabulary of terms for describing
	1. data models (e.g., for use in generating scriptable objects for IoT services)
	1. server metadata
	1. security metadata
1. Guidelines how to involve existing vocabulary  
1. Evaluate different serialization formats for RDF (shall be also feasible for constraints Things in terms of memory, processing, and bandwidth) and make a recommendation for (a) suitable serialization format(s)
1. Setup guidelines how to discover and filter Thing Descriptions
1. Extendibility of the metadata (such as relation to other things, location information, etc.)?
1. Consider lifecycle / lifecycle management in the TD (e.g., allow changes of metadata over lifetime (e.g., add location information, instanceTime, etc.))
1. Include base vocabulary for atomic use cases (domain independent) such as switching on / off ?



Out-of scope:
* domain/application specific vocabularies
* define protocol specific
* develop a new serialization format
* post-processing (such as filtering and ranking of TD)
* system internal and generation of TD (may be addressed in AP)
* enforcement of described security mechanism

Deliverables:
* Recommendation track specification document of the TD
* TD ontology/context file and a fix URI that can be used to refer to
