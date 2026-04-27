# WoT TD Calls

<https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf#April_22%2C_23_2026>

## Slot 1 - 22 April 2026

### Meeting Information

#### Attendees

*   Ege Korkan

*   Tomoaki Mizushima

*   Cristiano Aguzzi

*   Daniel Peintner

*   Scribe: Daniel Peintner

*   Regrets: Sebastian Käbisch

### Minutes

#### Minutes review from April 15–16

<https://pad.w3.org/p/2026-04-1516-wot-td-minutes>  
<https://github.com/w3c/wot/pull/1285/>

Ege: Any remarks?  
All: None, minutes approved and PR #1285 merged

#### Modbus Binding

<https://github.com/w3c/wot-binding-templates/pull/461>  
<https://deploy-preview-461--wot-binding-templates.netlify.app/bindings/protocols/modbus/>

Ege: Cristiano found a problem; the table for default mapping is empty  
... should merge PR #461  
Ege: BTW, I noticed coils are used, and I think people use registers  
Cris: I don't recall why we chose coils at that time  
... it is just a draft; we could change it  
... I think the devices I played with used to have coils  
Ege: Metering devices seem to use registers  
Daniel: I wonder whether we can have a check/test  
Ege: In the registry review process, we will notice such cases  
... merging PR #461

#### Streaming

Ege: Last week we talked about new topics  
... Toumura-san has interest in the streaming aspect  
... about media  
... will look at whether we need additional information or terms

#### Registry Restructuring

Ege: We discussed rules on their own  
... some seem to overlap  
... e.g., life cycles and transitions  
... or overlapping status  
... I am working on a PR  
... similar problem with section "Content" overlapping with "WoT operation"  
... if anyone else notices issues, please comment  
Daniel: Shall we restructure the document?  
Ege: Yes, but no normative changes  
... working on it in PR #70 (<https://github.com/w3c/wot-binding-registry/pull/70>)  
... lifecycle figures/changes match with what we have in the GitHub project  
... "lifecycle" and "transition" need to be read at the same time to follow  
... a quick solution would be nice, but at the moment the process is a bit "messy"  
Cris: I have to re-read the document  
... maybe an eagle-eye view at the beginning might help  
... wondering about section 4.2.2 Transition Lifecycle  
Ege: Kind of an overview for transitions  
... maybe we need to explain what happens in the document  
... - show what is in the registry  
... - explain governance of the registry (how to submit, who manages it, ...)  
... - explain how to use the registry as a non-submitter (different states, trust, ...)  
... the third item is missing at the moment  
... encouraging everyone to comment  
... I noticed we are missing guidelines for reviewers

#### LoRaWAN

Ege: Had chats with people working with LoRaWAN  
... learned two things  
... 1. no way to force a read of a property (all async)  
... 2. in some cases manufacturers use the structure/payload in a wild-west fashion  
... payload mappings do not cover 100%  
... most do weird stuff  
... we might need to add a statement that not all LoRaWAN devices can be covered

#### AOB

Ege: Talk about data mapping tomorrow

\[adjourned]

***

## Slot 2 - 23 April 2026

### Meeting Information

#### Attendees

*   Ege Korkan

*   Michael Koster

*   Kunihiko Toumura

*   Daniel Peintner

*   Tomoaki Mizushima

*   Mahda Noura

*   Cristiano Aguzzi

*   Scribe: Mahda

*   Regrets:

### Minutes

#### Topic – Issue 2034

Issue: <https://github.com/w3c/wot-thing-description/issues/2034>

Ege: The topic is about extending the documentation we have. It should also be included in the analysis. We need housekeeping in the usability-and-design document in the td-next-work-items; the whole thing seems to be outdated.

Ege: When we wanted to extend it, we forgot about issue <https://github.com/w3c/wot-thing-description/issues/2169>  
We need to talk about this in this meeting. I would say they are the same issue and close issue #2169.  
About point number 10, the formula for rounding output: you will lose precision that doesn't exist on the device. This kind of information should be reflected at some point.

Michael: The example that you provide is still with one-digit rounding. I don't think there is a way to fix this. So I think it is good to point it out; it is an unavoidable rounding error.

Ege: That's why I specified it as a risk.  
Michael: Calling it a risk is a bit misleading. I would probably comment on that. Hopefully, we are not trying to fix it. Floating point contains rounding errors by design. This is just a consequence of fixed-point arithmetic and probably what we need to mention.

