# WoT TD Calls

https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf

## Slot 1 - 09 September 2026

### Meeting Information

**Attendees:**
* Ege Korkan
* Kazuyuki Ashimura
* Kunihiko Toumura
* Daniel Peintner
* Christian Glomb
* Tomoaki Mizushima
* Cristiano Aguzzi
* Michael Koster

**Scribe:** Kazuyuki Ashimura

**Regrets:** None

### Minutes

#### Agenda for Today
**Ege:** (skims the basic agenda items on the TD wiki)
... Data Mapping?

**Christian:** everything should be there

**Ege:** ok

#### Minutes Review

https://github.com/w3c/wot/pull/1314

**Ege:** (goes through the minutes)
... anything to be fixed for Wednesday?
(none)
... what about Thursday?
(none)
(approved and merged)

#### Specref issue
-> https://github.com/tobie/specref/issues/951 specref issue 951
**Ege:** has been fixed now

#### Resources
##### Redirections for WoT Resources
https://github.com/w3c/ns/pull/10
**Ege:** resource change merged

##### Content negotiation
https://github.com/w3c/ns/pull/40
**Ege:** follow-up from the content has been also merged

##### Testing for resources
https://github.com/w3c/wot-resources/pull/31
**Ege:** still working hard to fix the issues
... e.g., https://www.w3.org/ns/td vs http://www.w3.org/ns/td

**Kazuyuki:** same kind of issue repeats many times?

**Ege:** many kinds of issues repeat many times...

**Kazuyuki:** ah...
... thanks for your hard work!

##### HTTP to HTTP
-> https://github.com/w3c/wot-thing-description/pull/2229 related PR 2229 - HTTP to HTTPS Fixes

**Ege:** if anyone has an idea to resolve it, please let me know

-> https://github.com/w3c/wot-resources/pull/32 wot-resources PR 32 - General Repository Information
**Ege:** any problems to merge the above PR?
(none)
(merged)

##### Resource removal
https://github.com/w3c/wot-thing-description/pull/2230
(merged)

#### TD Specwork

##### Explainers and stable URLs
https://github.com/w3c/wot-thing-description/pull/2231 Stable URLs in Explainers
**Ege:** any concerns?
(none)
(merged)

##### Data mapping
https://github.com/w3c/wot-thing-description/pull/2211 Extending Data Mapping Analysis
**Ege:** apparently closed wrongly?

**Christian:** everything should be there

**Kazuyuki:** what do you mean?
... have we committed the changes?

**Christian:** not yet

**Kazuyuki:** we should revert the closure of this PR?
... or should create another PR for the changes?

**Ege:** let's create another PR for mathematical operation in data mapping
-> https://github.com/w3c/wot-thing-description/pull/2232 new PR 2232 - Mathematical Operations in Data Mapping

**Ege:** now it's back and got synchronized
... (goes through the changes)
-> https://github.com/w3c/wot-thing-description/pull/2232/changes changes

**Ege:** would like to skim the rendered MD to make sure
-> https://github.com/w3c/wot-thing-description/blob/613a9539aaa6fc23c63b0b5935c9898f10cfeb35/planning/work-items/analysis/data-mapping/US3-details.md US3-details.md

**Ege:** any concerns about the content?

**Kazuyuki:** I'm OK with the content of the MD itself
... but we need to clarify which part of this MD to be included into the TD spec how

**Ege:** yeah
... possibly, just copy the definition table into the TD spec
... and the other content can stay within the MD

(no more concerns)
(merged)

#### Modbus Binding
-> https://github.com/w3c/wot-binding-templates/pull/472 PR 472 - Modbus Address Range Explanation

**Ege:** (shows the changes)
-> https://github.com/w3c/wot-binding-templates/pull/472/changes changes

**Ege:** (describes the note around line 506)


**Cristiano:** would like to move forward
... these changes are harmless

**Ege:** (shows Campbell Scientific description as well)
-> https://help.campbellsci.com/crbasic/cr6/#Instructions/modbusclient.htm?Highlight=ModbusClient

**Kazuyuki:** if we say "usually", don't we need to show the other possible address ranges?

**Ege:** don't need to do so

**Kazuyuki:** in that case, maybe "in general" might be a better term for spec than "usually"
... Michael, what do you think?

**Michael:** that range of Modbus address is not really specified by the Modbus spec itself, right?

**Ege:** right

**Michael:** should we really recommend any specific ranges?

**Ege:** it's rather a convention

**Michael:** ok
... in that case, "conventionally" might be better

**Kazuyuki:** ok with that

#### Deprecating zeroBasedAddressing
https://github.com/w3c/wot-binding-templates/pull/479

**Ege:** (shows the changes)
https://github.com/w3c/wot-binding-templates/pull/479/changes

**Daniel:** minor comment
... missing whitespace?

**Ege:** will fix it

**Daniel:** another comment on the wording/capitalization?

**Ege:** this is not intended as REC Track doc, so don't need to capitalize the terms

#### Binding registry conf in Respec
https://github.com/w3c/wot-binding-templates/pull/481
https://github.com/w3c/wot-binding-templates/pull/481/changes
**Ege:** has been fixed
(merged)

#### AOB?
##### SSE Binding
**Cristiano:** server-sent event and HTTP binding?

**Ege:** related to https://github.com/w3c/wot-binding-templates/issues/361 ?

**Cristiano:** think so
... will try to review the issue after the call

**Ege:** thought Ben had an idea to think about another Binding for SSE
... still open for discussion

**Kazuyuki:** given we're getting out of time for today
... Cristiano, you can review the existing issues and we can continue the discussion tomorrow

