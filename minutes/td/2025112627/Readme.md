# TD Call Minutes

## 26 November 2025

### Meeting Information

Scribe: Koster

Attendees:
- Kaz Ashimura
- Ege Korkan
- Michael Koster
- Cristiano Aguzzi
- Daniel Peintner
- Kunihiko Toumura
- Luca Barbato
- Mahda Noura
- Tomoak Mizushima


### Minutes process from now on

ek: One etherpad forever, review on Wednesday, GitHub commit done on the spot (no PR, no change of people initials), delete minutes content but keep the rest (like a template), delete and recreate the pad once X months to avoid memory/storage issues

ek: Proposed by TD TF for the whole WG

ek: Assuming this: https://pad.w3.org/p/wot-td-minutes


kaz: We should use markdown formatting (at least until the possible MD conversion extention for Etherpad is installed)

ek: Minute Conventions until a better export is available:

... Use Markdown conventions for topics etc. (# for topic, ## subtopic)

... person names: initials, ... for repeating person


### Minutes Review for old minutes

https://www.w3.org/2025/10/29-wot-td-minutes.html
approved

### TPAC Summary
ek: summarizes the topics discussed

#### Toolchain:
https://github.com/w3c/wot/blob/main/PRESENTATIONS/2025-11-tpac/2025-11-14-WoT-TPAC-Toolchain-Noura.pdf

#### Common Definitions testing  https://github.com/w3c/wot/blob/main/PRESENTATIONS/2025-11-tpac/2025-11-13-WoT-TD20-PF-Results-Korkan.pdf

#### Echonet presentation on data mapping
https://github.com/w3c/wot/blob/main/PRESENTATIONS/2025-11-tpac/TPAC-Pham.pdf
... value wrapping feature is most interesting
... there is an object value wrapper which is removed by the proxy
... we only want the value 

#### joint session with JSON-LD DID 
ek: explains DID registry workflow
https://github.com/w3c/did-extensions/pulls

#### CBOR-LD
ek: compression depends on JSON-LD context 
dp: the context needs to be correct (and known/the same for both sides, encoder and decoder) for it to work

### TD Spec Work
#### PR 2154 Common Definition Examples
https://github.com/w3c/wot-thing-description/pull/2154
ek: applied array construct to the examples https://github.com/w3c/wot-thing-description/blob/ege-cd-array/proposals/common-definitions/tooling/tds.js#L454
... allows multiple connection definitions (protocols, etc.) to be active
... some cases where there are no improvements
... some cases with single element arrays
... any questions or opinions?
ca: What about the case with overriding

https://github.com/w3c/wot-thing-description/pull/2163 Array instead of string for common definition references #2163

ek: local level has priority over global definitions
... in some cases, there is duplication

Tooling on Eclipse Thingweb: https://github.com/eclipse-thingweb/td-tools/blob/ege-td20-converter/node/td-utils/test/expansion.test.suite.ts

ca: another edge case is when the duplication from overriding results in properties for some endpoint that don't make sense or possibly result in errors
... we would need to disable expansion on all properties if this happens

ek: we should see how frequently this happens
ca: +1

#### Issue #2165 
https://github.com/w3c/wot-thing-description/issues/2165 Review of Common Definitions Proposal #2165

ek: there are many ways of expressing the same thing
... we need more than JSON Schema to validate a TD
... the proposal is to merge all of the definitions
... get rid of the inherit term

ek: looked at some examples where the proposal would result in duplication

ek: connection persistence will be up to the implementation

ca: we let the consumer decide whether to reuse the connection if needed, there may be reasons to not reuse connecitons

ek: like in TCP, keepalive can be safely ignored
... implied connection management in MQTT, doesn't need TD hints

ca: we need to find a negative example

### Closing

ek: Adjourned

---


## 27 November 2025

### Meeting Information

Scribe:

Attendees:
- Ege Korkan
- Michael Koster
- Tomoaki Mizushima
- Daniel Peintner
- Cristiano Aguzzi
- Kunihiko Toumura

### Minutes Review

ek: None to review.

### Minutes Review

ek: I have provided our proposal to https://github.com/w3c/wot/issues/1243#issuecomment-3584950490
ca: Do other TFs need to adopt this? Scripting API?
ek: Probably not but you cannot change stuff in the server
... we can also move wiki to etherpad but that is another discussion
ek: I have also provided the minutes from October at https://github.com/w3c/wot/pull/1253
... I recommend doing it on your computer locally

### Arch Assertions

ek: Toumura-san has created PR https://github.com/w3c/wot-thing-description/pull/2167 . I like it and it is simpler than the architecture 
ek: However, there are some conflicts in the assertions and one should be a span.

kt: HTTP/3 is covered in line 4844-4846 . I will need to install the tooling to generate index.html. 

dp: prettier is also complaining.

ek: it should be ok when the tooling is used.

### Binding Registry

#### Code of Conduct

ek: We need code of conduct linking and enforcement as part of issue 44 https://github.com/w3c/wot-binding-registry/issues/44

#### Review Process

ek: issue 43. Since we are using issues, we need to indicate who the reviewer is. also the reviewer should get a template.

ca: how do we select reviewers? or assess expertise?

dp: can submitter propose a reviewer?

mn: How to prioritise reviews? first come first serve?

mn: is there a requirement on participating in a meeting?

ek: no, they need to do a small plugfest and create a test report?

ca: on priority question, we just do what the community wants and process as they come.

ca: What about a binding that nobody knows the protocol? We cannot find a reviewer easily.

ek: (writes opinion on the issue comment)

mn: for choosing reviews, it should be based on community activity where we identify the expertise. 

ek: Difficult to make it objective. 

#### Scripting API issue on behavior

https://github.com/w3c/wot-scripting-api/issues/581

ek: I think we need a place to talk about behavior of affordances.

dp: TD needs some advice. We offload it to the binding but the scripting applications will see difference. It depends on the protocol. Cristiano pointed to the place in architecture talking about the interaction model.

ca: you summarized it well. Since we are moving some things to TD, it can be done. We can formally define the interaction model in the TD. 

ek: logically it should be in architecture.

ca: we have the binding mechanism in the TD. So maybe moving these to TD would also help. Now that I am thinking, why is the binding mechanism in the td?

ek: I thought the same.I will comment in the issue and bring them to the next main call.
