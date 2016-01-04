''Note: current contents present an initial draft state. They serve the discussion in the WoT IG''

#Summary
The WoT provides distributed IT-systems. The study of distributed system protection started soon after their invention i.e in the 60/70ies. So there is lots of prior art in security&privacy.

But WoT needs new security&privacy tools that are not yet present in the current toolbox. New security&privacy tools for WoT will come in 2 forms:
*  New security&privacy tools that change form-factors of existing tools (smaller, lighter...)  i.e. security&privcy tools doing old tricks in new forms
* New security&privacy tools that do new tricks

These new security&privacy tools need to come as (broadly resp. industry/domain-wide) accepted standards. They do not yet exist, they do emerge right now.

This page provides an overview of the security&privacy landscape for WoT. Following child pages further detail the picture:
* [[Design-Time Security&Privacy Means|Design-time means]]: means to build/realize  security&privacy architectures for WoT
* [[Runtime Security&Privacy Means|Runtime means]]: means to understand the security&privacy status of a WoT system and keep it sane

# On the Need for Security and Privacy
Things can reveal/expose personal user data related to e.g. the body such as heartbeat rates or habbits such as lightning/heating practices. This establishes '''privacy''' as a primary concern in WoT. In the first place this relates to things that are owned/used by individuals esp. consumer goods. Privacy can also concern things owned/used by legal entities e.g. capital/investment goods such as health care equipment. But not all things owned/used by legal entities are subject to privacy concerns as WoT scenarios do exist which do not process individual user data such as industrial control systems

While actual things themselves may be of low value (say <100$) they may control (parts of) a high value assets such as smart locks control access to homes or offices/factories. This establishes '''security''' as a primary concern in WoT. 

The supply of security and privacy features depends on building-blocks (e.g. specific mechanisms such as cryptographic algorithms) and best-practices (e.g. guidelines, frameworks) supporting the product/solution creation-phase as well as means for assessing the product/solution sanity during operation-phase.

# Inclusion of Physical Goods
The inclusion of physical goods is the key differentiator between WoT on the on hand and the Web-of-Services resp. the traditional Web ('Web-of-Pages') on the other hand.  

There are traditional security and privacy requirements which translate to WoT in a straight-forward manner such as ''user authentication''->''device/things authentication''. For such requirements security and privacy-enabling mechanisms were established by other domains such as office/enterprise IT. Corresponding standards do usually exist and may apply or may be translated to WoT. Note that constraints (number of instances, computing power, memory etc.) do change when considering the WoT image of a traditional requirement such as the authentication of a caller.

The inclusion of physical goods also leads to security and privacy requirements as well as constraints with no real/good analogies in the digital World. These requirements resp. constraints are not yet covered by security and privacy technologies developed for existing domains. This includes security and privacy requirements as well as constraints such as:
* Software update/patching
* Things discovery authorization
* Managing the authorization to authorize
See [[Security&Privacy Challenges]] for more information on new challenges related to WoT security and privacy

# Standards for Security&Privacy
The W3C IG WoT is considering cross as well as same-domain interactions:
* For interactions that cross domains (i.e. there is no single vendor/provider that designs/produces/supplies all components that interact in a WoT scenario) standards for security (authentication and authorization, secure communications along with their preliminaries esp. the supply of identifiers and credentials) provide interoperability AND reuse. Common security standards are mandatory i.e. things cannot be done without
* For interactions in the same-domain standards for security provide reuse

Hence standards for security are mandatory for interoperable solutions. This refers to conventions for security&privacy that are broadly resp. industry or application domain-wide accepted.

This state-of-the-art survey does focus on existing or emerging standards for WoT security and privacy.

# Origin/Heritage of Security and Privacy Technologies
Numerous security and privacy-enabling mechanisms and solutions do already exists. Prominent examples are Kerberos, SSL/TLS and OAuth. 

They were created to serve the needs encountered in office/enterprise IT(e.g. Kerberos), the classical Web (e.g. SSL/TLS) as well as new Web application styles (service-oriented applications, apps/REST APIs, e.g. OAuth). These mechanims often are very mature i.e respresent broadly accepted standards that are in large-scale production use. 

Such prior-art mechanisms may help to address the security&privacy of (parts of) WoT scenarios but there is no guarantee that a (mature) security or privacy mean with a non-WoT origin/heritage does present a good match for WoT. For security/privacy mechanisms with non-WoT origin, '''fitness checks''' are  needed.   

Security and privacy mechanism with WoT origin are work-in-progress nowadays. They do not yet present the same maturity level (not yet broadly accepted standards, not yet in large-scale protection use).  Hence (and for the time being) '''maturity checks''' are needed for security/privacy mechanisms with WoT origin.

# Architectural Impact of Security and Privacy Technologies
Different security technologies do have different impact on the architecture of WoT systems:
* Some affect the core from a solution design and realization perspective e.g. authentication and authorization such as the representation and handling of authenticated callers throughout a codebase. 
* Other security technologies may be added or replaced easily such as transport-oriented security mechanisms. 

