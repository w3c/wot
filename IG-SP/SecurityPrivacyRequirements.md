*Note: current contents present an initial draft state. They serve the discussion in the WoT IG*

This page identifies the security and privacy requirements of the use cases that are considered by the WoT IG. This identification is based on the security and privacy requirements catalogue below.

# Requirements Identification
The identification of security and privacy requirement is use case-specific. Consider privacy requirements as an example:
* Important in WoT scenarios comprising wearables, connected cars or other individually-owned things/devices
* Important in WoT scenarios with legal entity-owned things/devices processing data attributed to human users such as health care equipment
* Not relevant in WoT scenarios with legal entity-owned things/devices not processing data attributed to human users such as industrial control systems

So security and privacy identification is a task that has to be addressed in liaision with the WoT IG TFs. The security and privacy requirements catalogue below provides the input needed so that the output of the identification effort ("selection") refers to the same manifest and allows things to be compared across use cases and TFs

Task Force | Use Case | Informational Self-Determination | Anonymization, Pseudonymization | Authorization Management | Authorization Enforcement |  Initial Authentication | Single-Sign-On | Confidentiality | Data Origin Authentication, Integrity |  Credentialing |  Provisioning | Rate Limitations | Intrusion Detection and Prevention
----------- | ------- | -------------------------------- | ------------------------------- | ------------------------ | ------------------------- |  -------------- | -------------- | --------------- | ------------------------------------- |  ------------- |  ------------ | ----------- | -----------------------------
Thing Description |  |  |  |  |  |  |  |  |  |  |  |  | 
                  | [TF-TD] UC-i  | TODO  | TODO | TODO | TODO  | TODO | TODO | TODO | TODO | TODO | TODO | TODO | TODO
Scripting API and Protocol mapping |  |  |  |  |  |  |  |  |  |  |  |  | 
                  | Home automation  | Yes TODO: discuss how personal the information is that is dealt with (behavior vs body)  | Yes TODO as before | Yes starts with owner can do all, else can do nothing, may have to add friends&family | Yes depends on netwok characteritic (nearfield vs widearea)  | Yes | Yes for human users, TODO for M2M | Yes TODO: consider deployment options (Cloud-based intemediaries) | Yes TODO: consider deployment options (Cloud-based intemediaries) | Yes | Yes but depends on whether multi-user components are in the game (portal in the Cloud) | Probably yes but for portal-style components in the Cloud rather than home-based components | Not now
Thing Discovery |  |  |  |  |  |  |  |  |  |  |  |  | 
                  | Finding things around me | Needed at least for consumer goods...  | TBD | Owner needs be able to excercise access control | Thing needs to be able to enforce access control according the owner's strategy  | Yes but not necessarily done by the thing | TBD | Yes | Yes | Yes | Open | TODO | TODO
                  | Finding things on my network  | TODO  | TODO | TODO | TODO  | TODO | TODO | TODO | TODO | TODO | TODO | TODO | TODO
                  | Searching in directories  | TODO  | TODO | TODO | TODO  | TODO | TODO | TODO | TODO | TODO | TODO | TODO | TODO
                  | Searching across peers  | TODO  | TODO | TODO | TODO  | TODO | TODO | TODO | TODO | TODO | TODO | TODO | TODO
                  | Accessing thing metadata  | TODO  | TODO | TODO | TODO  | TODO | TODO | TODO | TODO | TODO | TODO | TODO | TODO

Individual entries shall provide:
* A short indication whether a requirement applies (e.g. fully, partially, not) - best done in a coloring scheme
* Some (short) textual qualification reflecting the requirement aspects described in the catalogue. Take secure communication (confidentiality) as an example: the qualification should reflect if two-party or multi-party communications are to be protected and provide any other information that is relevant (such as preferences on the kind of cryptographic scheme - symmetric vs. asymmetric)

*Caveat: the UCs are not TF-specific. However from a communication and interaction perspective it seems best to cover the UCs by approaching the TFs. For that reason the table above reflects TFs in its structure*

#Requirements Catalogue

