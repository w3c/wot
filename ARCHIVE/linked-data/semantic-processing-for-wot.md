Semantic Processing for Web of Things
=====================================

 #Problem Statement
*Interop client is capable to validate and verify a chosen Thing Description. For example, to check whether a TD has been provided w.r.t TD rules. 
*Interop client is capable to discover “Semantic Compatible” description across TD with different “Semantic Mappings”.

#Tasks 
 *Evaluate different approaches for semantic constraints and validation of Linked Data in terms of expressiveness, performance, adequacy to the TD model 
 *Evaluate the capability to processing “Semantic Bridge” among different vocabularies, e.g:
 
-http://www.onem2m.org/ontology/Base_Ontology/oneM2M_Base_Ontology-V_3_2_0.owl
-Saref http://uri.etsi.org/m2m/saref# or https://w3id.org/saref#
-ssn : http http://www.w3.org/ns/ssn/ and http://www.w3.org/ns/sosa/ 
-OCF?

#Demonstrate 
*Validate and verify (Darko or Victor?, please add a slide for the demo scenario)

*Semantic Bridge (see the demo scenario) : 

*Provide an alignment rule as the “Semantic Bridge” in different

*Use a Java-script-based reasoner to infer the ”isA” and “property relation”


#Demo scenarios for Semantic Bridge

*Choose 2-3 TDs annotated with SSN/SOSA, SAREF (oneM2M), Haystack, ECHONET etc. (probably, from 2nd Level (horizontal voc) of The Linked Data for WoT application demo)

*Build an alignment rules which use SubClassOf, EquivalentClass, SubProperyOf and EquivalentProperty
Use HyLAR(https://github.com/ucbl/HyLAR-Reasoner) to infer the Semantic Bridges (iSA/rdf type and RDF property) in JavaScript(run both in Browser and NodeJS)

*Demo the capability to discover Things(sensor/things/properties) by using only one annotated ontology (SSN/SOA or SAREF) to find other things annotated in other ontologies (the demo will run in browser)

*The demo discovery queries in SPARQL: to be defined after discussing with “The Linked Data for WoT appplication demo” or ”Semantic annotation demo for Thing Description)

#Examples

* Alignment rules
* Vocabuary-agnostic discovery:
    -use one term to discover the properties decribed in several similar/relevant terms
    -complicated "transitive relationships"
    