The former require more attention during the architecture and design process than the latter.

# State-of-the-Art
This section digests state-of-the-art of security and privacy means for WoT.
## Overall
This section captures the matching between security&privacy requirements as well as means. This section is meant to provide a compass for WoT projects. For more details see below as well as child pages.

   -   | Informational Self-Determination | Anonymization, Pseudonymization | Authorization Management | Authorization Enforcement |  Initial Authentication | Single-Sign-On | Confidentiality | Data Origin Authentication, Integrity |  Credentialing |  Provisioning | Rate Limitations | Intrusion Detection and Prevention
------ | -------------------------------- | ------------------------------- | ------------------------ | ------------------------- |  -------------- | -------------- | --------------- | ------------------------------------- |  ------------- |  ------------ | ----------- | -----------------------------
TODO | TODO | TODO | TODO | TODO |  TODO | TODO | TODO | TODO |  TODO |  TODO | TODO | TODO

## Clusters
This section considers specific clusters of security and privacy requirements to the state-of-the-art assessment further drill-down. See child pages for further details.

###Privacy
Privacy is a concern of some but not all WoT scenarios (security is a concern of all). Privacy also is - at its core - a theme that also belongs to law rather than being a technology-only topic. It intersects with information technology when considering privacy-enabling mechanisms.

Some security mechanisms also are privacy-enhancing mechanisms esp. those from the clusters authorization (when used as means to control access to own resources/information about self) and secure communications/storage. Such privacy-enhancing mechanisms do exist/evolve for WoT (see corresponding sections below). 

Privacy-enabling mechanisms that largely extend beyond that resp. their initiatives were not yet encountered.

###Authentication
Things may appear as claimants (callers/callees) as well as verifiers (ditto) in (initial) authentication. This may employ various schemes resp. types of credentials including shared secrets, shared secret keys and public/private keys. The presence of supporting components (e.g. KDCs in Kerberos) that allows resources servers to offload the complexity of implementing initial authentication is an important differentiator for the design of authentication systems:
* The actual authentication protocol(s) need to be covered in standards when such supporting components are absent
* The authentication subsystem interactions (initial authentication between claimant and supporting component, subsequent/secondary authentication between supporting component and verifier) need to be covered in standards when such supporting components are present

To address use cases in office/enterprise IT as well as the traditional Web numerous standards emerged for authentication protocols and authentication subsystems including:
* Authentication protocols (or parts thereof): EAP, HTTP authentication, OATH, SASL, SSL/TLS/DTLS 
* Authentication systems (or parts thereof): FIDO, JWT, Kerberos, OpenID Connect, SAML, WS-Federation
Established technologies from other domains can help realizing authentication subsystems for WoT. However the given constraints do vary in WoT requiring technology fitness-checks as well as adaptations. Note that interoperbility in cross-domain scenarios requires the involved things to share authentication protocol and system options. This suggests a need for a WoT-specific profiling for already existing authentication technologies that are suitable for WoT.

In addition to technology options from non-WoT domains, several inititiaves focus on elaborating standards for WoT-specific authentication. This includes:
* Authentication protocols: DICE, TWAI 
* Authentication systems: -
These initiatives did not yet evolve to the same maturity level that authentication technologies in office/enterprise IT as well as the traditional Web have developed over the past years.

###Authorization
Things may appear as requestors (callers) as well as resource servers (callees) in authorization. This may employ various strategies (a priori/posteriori policies) and models (discretional authorization by individual resource owners, enterprise authorization where legal entity as resource owners delegate authorization policy making). The actual burden of implementing authorization is allocated with the resource server. To relief resource servers from parts of this task, following approaches are commonly used (see RFC 2904):
* Pull: resource servers that offload authorization decision making to supporting components in the same domain. These are online components that reside in the same domain
* Push: resource servers that offload authorization decision making as well as authentication to supporting components in the same domain. These are online components that reside in the same domain
* Agent: resource servers that offload authorization decision making and enforcement as well as authentication to supporting components in the same domain. These are inline components that reside downstream from resource servers in the same domain
The standardization needs do vary with the chosen approach:
* Pull: authorization is a local matter of the resource owner domain. No standardization of authorization needed
* Push: authorization is a common concern between requesting party and resource owner domains. Standardization is needed with respect to the acquisition and supply of objects expressing authorization decisions 
* Agent: authorization is a local matter of the resource owner domain. A pull or push model may be employed between callers and agents. See above 

Hence the remainder of this section does consider the push model. In this model authorization information traverses the domain boundaries between requesting parties and resource owners - leading to standardization needs. Moreover, current WoT technology initiatives appear to prefer the push model over the pull model.

To address use cases in office/enterprise IT as well as the traditional Web standards emerged for conducting authorization exchanges according the push model including: Kerberos, OAuth, UMA