**Ege:** ok
... will also look into it

##### TPAC topics
**Kazuyuki:** by the way, given Rob and Robert were very interested in TPAC joint meeting topics
... we should be ready for the TPAC joint discussion for the next main call

**Ege:** yeah
... let's talk about that tomorrow

[adjourned]


## Slot 2 - 10 September 2026

### Meeting Information

**Attendees:**
* Ege Korkan
* Kazuyuki Ashimura
* Kunihiko Toumura
* Daniel Peintner
* Christian Glomb
* Tomoaki Mizushima
* Michael Koster
* Erich Barnstedt

**Scribe:** Daniel Peintner

**Regrets:** None

### Minutes

#### TPAC

**Ege:** Small change from last week
... Erich Barnstedt submitted breakout session about OPC UA collaboration
... anyone can submit a breakout session
... we can seek new directions/ideas

**Kazuyuki:** Michael and I plan to create a breakout session about smart cities
... kind of a group session

##### PlugFest

**Ege:** Talking with company active (called DNV) in Nordic country about ships
... not sure yet whether they can join PF
... but plan to join working group meetings
... we can give summary about binding changes

**Kazuyuki:** w.r.t. PF
... I am okay with this level of description
... we should resume PF calls
... ECHONET and my university plan to attend as well
... smart home devices
... authentication like OAuth is an important topic

**Ege:** Security would be a useful topic

**Kazuyuki:** question how to transfer ECHONET OAuth work to WoT
... clarify security guidelines

**Ege:** I see, basic demo and what is missing in the standards
... who is the main contributor

**Kazuyuki:** A person from my university will give some insights

**Ege:** Christian, you are there for Data Mapping, correct?

**Christian:** Yes

**Ege:** <updating wiki with Plugfest topics like media streaming, common definitions, data mapping, ...>

... person from NTT doing the disco demo would be good as well

**Kazuyuki:** Can talk with him again
... plans to join media related topics... not sure about PF

**ACTION to Kazuyuki:** Talk with Ken about PF participation

##### WG meetings

**Ege:** OPC Foundation Liaison and Collaboration with Erich
... Media Streaming and Geolocation are other topics
... Kazuyuki, maybe you can add names

**Kazuyuki:** Sure, we can clarify with Rob and Warren during the main call next Wednesday
(regarding the MEIG guys, Kazuyuki has been already talking with them)

<Erich Barnstedt joining>

**Ege:** Question to Erich
... do you plan to participate in the PF?

**Erich:** Yes, plan to bring my LoRaWAN devices

**Ege:** I can bring 2 LoRaWAN devices and gateway as well

**Ege:** we need router

**Erich:** would be nice to show toolchain from WoT to LORA decoder
... done by Siemens

**Ege:** Yes

**Erich:** We can show Modbus binding with Sentron PAC
... Ethernet/IP binding is something I have been in touch with recently
... not sure if I am able to carry it over
... can we work on a draft for Ethernet/IP?
... IP stands for Industrial Protocol
... too short noticed I think
... there are implementations out... more powerful than Modbus... but not super complex either

**Ege:** S7 binding from Siemens would be another possibility

**Erich:** Are we complete w.r.t. to LoRaWAN binding documentation?

**Ege:** Yes, I think so
... protocol binding is stable

**Erich:** Good, I can update Edge translator

**Erich:** ODVA connections w.r.t. Ethernet/IP would be useful

**Ege:** liaison would be good

**Christian:** for the PF topics I am listed for data mapping.
... how does that relate to ECHONET?

**Ege:** It is about payload, values wrapped into container

**Christian:** I see, user story 5

**Kazuyuki:** During TPAC we can ask ECHONET people to participate

**Christian:** real devices would be good

**Kazuyuki:** Not sure if they are aware about our data mapping topic
... ECHONET could be a separate topic on its own
... where we can talk about joint sessions

**Ege:** Same setup from ECHONET as last time would be good

**Kazuyuki:** yeah, I can understand our intention of course, but we should make it
... clear that this list of topics is our "expectation" at the moment

#### Data Mapping

**Ege:** Christian, I saw your PR but couldn't look into it yet
https://github.com/w3c/wot-thing-description/pull/2233
-> https://github.com/wiresio/wot-thing-description/blob/7740d6c0d311acae40ee860c5f552a32996d4dd2/planning/work-items/analysis/data-mapping/US4-details.md Rendered MD

**Christian:** I can share and we can have a look
... yesterday we merged user story 3
... this is user story 4
... about mapping enums
... we have enum array but this time only fromWire mapping
... this mapping can be reversed in both directions
... I have a carbon sensor example also
... dealing with ranges
... ZigBee device
... last example also dealing with ranges
... "canonical" term used and toWire as well
... both directions are supported with mathematical operations
... so there are some real device examples
... I invite you to take a look at the PR and provide feedback

**Ege:** Would be nice to add BACnet and PROFINET binding examples
... they use enums

**Christian:** I see, will formulate examples for them

**Ege:** BACnet enums are used within Siemens

**Kazuyuki:** I am not sure about the actual behavior here
... whether this example is the typical mapping or our own proposal
... is it implemented somewhere? can we refer to it?

**Christian:** I can check but for the moment it is only an example
... anyone can formulate ranges, canonical and such

**Kazuyuki:** ordinary mapping would be good

**Ege:** No need to agree on actual values

**Kazuyuki:** Logarithmic scale could be used as well?

**Ege:** Yes

**Christian:** Will make it more explicit in the PR/document

**Ege:** PR looks good already
... bitmap handling is next user story?

**Christian:** Yes, user story 5

[adjourned]
