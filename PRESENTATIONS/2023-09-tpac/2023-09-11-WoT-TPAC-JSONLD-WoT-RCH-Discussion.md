# JSON-LD WG, WoT WG, RCH WG Joint Meeting

Summary of main points from the discussion.

## [Sept 11 Minutes](https://www.w3.org/2023/09/11-wot-minutes.html)

- Introduced WoT
- Slides https://github.com/w3c/wot/blob/main/PRESENTATIONS/2023-09-tpac/2023-09-11-WoT-TPAC-JSONLD_RCH_JointSession-Korkan_Noura_Barbato.pdf

### Canonicalization and Signing

#### Selective Disclosure

Question from WoT WG: To verify a digital signature the entire document needs to be shared. How to validate a selective disclosure of information rather than an entire credential

- New selective disclosure mechanism in JSON-LD:  https://www.w3.org/TR/vc-di-ecdsa/#ecdsa-sd-2023
- Another mechanism if need to handle multiple versions: https://docs.google.com/presentation/d/1d-04kIWhPuNscsAyUuRH3pduqrNerhigCWahKe6SNos/edit#
  - Note from Ege: It is not clear what the difference between the two methods is at this point
 
#### Integrity of Linked Data

Question from WoT WG: How to ensure the integrity of linked data that lies outside of the protection of the proof, e.g. LD @context content and links section in TDs

- Verifiable Credentials WG deals with it in two ways, all fairly new:
  1. digest: the downside -> if the remote resource allows different media types you need a way to describe digest for multiple content-type
  2. related resources: in property-related resources, adding that link information and the digest
  - with something like TD links you would probably add the digest property
- Default Values in TD:
  - depends on when the default values are applied: if you do it before signing, it requires pre-processing. The other approach is just not signing them at all
  - We have to think about the attack model to understand which one is the best
  - It seems that what we are looking for is a semantic signing, which is challenging. Gut feeling (Pierre-Antoine) is to go with option 2
 
#### Signature Schemes

Question from WoT WG: Which signature schemes are appropriate for TD?

Useful Links:

- https://www.w3.org/TR/vc-data-integrity/
- https://www.w3.org/TR/vc-di-eddsa/
- https://www.w3.org/TR/vc-di-ecdsa/

- Two schemes above would work. For signature working in YAML too, go with eddsa.
-  bbs provides unlinkability but is experimental

#### Actors in VC and WoT

Question from WoT WG: Mapping of the actors in the VC to the WoT Ecosystems. Subject, Issuer, Holder, & Verifier. Who is the trustable entity in this ecosystem?  What is this verified data registry in the context of the Web of Things?

- WoT can issue TDs and VCs
- data integrity is not connected with VC
- By putting a TD inside a VC, it is possible to have trust lists that can be used to identify who is allowed to issue TDs in a specific system

Note from Ege: This section is not minuted thoroughly or was short.

### Degraded Consumption

Slides contain the motivation

- Section in VC about processing JSON-LD in a degraded fashion and JSON-LD is built to be used only when needed
  - In the VC data model, some processors do not do the JSON-LD processing which uses well-known context URLs, freezes the context, and cryptographically signs it
  - There is a slimmer profile of JSON-LD to do just JSON-only processor
- Fixing the order of the contexts is important to avoid redefinition and security attacks (do not let redefine terms of the standard)
- It is also possible to remove `:` and call terms in camel case. Like cov:methodName -> covMethodName
  - as long as the prefixes are fixed that is good.
 
### Other serialization formats

Question from WoT WG: Currently we just support JSON and JSON-LD. Having more format is good. YAML-LD allows comments, and CBOR-LD has size benefits. What is the current state of these special formats?

- JSON-LD wg is working consistently on the YAML-LD with plans to create a CG by the end of the year
- CBOR-LD has been deployed to production systems. However, the spec is not in its best shape
- Developers like YAML

### Linting

Question from WoT WG: Lately there has been an emergence of tools to lint Open API or other descriptions. What can we do for the TD? Is there any mechanism within JSON-LD?

- From the spec perspective the best way is to look at SHACL It is powerful and there are tools that compare a graph to the idial end result.
- JSON-LD processors have safe mode. if it finds something that is undefined, it stops processing.
- other well-known tool for linting is JSON schema
- JSON-LD playground has warnings but more can be added,  like a warning for the default vocabulary
- linting tends to be application-specific. If WoT WG finds something that is generic, we can contact JSON-LD WG
- VC uses a property to define a schema for defining linting rules