Adaptations of the established/known approaches are needed to meet WoT constraints. Several initiatives focus on elaborating standards for WoT-specific authorization according the push model including: Core Authz, DCAF, OAuth-for-CoAP, UMA-for-CoAP. These initiatives did not yet evolve to the same maturity level that authorization technologies (push model) in office/enterprise IT as well as the traditional Web have developed over the past years. Following should be noted:
* Some initiatives tightly couple security token and request/response specification: Core Authz, DCAF
* Some initiatives do not honor the supporting component for the client side introduced by IETF ACE: OAuth-for-CoAP, UMA-for-CoAP

###Secure Communications and Storage
Things may appear as signer or verifier (for signing use case) as well as encrypter and or decrypter (for encryption use cases). This is performed according various strategies (transport-bound vs. information-bound protection)

To address use cases in office/enterprise IT as well as the traditional Web several standards emerged for secure communications and storage including:
* Transport-bound security: IPSec, SSH, SSL/TLS/DTLS
* Information-bound security: CMS, JOSE, PKCS, S/MIME, XML Encryption/Signature

Adaptations of the established/known approaches are needed to meet WoT constraints. Several initiatives focus on elaborating standards for WoT-specific secure communications and storage including: 
* Transport-bound security: DICE
* Information-bound security: COSE, OSCoAP
These initiatives did not yet evolve to the same maturity level that secure communications and storage technologies in office/enterprise IT as well as the traditional Web have developed over the past years.

###Provisioning, Credentialing
Things needs to be described (identifiers, attributes, affiliations) as actors of distributed systems as well as supplied with credentials allowing hem to claim/prove to be certain actors:
* Authentication and authorization requires the supply of identfiers, attributes, affiliations as well as credentials (shared secret keys, public/private keys)
* Secure communication and storage requires the supply of credentials (shared secret keys, public/private keys)
To address use cases in office/enterprise IT as well as the traditional Web numerous standards emerged for provisioning and credentialing including: DSML, LDAP, OAuth (here: client registration/management), PBKDF, PKI, SCIM, SPML
Since given constraints do vary in WoT technology adaptations are needed. This involves aspects such as metadata models, actor roles, interaction models. Corresponding tasks require standards when requesting party and resource owner components belong to different domains. The concerns of provisioning, credentialing appear underilluminated in current WoT security and privacy standardization initiatives

# Conclusions
There are no commonly accepted protocols standards for authenticating and authorizing things resp. devices as of now. Current projects do either not address these challenges or tend to create silos. The IETF ACE working group happens to be leading in that space:
* ACE has a sound problem statement and high-level approach
* But ACE does not yet provide a solution - for the time being a plethora of not-yet-integrated approaches for expressing access tokens as well as acquiring them in request/response protocols (see child page) are being discussed. The current stage of elaboration might be regarded "brainstorming". Moreover, questions around system dynamics and bootstrapping are not yet fully illuminated. This includes aspects such as:
* Creation/management of token issuance policies (in a possibly automated fashion)
* Performing/protecting component registration
* Managing the authorization to authorize
* Things discovery authorization
While standards-based authentication and authorization techniques for WoT do evolve right now, the W3C IG WoT should check for: 
* Multiple security token types for different application domains(CoAP...)/use cases(consumer/industry)/security models(enc/sign, bearer/PoP)/encodings (JSON, CBOR...)/topologies (3/4/n-party)/delivery models (by-value, by-ref). The corresponding framework needs to be extensible (''create-your-own type in case the already defined ones do not solve your issue'')
* A request/response framework for acquiring and handling such tokens with different protocol bindings (HTTP/CoAP...). Request/response messages and security token (type) specifications should be decoupled i.e. the same request/response framework should allow the handling of various security token types.

For secure communications on transport-level, DTLS as well as TLS present commonly accepted standards. Their profiling/optimization for constrained devices and networks is a task that is currently ongoing. Note that securing communications on transport-level comes with limitations in the end-to-end security span that is achievable. For secure communications on application-level and secure storage, standards do exist for representing encrypted and signed data in JSON (a form-factor not suitable for very constrained components). Corresponding work is ongoing for CBOR (a form-factor suitable for very constrained components).

Moreover there are no commonly accepted standards for registering things resp. devices and supplying identity (meta-)data and credentials about things resp. devices as of now. Current projects do either not address these challenges or tend to create silos.

It is a common characteristic of the new generation security and security-enabling protocols (invented >2010 e.g. OAuth, SCIM) to distribute complexity unevenly:
* The server or responder-side is as complex as in the classic approaches (e.g. Kerberos, SAML)
* The client or requestor-side complexity is orders of magnitude smaller than in classic approaches
This simplifies the security resp. security-enabling stack that has to be available on client-side. But a remaining burden is the lack of commonly-accepted local client-side APIs that would allow developers to integrate with security and security-enabling functionality by utilizing a client-side security resp. security-enabling stack rather than having to build it by themselves (or rely on offerings that are provider proprietary). The trick that is aimed at is already displayed by the [http://www.w3.org/TR/XMLHttpRequest/ XMLHttpRequest] API which allows developers of browser-based apps to utilize/re-use HTTP stacks provided by Web browser components.
