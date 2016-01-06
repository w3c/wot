*Note: current contents present an initial draft state. They serve the discussion in the WoT IG*

#Finding
The WoT provides distributed IT-systems. The study of distributed system protection started soon after their invention i.e. in the 60/70ies. So there is lots of prior art in security and privacy.

But WoT needs new security and privacy tools that are not yet present in the current toolbox. New security and privacy tools for WoT will come in 2 forms:
* New tools that change form-factors of existing tools (smaller, lighter...)  i.e. tools doing old tricks in new forms
* New tools that do new tricks

These new security and privacy tools need to come as (broadly resp. industry/domain-wide) accepted standards. They do not yet exist, they do emerge right now.

This page elaborates on this finding and provides the WoT security and privacy landscape. Following documents do further detail this picture:
* [Design-time means](https://www.w3.org/WoT/IG/wiki/Design-Time_Security%26Privacy_Means): assessing means to build/realize security and privacy architectures for WoT
* [Runtime means](https://www.w3.org/WoT/IG/wiki/Runtime_Security%26Privacy_Means): assessing means to understand the security and privacy status of a WoT system and keep it sane

# On the Need for Security and Privacy
While actual things themselves may be of low value (say <100$) they can control (parts of) high value assets such as a homes or offices/factories controlled by smart locks. This establishes **security** as a primary concern in WoT. 

Things can reveal/expose personal user data related to e.g. the human body such as heartbeat rates or habits such as lightning/heating practices. This establishes **privacy** as a primary concern in WoT. In the first place this relates to things that are owned/used by individuals esp. consumer goods. Privacy can also concern things owned/used by legal entities e.g. capital/investment goods such as health care equipment. But not all things owned/used by legal entities are subject to privacy concerns as WoT scenarios do exist which do not process individual user data such as industrial control systems

The supply of security and privacy features depends on building-blocks (e.g. specific mechanisms such as cryptographic algorithms) and best-practices (e.g. guidelines, frameworks) supporting the product/solution creation-phase as well as means for assessing the product/solution sanity during its operation-phase.

# Inclusion of Physical Goods
The inclusion of physical goods is the key differentiator between WoT on the on hand and the Web-of-Services resp. the traditional Web ('Web-of-Pages') on the other hand.  

There are traditional security and privacy requirements which translate to WoT in a straight-forward manner such as *user authentication*->*device/things authentication*. For such requirements security and privacy-enabling mechanisms were established in other domains such as office/enterprise IT. Corresponding standards and best practices do exist and may apply or may be translated to WoT. Note that constraints (number of instances, computing power, memory, IO capabilities etc.) do change when considering the WoT image of a traditional requirement such as the authentication of a caller.

The inclusion of physical goods also leads to security and privacy requirements as well as constraints with no real/good analogies in the digital World. These requirements resp. constraints are not yet covered by security and privacy technologies developed for existing domains. This includes security and privacy requirements as well as constraints such as:
* Software update/patching
* Things discovery authorization
* Managing the authorization to authorize
See [here](SecurityPrivacyChallenges.md) for more information on the aspects that make a WoT security and privacy a different game than Web-of-Services or Web-of-Things security and privacy

# Standardization
The W3C IG WoT is considering same as well as cross-domain interactions:
* For interactions in the same-domain standards for security provide reuse
* For interactions that cross domains (i.e. there is no single vendor/provider that designs/produces/supplies all components that interact in a WoT scenario) standards for security (authentication and authorization, secure communications provide interoperability AND reuse. Common security standards are mandatory i.e. things cannot be done without

This makes standards for security and privacy mandatory from the perspective of the WoT IG. This refers to conventions for implementing security and privacy that are broadly resp. industry or application domain-wide accepted.

Note that state-of-the-art survey provided herein does consider on existing and emerging standards for WoT security and privacy.

# Origin/Heritage of Security and Privacy Technologies
Numerous security and privacy-enabling mechanisms and solutions do already exist. Prominent examples are Kerberos, SSL/TLS and OAuth. 
They were created to serve the needs encountered in office/enterprise IT (e.g. Kerberos), the classical Web (e.g. SSL/TLS) as well as new Web application styles esp. service-oriented applications, apps/REST APIs (e.g. OAuth). Such mechanisms often are very mature i.e. represent broadly accepted standards that are in large-scale production use. 

Such prior-art mechanisms may help to address security and privacy for (parts of) WoT scenarios but there is no guarantee that a (mature) security or privacy means with a non-WoT origin/heritage does present a good match for WoT. For security/privacy mechanisms with non-WoT origin, **fitness checks** are  needed.   

Security and privacy mechanism with WoT origin are work-in-progress nowadays. They do not yet present the same maturity level (not yet broadly accepted standards, not yet in large-scale protection use).  Hence (and for the time being) **maturity checks** are needed for security/privacy mechanisms with WoT origin.

# Architectural Impact of Security and Privacy Technologies
Different security technologies do have different impact on the architecture and implementation of WoT systems:
* Some affect the core from a solution design and realization perspective e.g. authentication and authorization such as the representation and handling of authenticated callers throughout a codebase. 
* Other security technologies may be added or replaced easily such as transport-oriented security mechanisms. 
The former require more attention during the architecture and design process than the latter.

# Distribution of Complexity
Security mechanisms invented <2010 e.g. Kerberos, SSL/TLS, SAML do distribute logical and computational complexity evenly over client and server components

It is a common characteristic of the new generation security and security-enabling protocols (invented >2010 e.g. OAuth, SCIM) to distribute complexity unevenly:
* The server or responder-side is as complex as in classic approaches (e.g. Kerberos, SAML)
* The client or requestor-side complexity is orders of magnitude smaller than in classic approaches
This simplifies the security resp. security-enabling stack that has to be available on client-side. This new school-approach is likely to present a better fit for WoT than the even distribution of complexity. 

# State-of-the-Art
This section digests state-of-the-art of security and privacy means for WoT.

## Overall
This section captures the matching between the considered security and privacy requirements (see [here](SecurityPrivacyRequirements.md)) as well as the assessed means (see [here]( https://www.w3.org/WoT/IG/wiki/Design-Time_Security%26Privacy_Means)). This section is meant to provide a compass for WoT projects. For more details see below.

   -   | Informational Self-Determination | Anonymization, Pseudonymization | Authorization Management | Authorization Enforcement |  Initial Authentication | Single-Sign-On | Confidentiality | Data Origin Authentication, Integrity |  Credentialing |  Provisioning | Rate Limitations | Intrusion Detection and Prevention
------ | -------------------------------- | ------------------------------- | ------------------------ | ------------------------- |  -------------- | -------------- | --------------- | ------------------------------------- |  ------------- |  ------------ | ----------- | -----------------------------
UMA | **Core objective** (through user-managed authorizations)  | - | Addressed (users as primary policy management authorities) | Addressed (push model, HTTP)  | - | - | - | - |  - |  - | - | -
OATH | - | - | - | - |  **Core objective** (time, event or challenge-based OTP schemes)  | - | - | - |  Addressed (symmetric key containers and provisioning of symmetric keys) | - | Side concern (throttling for event-based schemes) | -
OpenID Connect | Side concern (users decide if their identity information is supplied to relying parties | Implementation-specific  | - | - |  **Core objective** (requests reports about [initial] authentication events) | **Core objective** (SSO across organizations/domains and in the same domain)  | - | - |  See OAuth  |  See OAuth  | - | -
JWT | - | - | - | - | **Core objective** (reports about [initial] authentication events)  | Side concern (allows to transfer and sustain information about authentication events) | - | - | - | - | - | -
FIDO | - | **Core objective** (uses long-lived public key associations instead user names/identifiers)  | - | - | **Core objective** (framework for initial user authentication in the Web)  | - | - | - |  Side concern (defines the creation/supply of public/private keys to FIDO clients) | - | - | -
TWAI | - | - | - | - |  **Core objective** (supports server and client authentication on application level)  | - | - | - |  - |  - | - | -
OAuth | - | - | **Core objective** (users or legal entities as policy management authorities)  | **Core objective** (push model, HTTP)  | - | - | - | - |  Side concern (registration/management of OAuth clients)  | Side concern (registration/management of OAuth clients)  | - | -
OAuth-for-CoAP | - | - | Core objective (legal entities as policy management authorities) | Core objective (push model, CoAP) |  - (DTLS-based client authentication) | - (no user actor) | - | - |  - |  - | - | -
UMA-for-CoAP | As for native UMA  | - | As for native UMA  | As for native UMA  | - | - | - | - | - | - | - | -
DCAF | - | - | **Core objective** (legal entities as policy management authorities)  | **Core objective** (push model, CoAP) | - | - | - | - | - | - | - | -
CoRE Authz | - | - | **Core objective** (legal entities as policy management authorities) | **Core objective** (push or pull model, CoAP)  | - | - | - | - | - | - | - | -
DTLS | - | - | - | - | **Core objective** (transport-level client/server authentication) | - (does not define the transfer of authentication state across network servers) | **Core objective** (transport-level message encryption) | **Core objective** (transport-level signature) | - | - | - | -
DICE | - | - | - | - | As for DTLS  | - | As for DTLS | As for DTLS | - | - | - | -
JOSE | - | - | - | - | - | - | **Core objective** (application-level encryption, JSON)  | **Core objective** (application-level signature, JSON)  | - | - | - | -
COSE | - | - | - | - | - | - | **Core objective** (application-level encryption, CBOR)  | **Core objective** (application-level signature, CBOR)  | - | - | - | -
OSCOAP | - | - | - | - | - | - | **Core objective** (application-level encryption, CBOR or JSON)  | **Core objective** (application-level signature, CBOR or JSON)  | - | - | - | -
SCIM | - | - | - | - | - | - | - | - | - | **Core objective** (manage metadata about system actors-not limited to users)  | - | -

## Clusters
This section presents the WoT security and privacy landscape according the considered requirements (see [here](SecurityPrivacyRequirements.md) ).

###Privacy
Privacy is a concern of some but not all WoT scenarios). Privacy is a topic that is also a part of law/legal rather than being a technology-only topic. It intersects with information technology with respect to privacy-enabling mechanisms.

Some security mechanisms also are privacy-enhancing mechanisms esp. those from the clusters authorization (when used as means to control access to own resources/information about self) and secure communications/storage. Such privacy-enhancing mechanisms do exist/evolve for WoT (see corresponding sections below). 

Privacy-enabling mechanisms that largely extend beyond that resp. their initiatives were not yet encountered.

###Authentication
Things may appear as claimants (callers/callees) as well as verifiers (ditto) in (initial) authentication. This may employ various schemes resp. types of credentials including shared secrets, shared secret keys and public/private keys. The presence of supporting components (e.g. KDCs in Kerberos) that allow resource servers to offload the implementation of initial authentication is an important differentiator for the design of authentication systems:
* The actual initial authentication protocol(s) is conducted between the claimant and the resource server (if absent) or the claimant and a supporting component (if present). These exchanges need to be covered by standards 
* If present additional authentication subsystem interactions happen (initial authentication between claimant and supporting component, subsequent/secondary authentication between supporting component and verifier).  These exchanges also need to be covered by standards 

To address use cases in office/enterprise IT as well as the traditional Web numerous standards emerged for authentication protocols and subsystems including:
* Authentication protocols (or parts thereof): EAP, HTTP authentication, OATH, SASL, SSL/TLS/DTLS 
* Authentication systems (or parts thereof): FIDO, JWT, Kerberos, OpenID Connect, SAML, WS-Federation
Established technologies from other domains can help realizing authentication subsystems for WoT. However the given constraints do vary in WoT. This requires technology fitness-checks as well as adaptations. Note that interoperability in cross-domain scenarios requires the involved things to share authentication protocol and system options. This suggests a need for a WoT-specific profiling for already existing authentication technologies which are suitable for WoT.

In addition to technology options from non-WoT domains, several initiatives focus on elaborating standards for WoT-specific authentication. This includes:
* Authentication protocols: DICE, TWAI 
* Authentication systems: -
These initiatives did not yet evolve to the same maturity level that authentication technologies in office/enterprise IT as well as the traditional Web have developed over the past years.

###Authorization
Things may appear as requestors (callers) as well as resource servers (callees) in authorization. This may employ various strategies (a priori/posteriori policies) and models (discretional authorization by individual resource owners, enterprise authorization where legal entities as resource owners delegate the task of authorization policy making). The duty of enforcing authorization is allocated with the resource server. To relief resource servers from parts of this task, following approaches are commonly used (see RFC 2904):
* Pull: resource servers that offload authorization decision making to supporting components. These are online components that reside in the same domain
* Push: resource servers that offload authorization decision making as well as authentication to supporting components. These are online components that reside in the same domain
* Agent: resource servers that offload authorization decision making and enforcement as well as authentication to supporting components. These are inline components that reside upstream from resource servers in the same domain

The requirements on standardization do vary with the chosen approach:
* Pull: authorization is a local matter of the resource owner domain. No standardization of authorization needed for cross-domain purposes
* Push: authorization is a joined concern between requesting party and resource owner domains. Standardization is needed with respect to the acquisition and supply of objects expressing authorization decisions 
* Agent: authorization is a local matter of the resource owner domain. A pull or push model may be employed between callers and agents. See above 

Hence the remainder of this section does focus on the push approach. In this model authorization information traverses the domain boundaries between requesting parties and resource owners - leading to standardization needs. 

To address use cases in office/enterprise IT as well as the traditional Web standards emerged for conducting authorization exchanges according the push model including: Kerberos, OAuth, UMA

Adaptations of the established/known approaches are needed to meet WoT constraints. Several initiatives focus on elaborating standards for WoT-specific authorization according the push model including: Core Authz, DCAF, OAuth-for-CoAP, UMA-for-CoAP. These initiatives did not yet evolve to the same maturity level that authorization technologies (push model) in office/enterprise IT as well as the traditional Web have developed over the past years. Following should be noted:
* Some initiatives tightly couple security token and request/response specification: Core Authz, DCAF
* Some initiatives do not honor the supporting component for the client side (the so-called Authorization Manager [short: AM]) introduced by IETF ACE: OAuth-for-CoAP, UMA-for-CoAP

To further elaborate on the OAuth approach:
* Some OAuth grant types (these are predefined sequences of interaction) assume *requesting party*=*resource owner* (OAuth authorization code and implicit grant types). This situation may be the case for some WoT use cases but not in general
* All OAuth exchanges assume the client component on side of the requesting party to be aware of all OAuth authorization server (these are the components to which the resource servers externalize security-enabling tasks) for the resource servers they want to interact with (resource servers in the same domain can share an OAuth authorization server). This includes the need to support a protocol stack that is shared with these OAuth authorization servers, to hold registratons with them and to interact with them. This proposition does not match contrained clients well.
* OAuth defines the notion of a *token* (aka *access token* or *security token*) on an abstract level and defines aquisition as well as management protocols on a concrete level but does not define concrete token contents

Hence OAuth (adapted to WoT) does not provide the full solution for WoT on the one hand. On the other hand OAuth is extensible and allows (resp. requires) to define:
* New grant types
* New parameters in predefined grant types
* Own token contents
In addition new endpoints providing new functionality may be added. So OAuth can well provide a baseline for inheriting tocken acquisition and management frameworks for WoT. This also seems to be the preferred approach in the IETF ACE working group.

###Secure Communications and Storage
Things may appear as signer or verifier (for the signing use case) as well as encrypter and or decrypter (for the encryption use cases). These task may be performed according various strategies (transport-bound vs. information-bound protection)

To address use cases in office/enterprise IT as well as the traditional Web several standards emerged for secure communications and storage including:
* Transport-bound security: IPSec, SSH, SSL/TLS/DTLS
* Information-bound security: CMS, JOSE, PKCS, S/MIME, XML Encryption/Signature

Adaptations of the established/known approaches are needed to meet WoT constraints. Several initiatives focus on elaborating standards for WoT-specific secure communications and storage including: 
* Transport-bound security: DICE
* Information-bound security: COSE, OSCoAP
These initiatives did not yet evolve to the same maturity level that secure communications and storage technologies in office/enterprise IT as well as the traditional Web have developed over the past years.

###Provisioning, Credentialing
Things needs to be described (identifiers, attributes, affiliations) as actors of distributed systems as well as supplied with credentials allowing them to claim/prove to represent certain instances:
* Authentication and authorization requires the supply of identifiers, attributes, affiliations as well as credentials (shared secrets, shared secret keys, public/private keys)
* Secure communication and storage requires the supply of credentials (shared secret keys, public/private keys)

To address use cases in office/enterprise IT as well as the traditional Web numerous standards emerged for provisioning and credentialing including: DSML, LDAP, OAuth (here: client registration/management), PBKDF, PKI, SCIM, SPML

Since given constraints do vary in WoT technology adaptations are needed. This involves aspects such as metadata models, actor roles, interaction models. Corresponding tasks require standards when requesting party and resource owner components belong to different domains. The concerns of provisioning, credentialing appear under illuminated in current WoT security and privacy standardization initiatives

# Summary
As of today there are no commonly accepted protocol standards for authenticating and authorizing things resp. devices. Current projects do either not address these challenges or create silo’ed solutions. The IETF ACE working group happens to be the leading initiative in order to overcome this limitation:
* ACE has a sound problem statement and high-level approach
* But ACE does not yet provide a solution - for the time being a plethora of not-yet-integrated approaches for expressing access tokens as well as acquiring them in request/response protocols (see [here](https://www.w3.org/WoT/IG/wiki/Design-Time_Security%26Privacy_Means) ) are being discussed. The current stage of elaboration might be regarded "brainstorming". Moreover, questions around system dynamics and bootstrapping are not yet fully illuminated. This includes aspects such as:
  * Creation/management of token issuance policies (in a possibly automated fashion)
  * Performing/protecting component registration
  * Managing the authorization to authorize
  * Things discovery authorization

From the perspective of the W3C IG WoT the protocol standards for authenticating and authorizing things resp. devices should address/enable: 
* A variety of security token types for different application domains(CoAP...)/use cases(consumer/industry)/security models(enc/sign, bearer/PoP)/encodings (JSON, CBOR...)/topologies (3/4/n-party)/delivery models (by-value, by-ref). The corresponding ecosystem needs to be extensible (*create-your-own security token type in case the already defined ones do not solve your issue*)
* A (single) request/response framework for acquiring and handling such tokens with different protocol bindings (HTTP/CoAP...). Request/response messages and security token (type) specifications should be decoupled i.e. the same request/response framework should allow the handling of various security token types. The corresponding framework needs to be extensible (*create-your-own exchange in case the already defined ones do not solve your issue*)

For secure communications on transport-level, DTLS as well as TLS present commonly accepted standards. Their profiling/optimization for constrained devices and networks is a task that is currently ongoing. Note that securing communications on transport-level comes with limitations in the end-to-end security span which is achievable. For secure communications on application-level and secure storage, standards do exist for representing encrypted and signed data in JSON (a form-factor not suitable for very constrained components). Corresponding work is ongoing for CBOR (a form-factor suitable for very constrained components).

Moreover there are no commonly accepted standards for registering things resp. devices and supplying identity (meta-)data and credentials about things resp. devices as of now. 
