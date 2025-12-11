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

## # TD Call Minutes

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


## 5 December 2025

### Meeting Information

Scribe: Ege Korkan

Attendees:
- Ege Korkan
- Michael Koster
- Tomoaki Mizushima
- Kunihiko Toumura
- Cristiano Aguzzi
- Mahda Noura
- Erich Barnstedt
- Farshid Tavakolizadeh
- Ben Francis


EB: We have extended the UA Edge Translator and has 10 bindings now.
EB: It got real nice interest from the industry. Lorawan association for example
... Also matter is a recent addition. It was difficult to implement
... I made it up of course.

https://github.com/OPCFoundation/UA-EdgeTranslator

EB: We also have samples

https://github.com/OPCFoundation/UA-EdgeTranslator/blob/main/Samples/AqaraSensorP2.td.jsonld

EB: I did something that works and I have created the uri scheme myself etc.

... now it would be good to have a proper approach for this

... we also have a lorawan example. You talk to the router and we wrote the TM for the router

... also lorawan device here. You get a blob of bytes and you need to handle that so I got inspired from modbus.

... So I think we should get started with the lorawan and matter. I have come accross these the most.

... We can also invite the representatives from Lorawan Association and CSA too.

... any questions?

BF: I appreciate the TD examples since it makes it concrete. Can you explain the ua edge translator?

... is it translating the southbound to OPC UA and a proprietary REST API? Who consumes that?

EB: Kind of but you have IEC standard for the northbound. You can also support pubsub protocols.

... OPC UA also has a strong modeling system. You can represent different types of devices. Different cloud proviers are using OPC UA as well and have edge offerings.

... so OPC UA is a universal language in industry but there is a brownfield problem.

... also the UA Edge Translator is a reference implementation but there are commercial solutions too

... the way you send TDs is standardized in OPCF.

... in typical connectivity suite, you have proprietary REST APIs. With this, you have one interface.

BF: So cloud services use the OPC interface? as consumers

EB: Yes they use opc ua. They will understand WoT soon. I will talk to my counterpart in AWS too. 

EB: You can also add the mapping rules inside a TD. Like here: https://github.com/OPCFoundation/UA-EdgeTranslator/blob/main/Samples/pac4200.td.jsonld#L26

BF: Do cloud services use OPC UA in the end to talk to the edge system?

EB: Yes. We decided on OPCUA. Prosys also uses this.

EB: Also to note, these connectivity software typically have a manual process. So it is a long process. With this, we are automating that. You can also generate TDs with LLMs too. You can give a pdf and get a TD out of it. You specify the table.

CA: I have two practical questions. So you have lorawan in addition to matter. With which one do we want to start with?

EB: I had more request for lorawan. According to lorawan, this was tried before. Also, to note, I have implemented all these protocols based on customer demand. So they all have demand. For the best bang for the buck, we should start with lorawan.

CA: Regarding matter, do we have any standard for the URI Scheme of matter? You just made it work right? 

EB: Yes

CA: You also need to pass the credentials right?

EB: Yes, once you start an open thread border router and get that.

CA: Is there anything on top of that in terms of security?

EB: Yes. (shows the TD)

CA: I think it can stress the security definitions we have in TD now.

FT: Is Edge Translator acting as a matter controller?

EB: Yes.

FT: Are we considering WiFi for Matter?

EB: In this case, I use UDP over WiFi. I found no device that has only wifi. thread is mandatory. Over the border router, protocols merge so you don't need to worry about it. 

FT: There are devices that only operate over WiFi. I have some at home. Then you have other onboarding mechanisms. The spec is huge.

EB: I used chatgpt a lot when doing this implementation. 

MN: I have seen CoAP over Thread at Siemens. There was a use case where they would wake up for a short time and you had to know when. Did you have the same issues?

EB: Yes... They drove me crazy. Half of the code is about handling those.

MN: I think we need additional mechanisms in TDs to handle this.

EB: There is also throttling, so you send 3 requests and 4th one is not accepted. 

EB: Lorawan was much easier but the hw is much more expensive. That is why thread chips are becoming available in phones.

EK: I have some questions regarding writing the spec. You said that ACS is willing to collaborate. Do we want to use the same process we did for OPC UA? Inviting them to WG?

EB: I can give their email but we can even do a 3-way agreement. 

EK: Ok cool.  What about CSA?

EB: I did a blog post and got a lot of engagement. Someone from IKEA reacted and we can try through them.

EK: So we have to find the right person in CSA, we can try indeed.

BF: I see the trend in handling southbound stuff. I am actually very interested in using in northbound. For example android apps, they use an abstraction over with an SDK. That would be very interesting to replace that with WoT. How about the HTTP and WS of OPC UA with WoT?

EB: Yes that would also make sense.

BF: I understand the use case here but WoT has more potential in northbound I think.

EB: The most common scenario is to use a pubsub protocol going to the cloud.

EB: My todo is to contact them for a moca.

EK: We don't have to but we can.

EB: A collaborative effort would satisfy all sides. 
