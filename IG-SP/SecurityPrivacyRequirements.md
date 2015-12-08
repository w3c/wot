''Note: current contents present an initial draft state. They serve the discussion in the WoT IG''

This page serves the identification of security and privacy requirements in the use cases that are considered by the WoT IG. This identification is based on the [[Security&Privacy Requirements Catalogue]], a service document for the use case authors/owners in the WoT IG

The identification of security and privacy requirement will be use case-specific. Consider privacy requirements as an example:
* Important in WoT scenarios comprising wearables, connected cars or other individually-owned things/devices
* Important  in WoT scenarios with legal entity-owned things/devices processing data attributed to human users such as health care equipment
* Not relevant in WoT scenarios with legal entity-owned things/devices not processing data attributed to human users such as industrial control systems

So security and privacy identification is a task that has to be addressed in interaction the WoT IG TFs resp. in liasion with them. The [[Security&Privacy Requirements Catalogue]] provides the input needed so that the output of the identification effort ("selection") refers to the same manifest and allows things to be compared across use cases and TFs

The following does (a-priori) sketch how that might look like. Note that the "requirement identification" section is planned to be moved to an own page later on
{| class="wikitable"
|-
! Task Forces !! Use Cases !! [https://www.w3.org/WoT/IG/wiki/Security%26Privacy_Requirements_Catalogue#Informational_Self-Determination Informational Self-Determination] !! [https://www.w3.org/WoT/IG/wiki/Security%26Privacy_Requirements_Catalogue#Anonymization.2C_Pseudonymization Anonymization, Pseudonymization] !! [https://www.w3.org/WoT/IG/wiki/Security%26Privacy_Requirements_Catalogue#Authorization_Management Authorization Management] !! [https://www.w3.org/WoT/IG/wiki/Security%26Privacy_Requirements_Catalogue#Authorization_Enforcement Authorization Enforcement] !! [https://www.w3.org/WoT/IG/wiki/Security%26Privacy_Requirements_Catalogue#Initial_Authentication Initial Authentication] !! [https://www.w3.org/WoT/IG/wiki/Security%26Privacy_Requirements_Catalogue#Single-Sign-On Single-Sign-On] !! [https://www.w3.org/WoT/IG/wiki/Security%26Privacy_Requirements_Catalogue#Confidentiality Confidentiality] !! [https://www.w3.org/WoT/IG/wiki/Security%26Privacy_Requirements_Catalogue#Data_Origin_Authentication.2C_Integrity Data Origin Authentication, Integrity] !! [https://www.w3.org/WoT/IG/wiki/Security%26Privacy_Requirements_Catalogue#Credentialing Credentialing] !! [https://www.w3.org/WoT/IG/wiki/Security%26Privacy_Requirements_Catalogue#Provisioning Provisioning] !! [https://www.w3.org/WoT/IG/wiki/Security%26Privacy_Requirements_Catalogue#Rate_Limitations Rate Limitations] !! [https://www.w3.org/WoT/IG/wiki/Security%26Privacy_Requirements_Catalogue#Intrusion_Detection_and_Prevention Intrusion Detection and Prevention]
|-
| Thing Description || || || || || || || || ||  || || || || 
|-
| || [TF-TD] UC-i || TODO || TODO || TODO || TODO || TODO || TODO || TODO || TODO || TODO || TODO || TODO || TODO 
|-
| Scripting API and Protocol mapping || || || || || || || || ||  || || || || 
|-
| || <abstract> || self || anon || authz manage || authz enforce || inital authn || sso || data conf || data authn || creds || id data || limit || detect
|-
| || Home automation || Yes TODO: discuss how personal the information is that is dealt with  (behavior vs body) || Yes TODO as before || Yes starts with owner can do all, else can do nothing, may have to add friends&family || Yes depends on netwok characteritic (nearfield vs widearea) || Yes || Yes for human users, TODO for M2M || Yes TODO: consider deployment options (Cloud-based intemediaries) || Yes TODO: consider deployment options (Cloud-based intemediaries) || Yes || Yes but depends on whether multi-user components are in the game (portal in the Cloud) || Probably yes but for portal-style components in the Cloud rather than home-based components || Not now
|-
| Thing Discovery || || || || || || || || ||  || || || || 
|-
| || [https://www.w3.org/WoT/IG/wiki/Discovery_Categories_and_Tech_Landscape#1._Finding_things_around_me '''Finding things around me'''] || Needed at least for consumer goods... || TBD || Owner needs be able to excercise access control || Thing needs to be able to enforce access control according the owner's strategy || Yes but not necessarily done by the thing || TBD || Yes || Yes || Yes || Open || TODO || TODO 
|-
| || [https://www.w3.org/WoT/IG/wiki/Discovery_Categories_and_Tech_Landscape#2._Finding_things_on_my_network '''Finding things on my network'''] || TODO || TODO || TODO || TODO || TODO || TODO || TODO || TODO || TODO || TODO || TODO || TODO 
|-
| || [https://www.w3.org/WoT/IG/wiki/Discovery_Categories_and_Tech_Landscape#3._Searching_in_Directories '''Searching in Directories'''] || TODO || TODO || TODO || TODO || TODO || TODO || TODO || TODO || TODO || TODO || TODO || TODO 
|-
| || [https://www.w3.org/WoT/IG/wiki/Discovery_Categories_and_Tech_Landscape#4._Searching_across_Peers '''Searching across Peers'''] || TODO || TODO || TODO || TODO || TODO || TODO || TODO || TODO || TODO || TODO || TODO || TODO 
|-
| || [https://www.w3.org/WoT/IG/wiki/Discovery_Categories_and_Tech_Landscape#5._Accessing_thing_metadata '''Accessing thing metadata'''] || TODO || TODO || TODO || TODO || TODO || TODO || TODO || TODO || TODO || TODO || TODO || TODO 
|}
Individual entries shall provide:
* A short indication whether a requirement applies (e.g. fully, partially, not) - best done in a coloring scheme
* Some (short) textual qualification reflecting the requirement aspects described in the catalogue. Take secure communication (confidentiality) as an example: the qualification should reflect if two-party or multi-party communications are to be protected and provide any other information that is relevant (such as preferences on the kind of cryptographic scheme - symmetric vs. asymmetric)

''Caveat: the UCs are not TF-specific. However from a communication and interaction perspective it seems best to cover the UCs by approaching the TFs. For that reason the table above reflects TFs in its structure''
