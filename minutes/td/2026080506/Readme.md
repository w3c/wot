# WoT TD Calls

https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf

## Slot 1 - 05 August 2026

Cancelled

## Slot 2 - 06 August 2026

### Meeting Information

**Attendees:**
1. Kaz Ashimura
2. Michael Koster
3. Christian Glomb
4. Kunihiko Toumura
5. Ege Korkan
6. Mahda Noura
7. Cristiano Aguzzi

**Scribe:** 
- Mahda Noura

**Regrets:** 
- None

### Minutes

#### Minutes Review

**Ege:** Any remarks on the minutes?
- https://github.com/w3c/wot/pull/1309 July 30 TD minutes
- (Approved)

### Agenda

#### Holiday Season

**Ege:** The main calls as you know will be cancelled due to the holiday seasons. For Ege and Michael Koster there is no vacation planned. Who is generally available until September?

**Cristiano:** I will be out for the next two weeks and the first week of September. The last week of August I am available.

**Kaz:** I can make the call 20th to 26th, but I am OK with cancelling the calls in August.

**Mahda:** I will be available in August

**Kunihiko:** I have vacation next week till 17th August

**Christian:** I will not be available the next two weeks

**Ege:** So next week we can probably cancel. The week after that since Toumura san is there. I prefer to keep some of the meetings and not cancel all.
... 10-14 August will be cancelled
... any opinions on this:

(None)

#### LoRaWAN Binding

- https://github.com/eclipse-thingweb/td-tools/blob/main/python/lorawan/README.md#how-to-describe-a-device-in-a-td

**Ege:** We had a meeting with OPC Foundation yesterday. Some of the keywords are part of the proposals from the OPC Foundation. We discussed about next steps. We discussed to move the terminology to the binding itself.
... some discussion needs to be done on the endianness, also events... some discussions on how it can work with the OPC UA. Also to get more adoption. There will be a physical event in September to show this work.
... if you want to look at this do so. But we will move this to the bindings.
... one version that works with TD 1.1 and a simpler version that works with TD 2.0.

**Kaz:** What is the specific procedure when we transfer this kind of binding document?

**Ege:** I think we are lucky that there is no problem. The contributor was made by a Siemens employee who has worked on this, W3C member. The source of the schema language is coming from an open source repository that is coming from a company.
... we wrote them, verbally they will be fine.

**Kaz:** You as the contributor can submit the document to the W3C.

#### Data Mapping

- https://github.com/w3c/wot-thing-description/blob/main/planning/work-items/analysis/analysis-data-mapping.md

**Christian:** Update here is, we had an internal discussion with the colleagues. Currently I came up with a proprietary context that has to be added to the TM, describing the data mapping. One idea was use existing ontologies like QUDT, FNO, etc. I did a bit of research, the findings are in the PR. However, I haven't come up with a conclusion. I need to consolidate stuff. Another idea was to use the JSON schema terms that are available.

#### Expand Media Stream Analysis

- PR: https://github.com/w3c/wot-thing-description/pull/2213
- https://github.com/k-toumura/wot-thing-description/blob/5b5f57b32b6100bac28f1d8080bfffa849ce80f9/planning/work-items/analysis/analysis-media-streaming.md Rendered MD

**Ege:** Different scenarios are considered. Toumura san found some existing solutions.
... scenario 1: consuming media stream exposed by a Thing
... scenario 2: client side content negotiation
... scenario 3: consumer sends through a Thing
... scenario 4: bidirectional media, more interactions happening among the sides
... scenario 5: controlling the stream, this will be the most interesting one for me. The others are a bit more straightforward.

**Kaz:** Even though I am not a team contact for Media IG, they have been discussing further updates on media synchronization. These days even emotional data by GenAI and geo-location information. Specific format with BMT is proposed to handle the data format with geo-location. That discussion should be strongly aligned with this. We should clarify what we want to do? My personal preference and recommendation is to think about collaboration between WoT, Media Handling by Web Browser. Toumura san has also listed some protocols, these mechanisms are highly discussed by those WG's. This is good timing to discuss this with them, for instance at the TPAC.

**Ege:** I also think that the timing is perfect with the TPAC coming up. Given that we also have a PlugFest, would be good to show. I would say that it is not necessarily the browser as the main client.

**Kaz:** Maybe we can think about how to use that kind of interaction, WoT servient... both a client and server.

**Kunihiko:** I would like to discuss this topic in TPAC with the Media WG.

**Ege:** Will you add more in the "Further Investigation" section of the PR?

**Kunihiko:** Yes

**Kaz:** Please also add MEIG WG because MEIG is the starting point for this kind of collaborative discussion :)

**Ege:** There was a discussion from Ben Francis on media player capability schema. Currently, there is a way to put an href in the related protocol and watch the stream.

**Kaz:** I think we should be careful to avoid reinventing "media player capability" which is already done by the Web Browser. We should start with collaboration between WoT and Web Browser about our expected media handling capabilities for WoT. If something important is really missing, we can think about extending the "media player capability" here in the WoT.

**Ege:** I think if the media player is not in the browser we need this knowledge.

**Kaz:** My point is that, at least the TD should be a description for Things and not the control mechanism.

**Kunihiko:** We should not make up some media control vocabulary in the TD. We can link with media property, that would be enough in the TD.

#### Interaction Semantic Section #2206

- https://github.com/w3c/wot-thing-description/pull/2206
- https://pr-preview.s3.amazonaws.com/w3c/wot-thing-description/pull/2206.html#interaction-semantics Rendered HTML - 9.3 Interaction Semantics

**Ege:** I have written my observations about interaction semantics. I think some stuff is becoming more normative. Also as a caveat, we should not do too much of this work because it gets more philosophical.
... I am moving some text under the tables in the Response-related Term usage.
... The Interaction Semantics in section 9.3. The philosophical section is the usage of readOnly and writeOnly. Case 1 is the only case that we have an agreement, but with other cases it becomes fuzzy.
... Ege shows an example of a TD. Action gets even more weird. These kinds of keywords help only on a very small subset of use cases.

Any opinions on this?

(None)

**Ege:** Also on events I don't see a usage except on subscription. There is a real need to describe this kind of behaviour, but using read write in an event it is not intuitive.

**Cristiano:** I am also not happy about these vocabularies.

**Cristiano:** For events you don't get the event message, data field. You don't need the input/output.

**Kaz:** If we really need and would like to work on this kind of complicated mechanism, we need more fine-grained credential management. For example, verifiable credentials can maybe do that.

**Ege:** Do you mean the spec or a server managing? You need to look into the forms for the operation. I would put more explanations. I would also move it to a markdown document.

**Kaz:** A simple use case would be a Siemens researcher cannot enter the lab after 5 pm. The credential management can identify this. Echonet has started to identify credential management. Maybe this is also a good topic for TPAC.

**Ege:** I will send the cancellations for next week.
