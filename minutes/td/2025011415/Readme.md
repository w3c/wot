# TD Call Minutes

## 14 January 2026

Scribe: Mahda Noura

Attendees:
- Ege Korkan
- Michael Koster
- Kunihiko Toumura
- Tomoaki Mizushima
- Mahda Noura
- Cristiano Aguzzi

### Agenda review

URI vs IRI, Common Definitions Simplification and some organization topics

### Minutes Review
Ege: The meeting from last week was held only on Thursday with the following minutes:

https://github.com/w3c/wot/pull/1259

Ege: Is there any remarks on the minutes?
(hearing none, we can merge it)

### Organizational - Minutes Policy

Ege: Are the slots good for the TF attendees?
Mizushima has the wish that the time slot to be earlier
Koster: The current slots are fine
Mahda: For me it is also fine, if earlier it will also be fine
Ege: I will also ask the other members to check whether the timing is fine, currently lower numbers in the TD sessions

...if you think I shall ask anyone else please let me know. 
Ege: do you know if ECHONET wanted to join the TD calls or if they are not interested in the spec

Mizushima: I don't know

### PR: 2172 IRI to URI Change

Ege: Mahda had the chance to review, will check them
Mahda: The Form and Link definitions have a weird syntax in their definitions, it read like it is rendered from an ontology, reads like a triple.
Ege: tries to look where this is coming from. A new issue is created to deal with this specifically.

Ege: the second issue mentioned is related to the repetition of the URI because we don't have currently have a solution for xsd:anyURI. Mahda suggested to add in the preliminary section. 

...I am not sure whether people read the section. But we are misusing the definitions, would be good to consolidate this. From Mahda's suggestion we can consolidate these Notes, and I like this. 

Mahda: I propose putting it at 5.2 Preliminaries. But, we need to put it as a Note to separate it from the rest of the text, in the place where the XML Data types are mentioned. After that in href we only put the information that is related to this term and not repeating the information. 

Ege: Is there any comments from anyone?
(hearing None)

Ege: The next comment will be automatically fixed by the Note we will add. 

### Common Definitions and Simplification

Ege: Mahda and Cristiano were not here last week, we have a new proposal from Ben. There was opinions from Michael Koster and Daniel, we addressed this last week. I will show the current status. Ege shows and example from PR #2173. The recommended TDs are the correct ones. For the simplest case the keyword form becomes formDefaults. You need to define the formDefinitions and then using it, that's the only difference. 

...The differences are when we have multi IP addresses. You need to define formDefinitions and then define  each address. In this case we see that the TD becomes longer, but it is still shorter than the TD 1.1.
...Some mechanism for multiple protocols.

Cristiano: The array means that all affordances will have http, and coap for instance
Ege: Yes

Cristiano: This means that functional algorithms, I am not seeing the OP values, I guess those will kick in once I expand the Forms. 

Ege: the affordance-level defaults

Ege: In this example, this is how read are done, everything that doesn't change you still need to copy paste. 

... you can link to the previous stuff, example with 'read'
...actions would be form invoke

...this is the case where reading and writing requires different security mechanisms, the rest of the examples are I think simple.

...different protocols for the interaction affordances, again you need to reference in the individual forms
...the last one is an example of http+cbor and http+json. This is definitely longer, last week there was opinions. Compared to the previous proposal, everything is more verbose, in case of multiple connections (two security mechanisms, two protocols, and so on), 

Ege: any comments so far?

Cristiano: Can we use form defaults inside a single affordance?
Ege: No
Cristiano: The reason we don't want to do that is, maybe we don't have the use case?
... I want to use formDefinitions, but for the affordance instead of putting form:{http}, I can use formDefaults:... Instead of going inside of form arrays and instead of having two lines to reduce it to one line. I think it should work, but we need to further explore. 
...I was curious to know if the use case of websocket was explored here? 

Ege: Depends on the specific sub-protocol, if the sub-protocol uses it still you would need href. 
Cristiano: What is the status of the Form object? If I have a 'href' in the form definition and in none of the forms in the compact TD?

