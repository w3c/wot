#### Access control (RFC 4949)
Protection of system resources against unauthorized access; a process by which use of system resources is regulated according to a security policy and is permitted by only authorized entities (users, programs, processes, or other systems) according to that policy.
#### Accountability (RFC 4949) 
The property of a system or system resource that ensures that the actions of a system entity may be traced uniquely to that entity, which can then be held responsible for its actions. 
#### Anonymity (RFC 4949)
The condition of an identity being unknown or concealed.
#### Asserting party (SAML) 
A system entity that makes assertions for consumption by another system entity.
#### Assertion (SAML)
A declaration of facts about system entities such as subjects.
#### Assertion (OAuth)
A package of information that allows identity and security information to be shared across security domains.
#### Attribute (SAML)
A distinct characteristic of an entity such as a subject or an object. An entity’s attributes are said to describe it.
#### (Entity) Authentication (NIST SP 600-83)
The process of establishing confidence in user identities.
#### (Entity) Authentication (RFC 4949)
The process of verifying a claim that a system entity or system resource has a certain attribute value. An authentication process consists of two basic steps:
*	Identification step: Presenting the claimed attribute value (e.g., a user identifier) to the authentication subsystem.
*	Verification step: Presenting or generating authentication information (e.g., a value signed with a private key) that acts as evidence to prove the binding between the attribute and that for which it is claimed

#### (Entity) Authentication (SAML)
To confirm a system entity’s asserted principal identity with a specified, or understood, level of confidence
#### Authorization
This term is used in the following connotations:
* Administrative connotation (RFC 4949): An approval that is granted to a system entity to access a system resource.
* Operative connotation (SAML): The process of determining whether a subject is allowed to have the specified types of access to a particular resource.

