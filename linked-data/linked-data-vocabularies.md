The Linked Data for Application and Platform Contracts
======================================================


Proposed alignment between the WoT ontology and the W3C&OGC SOSA/SSN ontology

WoT ontology https://w3c.github.io/wot-thing-description/ in its version August 18th 2017
SOSA/SSN ontology https://www.w3.org/TR/vocab-ssn/ 


This alignment has been proposed in the following mail:
 - https://lists.w3.org/Archives/Public/public-wot-ig/2017Jul/0008.html 

wot:Thing rdfs:subClassOf ssn:System .
wot:providesInteractionPattern rdfs:subPropertyOf ssn:implements .
wot:InteractionPattern rdfs:subClassOf sosa:Procedure .
wot:hasInputData rdfs:subPropertyOf ssn:hasInput .
wot:hasOutputData rdfs:subPropertyOf ssn:hasOutput .


This alignment is implemented in a pull request to the w3c/wot-thing-description repository, see https://github.com/w3c/wot-thing-description/pulls/maximelefrancois86

As a next step, I would also suggest to rename wot:Property to wot:PropertyInteractionPattern to avoid confusion with ssn:Property, same for wot:Event and wot:Action.