Ege: Yes, that's a good point

Cristiano: This can be relevant for defining the default for HTTP binding where the Thing has pattern of properties/myPropertyName. 
I guess this will help WebThing, because BEN mentioned that they need an identifiable affordance. 

Cristiano: I think if we are lucky with the Binding defaults we can get there, of course in the common use cases and move away from it then we need to declare everything. 

Ege: Regarding simplification, you didn't comment.  Which simplification do you prefer?
Cristiano: What I didn't like from the previous protocol, it was too complicated. i think this one is way simpler, even though we have to write couple of lines more. Even if node-wot does, it is not common out there.

Ege: I don't see it on end devices but gateways tend to do this. At least for subscriptions.
Cristiano: So many content types
Ege: I do not see this case too many

Cristiano: That's what I found out in my experience, but can of course be out there. So for me it is fine for me that it is verbose. 

Ege: there is two discussions to be done, regarding combo security, maybe we can do inline. Before we could define and reference, but now I do not know how to do this now, unless inlining it. One direction could be like the OpenAPI, where they have OR/AND. With OPC UA binding they have this commonly, so it would be good to be able to express this. 

Cristiano: Could you explain why this is not possible?
Ege: We need to define how to do for instance combo inline. 

Cristiano: can be done with introducing oneOf and allOf in the security object. You cannot use the string anymore you have to write the security scheme. But of course you have to copy paste it when several exists.

Ege: In the documentation I wrote the following: we say that the base URI is not allowed in the affordance level.
Cristiano: It would not hurt to also allow base in the affordance level to simplify it.

### Timeline Aspects
    
Ege: Mahda you need to do the catch up on the tooling. Maybe you do the TD1.1.. The tooling is very soon to be finished. So that we do everything in one place and do not need to catch up. 

Ege: This is for Cristiano and Daniel, who is intended to use the TD, the drive or human?

Cristiano: You are saying the compact TD should be normal and ok to be used everywhere. I can just use the Scripting API without expanding it. 

Ege: yes

...It would be good for others to participate in the discussion with Ben on Github. 

## 15 January 2026

### Meeting Information

Scribe: Ege

Attendees:
- Ege Korkan
- Michael Koster
- Kunihiko Toumura
- Tomoaki Mizushima
- Mahda Noura

### Binding Registry

#### Issue Templates

Ege: we have templates for transition of states. editor's draft will be updated based on the text here too.
Ege: any feedback? I can merge and see what happens with an issue.
Mahda: indeed. I want to test the process. It would be good to merge.
Ege: ok. then https://github.com/w3c/wot-binding-registry/pull/47 is merged.
Mahda: Should I prioritize this over toolchain?
Ege: I think toolchain would be better. it is almost done right? 
Mahda: yes, the diagrams are missing. Also by then the organization stuff in the registry can be done.

Ege: (tests the process)

Mahda: the title should be placeholder indeed.

Ege: in the new binding, the title and name of binding are duplicate.

Ege: Not sure about version. We should put an example for sure.

Mahda: It should not be "A unique string for that entry's history that denotes the version of the entry that is linked. "

Ege: uniqueness is about that specific binding. 

Ege: A unique string within among the versions of the binding, i.e. two different protocols can have the same version.

Ege: I will make a PR and think about it

Ege: I have created issue https://github.com/w3c/wot-binding-registry/issues/53 to track the problems we have seen.

#### Stability Issue

https://github.com/w3c/wot-binding-registry/issues/50

Ege: Here are my opinions

Cris: We should trust the community behind and not restrict to SDOs. Web archive is a good idea. You don't know other solutions.

Mahda: Can't we store the artifacts in our archive.

Ege: There are copyright issues. OPC Foundation is the owner for example.

Mahda: what about cases without copyright problems? 

Ege: most cases would have it. (tries the internet archive)

Mahda: What we get an OK from them to archive it? It needs to be checked.

Ege: Yes. I will contact someone from W3C.

Ege: I am writing the options at the issue.