#### Authorization decision (SAML)
The result of an act of authorization. The result may be negative, that is, it may indicate that the subject is not allowed any access to the resource.
#### Authorization policy
Policy for rendering authorization decisions.
#### Bearer token (RFC 6750)
A security token with the property that any party in possession of the token (a "bearer") can use the token in any way that any other party in possession of it can. Using a bearer token does not require a bearer to prove possession of cryptographic key material (proof-of-possession). Examples: Web SSO product cookies, saml:Assertion objects exchanged according the SAML Web SSO profile (i.e. across Web browsers).
#### Capital good (Encyclopedia Britannica)
Tangible items such as buildings, machinery, and equipment produced and used in the production of other goods and services.
#### Cipher text (RFC 4949)
Data that has been transformed by encryption so that its semantic information content (i.e., its meaning) is no longer intelligible or directly available.
#### Claim (WS-Trust)
A claim is a statement made about a client, service or other resource (e.g. name, identity, key, group, privilege, capability, etc.).
#### Claim (A Guide to Claims-Based Identity and Access Control)
A statement about a subject; for example, a name, identity, key, group, permission, or capability made by one subject about itself or another subject. Claims are given one or more values and then packaged in security tokens that are distributed by the issuer 
#### Claimant (NIST SP 800-63)
A party whose identity is to be verified using an authentication protocol
#### Claims-based identity model (A Guide to Claims-Based Identity and Access Control)
A way to write applications so that the establishment of user identity is external to the application itself. The environment provides all required user information in a secure manner
#### Consumer good (Encyclopedia Britannica)
Any tangible commodity produced and subsequently purchased to satisfy the current wants and perceived needs of the buyer. Consumer goods are divided into three categories: durable goods, nondurable goods, and services.
#### Cryptographic primitive
Algorithm to transform (plain text) data e.g. encryption
#### Cryptographic object
Representation of transformed data along with metadata e.g. JOSE (note: raw representations e.g. cipher texts are often unusable for intended recipients; cryptographic objects are supersets that enrich raw representations by metadata e.g. algorithm or keying information)
#### (Data) Confidentiality (ISO 7498-2)
The property that information is not made available or disclosed to unauthorized individuals, entities, or processes.
#### (Data) Integrity (RFC 4949)
The property that data has not been changed, destroyed, or lost in an unauthorized or accidental manner.
#### Data (origin) authentication (ISO 7498-2)
The corroboration that the source of data received is as claimed.
#### Datagram Transport Layer Security (DTLS)
An IETF standard protocol providing transport-bound security (data authentication and confidentiality, entity authentication) for data exchanges over unreliable transports (UDP). An adaptation of the TLS protocol.
#### Encryption (RFC 4949) 
Cryptographic transformation of data (called "plaintext") into a form (called "ciphertext") that conceals the data's original meaning to prevent it from being known or used. If the transformation is reversible, the corresponding reversal process is called "decryption", which is a transformation that restores encrypted data to its original state.
#### Functionally trusted third party (Handbook of Applied Cryptography)
A TTP is said to be functionally trusted if the entity is assumed to be honest and fair but it does not have access to the secret or private keys of users.
#### Identity (NIST SP 800-63)
A set of attributes that uniquely describe a person within a given context.
#### Information-bound security
Security features (e.g. encryption for data confidentiality) that are provided as part of application-level data objects (e.g. S/MIME-protected mail messages). Information-bound security mechanisms (e.g. PKCS####7/CMS, XML Signature/Encryption, JSON Web Signature/Encryption) protect contents of application data objects – in a persistent fashion an independent from the means of data transport
#### Individual ownership
Resources (digital or physical goods) that are owned by individual human beings
#### Legal entity ownership
Resources (digital or physical goods) that are owned by legal entities (corporations, organizations)
#### Non-repudiation
The property to prevent the denial of (prior) actions, statements, commitments...by one of the parties involved.
Personally Identifiable Information (US Department of Education)
Information that can be used to distinguish or trace an individual’s identity either directly or indirectly through linkages with other information.
#### Personally Identifiable Information (NIST SP 800-122)
Any information about an individual maintained by an agency, including any information that can be used to distinguish or trace an individual‘s identity, such as name, social security number, date and place of birth, mother‘s maiden name, or biometric records; and any other information that is linked or linkable to an individual, such as medical, educational, financial, and employment information
#### Plain text (RFC 4949)
Data that is input to an encryption process. 
#### Policy (RFC 4949)
A plan or course of action that is stated for a system or organization and is intended to affect and direct the decisions and deeds of that entity's components or members. 
#### Policy Decision Point (SAML)
A system entity that makes authorization decisions for itself or for other system entities that request such decisions.
#### Policy Enforcement Point (SAML)
A system entity that requests and subsequently enforces authorization decisions.
#### Privacy (RFC 4949)
The right of an entity (normally a person), acting in its own behalf, to determine the degree to which it will interact with its environment, including the degree to which the entity is willing to share its personal information with others. 
#### Proof token (cf. bearer token)
A security token with the property that a party in possession of the token must also prove possession of associated cryptographic key material (by means of computing e.g. cryptographic checksums for nonce values). Examples: X.509 certificates as utilized in SSL/TLS or DTLS.
#### Relying party (SAML)
A system entity that decides to take an action based on information from another system entity.
#### Secure Sockets Layer (SSL)
A vendor-proprietary protocol providing transport-bound security (data authentication and confidentiality, entity authentication) for data exchanges over reliable transports (TCP).
#### Security protocol
Protocol to exchange cryptographic objects or security tokens e.g. SSL/TLS or DTLS
#### Security token
(Cryptographic) objects to make assessments about system actors e.g. JWT
#### Security token (WS-Trust)
A security token represents a collection of claims.
#### Security Token Service (WS-Trust)
A service that is concerned with the issuance/renewal/validation/cancelation of security tokens.
#### Single Sign-On (RFC 4949)
An authentication subsystem that enables a user to access multiple, connected system components (such as separate hosts on a network) after a single login at only one of the components.
#### Transport-bound security
Security features (e.g. encryption for data confidentiality) that are provided as part of transport. Transport-bound security mechanisms (e.g. SSL/TLS or DTLS, IPSec) protect data in transit between the endpoints implementing the security protocol – in a transient fashion and independent from the content of the transferred data
#### Transport Layer Security (TLS)
An IETF standard protocol providing transport-bound security (data authentication and confidentiality, entity authentication) for data exchanges over reliable transports (TCP). The successor of the SSL protocol.
#### Unconditionally trusted third party (Handbook of Applied Cryptography)
A TTP is said to be unconditionally trusted if it is trusted on all matters.
#### Verifier (NIST SP 800-63)
An entity that verifies the claimant’s identity by verifying the claimant’s possession and control of a token using an authentication protocol. To do this, the verifier may also need to validate credentials that link the token and identity and check their status.
#### Veronymous
Information (e.g. identifiers, names, addresses) that is revealing a user’s real-world identity
