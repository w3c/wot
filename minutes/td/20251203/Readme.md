# TD Call Minutes

## 3 December 2025

### Meeting Information

Scribe:

Attendees:
- Ege Korkan
- Michael Koster
- Tomoaki Mizushima
- Daniel Peintner
- Kunihiko Toumura
- Cristiano Aguzzi
- Mahda Noura

### Minutes Review

EK: <Minutes from 26 & 27 November>
EK: No objections, will create commit for minutes
... https://github.com/w3c/wot/tree/main/minutes/td/2025112627
EK: Creating PR before the call would have been better

### Minutes Process

EK: see Available at https://github.com/w3c/wot/issues/1243#issuecomment-3584950490
... maybe topic for main call


### Publication Schedule 
EK: Publications are out! https://www.w3.org/news/2025/first-public-working-draft-web-of-things-wot-thing-description-2-0/


### Matter Binding
EK: Erich Barnstedt from Microsoft cannot make it to the calls this week and next but wants to talk about Matter
...  One option Friday 11am CET, 5am EST, 7pm JST
... alternatives are fine also
CA: Friday is fine but aren't we getting close to Christmas time
EK: Yes, that's true
... but we shouldn't delay it either
... is proposed timeslot fine? Too late in Japan?
KT: Okay for me
EK: Okay, will setup a call using the TD zoom meeting


### TD SpecWork

#### Editorial PR#2158

EK: Just one line change, see https://github.com/w3c/wot-thing-description/pull/2158
... diff shows whole thing
... merging

#### URI vs IRI issue
see https://github.com/w3c/wot-thing-description/issues/2156

EK: Reference to URI should be replaced with IRI
... I remember href/base are URI
... percentage encoding needed
... in the end no protocols use IRI on the wire
... suggest to say we use URI
... problem remains for anyURI in base
... there is no class-type for URI in XML schema
... it influences whole registry 

CA: checking WebIDL for URI term/class
... didn't find anything
... I am okay moving forward

EK: Okay..
... href and base value MUST be URI and not IRI
... if a protocol needs to use international characters they should encode it
... what is sent on the wire is protocol-specific
... https://github.com/w3c/wot-thing-description/issues/2156#issuecomment-3607420631

### Common Definitions

see https://github.com/w3c/wot-thing-description/pull/2163

EK: I added weird case overriding form
... added expanded version also with duplicated form
... important: I did not add it under recommendation
... I have the feeling formIndex in scripting API is no longer working nicely 
... we need a way to express it somehow differently IF the algorithm is more deterministic

DP:  I hope  the algorithm is deterministic

EK: Same list but not same order. No guarantee in JSON order

DP: Not good if order changes which would lead to implementations pick different forms

CA: I agree with Daniel
... when looking at it in Scripting task force we were thinking about protocol hints etc 
... formIndex seemed to work best
... way out could be to use the expanded version
... anyway having determinism seems to be useful/important

EK: I think I have a different opinion
... can join a future API call

CA: I fear we will make things more complex

EK: Is PR#2163 fine to merge?
... no objections --> merging
... will work on algorithm and share implementation experience


### Architecture Spec Assertions

see https://github.com/w3c/wot-thing-description/pull/2167

EK:  Toumura-san thank you very much
... he has addressed feedback
... assertion list got updated also
... moved to be more "secure"
... with own security like QUIC etc use them etc
... PR looks good to me
... no remarks -> merging

EK: ticked the according checkboxes in https://github.com/w3c/wot-thing-description/issues/2151

### Tooling Update from Mahda

MN: Work in progress
<Mahda sharing screen>
MN: Work on PR for generating spec/tables
... I can generate tables
... with ReSpec CSS etc
... fixed cross referencing also
... in the past one had to put HTML in SHACL shapes
... I have 2 files
... glossary and bibliography
... we create list once and we do the cross referencing 
... we can add aliases, ids etc
... external documents need href provided
... for bibliography another sections 

EK: when writing usual text cross referencing is done automatically

MN: Correct
... otherwise tedious and error prone
... we used to have differences in the past between our documents
... one still needs to follow specific structure
... Markdown syntax is supported
... references work with aliases

CA: Cool mechanism
... helps to write proper ReSpec syntax
... What if I put more aliases and run into conflicts
... is there an opt-out mechanism
... e.g. for consumers

MN: That is a short-coming.. since it is a simple string matching
... in specific cases it might become an issue

CA: Maybe we can introduce an opt-out mechanism

MN: Yep, can try to look into it

EK: Current TD spec has terminology section with references to Architecture 
... might be nice if we can generate section 3 from glossary

MN: We could look into it

EK: Small thing
... would be just good to have a single point of truth

MN: diagrams are not generated yet. Working on PR
... some RFCs are not cross referenced yet, need to check
... @context section is generated also

EK: Do you plan to show more updates tomorrow?

MN: Yes, plan to work on it today

[adjourned]