Daniel: I have a comment—there was a related issue a while ago to indicate whether writing a property returns the set value. Could this be related to what we discussed?

Ege: I think this is not a mapping topic.  
Ege: If we have the `multipleOf` in the TD, we could do the rounding automatically and avoid rounding issues as well.

Michael: Presumably, accepting strings that have two numbers after the decimal point would exceed what it can store, and it would reject that immediately. But if the device had some sort of rounding behavior, that would be an interesting situation. Maybe we don't have to worry about it. Floating point always does that. We should think about it a bit more; it seems obvious, but probably isn't. Maybe there are cases where rounding happens in the device and we need to flag it.

Cris: I think the problem you showed is a big issue per se, but it is more about data validation and consistency in the device itself.

Ege: In that case, it would do rounding and send 121 instead. The consumer would know the device is accepting an integer.

Cris: Probably even some protocols would just accept integers instead of floating point, but I think this is going to be rare.

Ege: In Modbus, it is going to be integers. You cannot send a dot.  
Cris: You can if you serialize it.  
Michael: If you put a dot in it, you will get an error.  
Ege: Of course, we don't know; it depends on the implementation.  
Michael: You could have an extended binding that tells you how to interpret the error.  
Cris: If you create a data mapping rule and you get this sort of error, ...  
Michael: The TD could enforce this kind of rule, flag an error—you would want to catch it before sending it on the wire.

Ege: That is what I wanted to indicate; it should be caught before sending on the wire.

#### Topic – Issue 2094

<https://github.com/w3c/wot-thing-description/issues/2094>

This needs cleanup.

#### Topic – Issue 1936

<https://github.com/w3c/wot-thing-description/issues/1936>

Here you also have a format which looks like a stream of data where you would need to select parts of it. There is an example where the first four bytes reflect the time. We have similar behavior in the LoRaWAN protocol. In these cases, you need to do bit masking to extract the information out of it.

Michael: In cases where we count bits and bytes, I agree with Cris that we can come up with a generic solution for all protocols with similar behavior. As long as your selector can reference bits and bytes, it should work generically across protocols. Organizing the data in the TD as a consistently shaped blob. Even with Modbus, some devices have bitfields where you need to count the offset. The only thing that would be weird is if there are contingency problems and whether we need algorithms. If we can stick with declarative workflows (by this I mean a schema with annotations), we can stay with one generic solution and handle any mapping as long as it doesn't require more complex operations.

#### Topic – Issue 1930

<https://github.com/w3c/wot-thing-description/issues/1930>

Ege: Let's check if we have another example where we have eight bits with different properties.

Michael: This needs an additional polarity flag. The number mapping additionally needs polarity.

Ege: Last time we called it enum mapping. The bitmap is indeed a selector: in-alarm bit 0, fault bit 1, ...  
Michael: Using an enum for boolean is always a good option.

#### Topic – Issue 1251

<https://github.com/w3c/wot-thing-description/issues/1251>

A similar issue again with the temperature example. We recently implemented this in node-wot.  
I will come back to this again. <https://github.com/eclipse-thingweb/node-wot/tree/master#data-mapping-per-thing>

Cris: This data mapping feature is interesting because it allows you to select sub-objects. What I found interesting is that you can mask properties with just a JSON Schema. This is a free data mapping that we currently have. Some libraries (like NestJS) decide that when you have a validation schema, you need to map all properties. We can also do the same in TD: add a flag somewhere that tells the consumer how to behave.

Michael: Some time ago I played with schema mapping. There is a JSON Patch format (<https://jsonpatch.com/>). JSON Pointer is also an option: <https://datatracker.ietf.org/doc/html/rfc6901>. This is at the data schema level. We can see what a modern approach is and implement that.

Cris: There is also the inverse possible in two ways: with `default` in the AJV JSON Schema validator, where if a key does not exist but has a default value, it is added; also similar to the case of NestJS.

#### Topic – Issue 1220

<https://github.com/w3c/wot-thing-description/issues/1220>

Ege: Similar use case with the same underlying issue as #1930.  
Cris: It is definitely connected to the other issue. You could even close it, I think.

#### Topic – Issue 1217

<https://github.com/w3c/wot-thing-description/issues/1217>

It is also closely related to issue #1251.

#### Topic – Issue 997

<https://github.com/w3c/wot-thing-description/issues/997>

Ege: I think it is almost also a bitmap issue. The difference here is that you want to attach more meaning to them. It adds context and semantic annotation.