This artifact lists and defines the security and privacy requirements that are considered in the WoT IG. 

Also see the [security&privacy glossary](SecurityPrivacyGlossary.md) for the actual terms: this catalogue lists an defines the considered security and privacy requirements by selecting and referring/repeating original terms plus explaining their WoT relations (where needed). Well-known mechanisms that are used to implement such requirements are mentioned for illustration purposes only. This aims at readability and do not imply any statement of their fitness for WoT (see the [security&privacy landscape](SecurityPrivacyLandscape.md) for such statements).

## Privacy
The notion of privacy is human user-centric: it considers the right of human users to determine the degree to which she or he interacts with her or his environment. This applies to some IoT/WoT scenarios (e.g. health care) but not all (e.g. industrial control systems).

### Informational Self-Determination
Informational self-determination is concerned with the **sharing of personal information** with others. It aims at facilitating the user (to whom that information belongs) to act as **point-of-control** for this sharing. 

### Anonymization, Pseudonymization
Anonymization and pseudonymization **process personally-identifiable information**. 
* Pseudonymization obfuscates personally-identifiable information esp. identifiers in a way that facilitates tracing-back (but makes it hard for any outsider). 
* Anonymization obfuscates personally-identifiable information esp. identifiers in a way that does not facilitate tracing-back

## Authorization
The requirements in this section refer to the determination whether instructions or operations given to or requested at a thing or device are to be granted (hence performed) or rejected. Note that access control mechanisms natively serves authorization but may also be regarded/considered a privacy-supporting mechanism esp. for the case of user-managed access mechanisms.

### Authorization Management
The management of authorization is concerned with the **supply of the strategies** (policies/rules or decisions) that **govern/control the enforcement of authorization decisions**.
 
The authority of authorization management usually is the owner of a thing or device. This owner may be an individual or a legal entity. The owner may authorize others for using a device or thing. In that case the granted authorizations may or may not allowed 3rd parties to further delegate authorization. The owner may also authorize her/himself for using the own device or thing through a specific (3rd) party component.
 
A change of ownership implies the need to erase existing authorization strategies.

### Authorization Enforcement
The enforcement of authorization does **apply given authorization strategies** in order to **grant or deny instructions or operations** given to or requested at a thing or device. This requires to authenticate the actor who is sending the instruction (callers <X> should not be able to easily pretend to be 'John Doe' who is allowed to do the operation desired by <X>, see [security&privacy requirements, section Catalogue, subsection Authentication](SecurityPrivacyRequirements.md) ). 

The actual enforcement usually needs to be done upon the component that serves the requested resource or close to it. The decision making can be offloaded to another component. A special case of such decision making is the prompting of the (individual) owner where there is no a priori policy or strategy available. 

## Authentication
The requirements in this section refer to the corroboration of identity of system actors. This concerns the originators of requests or messages. Such actors present claimants and their peers present verifiers (of claimed identity). A thing or device may act as claimant and/or verifier. 

Note that "identity" refers to the set of information items that may but do not have to include identifiers which uniquely refer to a distinct actor; identity information may be comprised of non-unique properties (e.g. age, member-of). 

### Initial Authentication
During initial authentication an actor claims an identity and needs to **prove this claim according a specific scheme resp. algorithm**. Initial authentication may be initiated by the claimant or verifier. Devices/things may present a claimant and/or verifier.

Verifiers may also offload initial authentication to distinct components which verify claimed identity and report about the authentication event. This establishes the roles of an asserting party (conducting initial authentication and reporting about it) and relying parties (consuming such reports) and helps the system architecture by encapsulating the complex task of initial user authentication in a dedicated component

The actual authentication may be conducted according to an authentication strategy or policy that includes repeated/step-up authentication refining and generalizing the concept of initial authentication.

### Single-Sign-On
SSO in its usual notion is defined for human users as actors: it is about **sustaining initial (user) authentication across subsequent interactions with a specific service component in the network resp. transferring (user) authentication from one component to others**. This improves the user experience (reduce number of initial authentication events). (Single-)Logout reverts the SSO process or state.

