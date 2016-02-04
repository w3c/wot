
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
