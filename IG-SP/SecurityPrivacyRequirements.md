''Note: current contents present an initial draft state. They serve the discussion in the WoT IG''

This page serves the identification of security and privacy requirements in the use cases that are considered by the WoT IG. This identification is based on the [[Security&Privacy Requirements Catalogue]], a service document for the use case authors/owners in the WoT IG

The identification of security and privacy requirement will be use case-specific. Consider privacy requirements as an example:
* Important in WoT scenarios comprising wearables, connected cars or other individually-owned things/devices
* Important  in WoT scenarios with legal entity-owned things/devices processing data attributed to human users such as health care equipment
* Not relevant in WoT scenarios with legal entity-owned things/devices not processing data attributed to human users such as industrial control systems

So security and privacy identification is a task that has to be addressed in interaction the WoT IG TFs resp. in liasion with them. The [[Security&Privacy Requirements Catalogue]] provides the input needed so that the output of the identification effort ("selection") refers to the same manifest and allows things to be compared across use cases and TFs

The following does (a-priori) sketch how that might look like. Note that the "requirement identification" section is planned to be moved to an own page later on

Task Force | Use Case | Informational Self-Determination | Anonymization, Pseudonymization | Authorization Management | Authorization Enforcement |  Initial Authentication | Single-Sign-On | Confidentiality | Data Origin Authentication, Integrity |  Credentialing |  Provisioning | Rate Limitations | Intrusion Detection and Prevention
----------- | ------- | -------------------------------- | ------------------------------- | ------------------------ | ------------------------- |  -------------- | -------------- | --------------- | ------------------------------------- |  ------------- |  ------------ | ----------- | -----------------------------
TODO | TODO | TODO  | TODO | TODO | TODO  | TODO | TODO | TODO | TODO | TODO | TODO | TODO | TODO

Individual entries shall provide:
* A short indication whether a requirement applies (e.g. fully, partially, not) - best done in a coloring scheme
* Some (short) textual qualification reflecting the requirement aspects described in the catalogue. Take secure communication (confidentiality) as an example: the qualification should reflect if two-party or multi-party communications are to be protected and provide any other information that is relevant (such as preferences on the kind of cryptographic scheme - symmetric vs. asymmetric)

''Caveat: the UCs are not TF-specific. However from a communication and interaction perspective it seems best to cover the UCs by approaching the TFs. For that reason the table above reflects TFs in its structure''