As this actually is a user experience requirement it does not apply to things/devices as actors. TODO: discussion

## Secure Communications and Storage
The requirements in this section refer to the protection of data in communication exchanges and/or storage. In particular they refer to data exchanges with devices/things resp. data stored by devices/things but these requirements are not specific or limited to devices/things.

### Confidentiality
**Confidentiality (aka secrecy) protects messages resp. information against (unwanted) disclosure**. 

Confidentiality can be provided as a feature of the communication channel (e.g. SSL/TLS) as well as an application-level feature (e.g. S/MIME). The usual approach is to utilize a symmetric or asymmetric encryption scheme. Note that encryption natively serves confidentiality but may also be regarded/considered a privacy-supporting mechanism.

Moreover single-party interactions (e.g. secure storage for own use later on) have to be distinguished from two-party (e.g. request/response exchanges with a server) and multi-party (e.g. group communications) interactions. The impact of the number of parties is not so much on the level of cryptographic algorithms but rather on the side of the security protocol as well as the key management scheme

### Data Origin Authentication, Integrity
**Integrity allows to verify that messages resp. information was not manipulated in transit or storage**. **Data origin authentication allows to corroborate the source of messages and information.** 

Note: data origin authentication mechanisms usually imply entity authentication (see [security&privacy requirements, section Catalogue, subsection Authentication](SecurityPrivacyRequirements.md) ) but entity authentication does usually not imply data origin authentication for example:
* TLS (in its usual implementation) provides entity authentication for Web server as well as data origin authentication for HTTP response messages 
* HTTP basic authentication provides entity authentication for Web browsers (representing human users as their user agents) but does not provide data origin authentication for HTTP request messages

Data origin authentication and integrity can be provided as a feature of the communication channel (e.g. SSL/TLS) as well as an application-level feature (e.g. S/MIME). The usual approach is to utilize cryptographic checksums with symmetric or asymmetric keys.

Moreover single-party interactions (e.g. secure storage for own use later on) have to be distinguished from two-party (e.g. request/response exchanges with a server) and multi-party (e.g. group communications) interactions. The impact of the number of parties is not so much on the level of cryptographic algorithms but rather on the side of the security protocol as well as the key management scheme

TODO: mention replay protection, non-repudiation?

## Provisioning, Credentialing
Provisioning and credentialing are concerned with the supply and management of things/device metadata as well as credentials. This information is needed for a thing or device in order to engage in security protocol i.e. a distributed algorithm that provides security objectives (see [security&privacy requirements, section Catalogue, subsection Authentication](SecurityPrivacyRequirements.md)  and [security&privacy requirements, section Catalogue, subsection Secure Communications and Storage](SecurityPrivacyRequirements.md) ) 

### Credentialing
Credentialing refers to the **supply and management of credentials** (secrets, [symmetric or asymmetric cryptographic] keys) **by/for the thing or device**. Such credentials are needed to participate in security protocols. Corresponding objects may be created upon the thing or device or external to it. In the former case credential representations that allow peers to invert corresponding operations (e.g. decrypting or validating) need to be exported. In the latter case they need to be imported. Details depend on the actual security protocol and the (cryptographic) primitives employed by it.  

### Provisioning
Provisioning refers to the **supply and management of thing or device metadata** (identifiers, attributes, affiliations). Such metadata is needed in order to authorize instructions sent by things or devices (see [security&privacy requirements, section Catalogue, subsection Authorization](SecurityPrivacyRequirements.md) ). Such metadata is validated during authentication of things or devices (see [security&privacy requirements, section Catalogue, subsection Authentication](SecurityPrivacyRequirements.md) )

## Others 

### Rate Limitations 
Rate limitations refers to the suspension of certain callers and/or functionality when given (static or dynamic) limits of observed quantities are reached e.g. number of login errors 

### Intrusion Detection and Prevention
Intrusion detection refers to the screening of input data for malicious code or objects. Intrusion prevention also includes countermeasures in case such malicious code or objects are detected
