# WoT TD Calls

## Slot 1 - 21 January 2026

### Meeting Information

#### Attendees

- Ege Korkan
- Michael Koster
- Mahda Noura
- Erich Barnstedt
- Marc Riedlinger
- Kunihiko Toumura
- Daniel Peintner
- Tomoaki Mizushima
- Cristiano Aguzzi

#### Scribe

Ege Korkan

#### Agenda

https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf#January_21%2C_22_2026

### Minutes

ek: we have new rules for the minutes but basically the way before

#### Agenda Review

ek: URI vs IRI and then common definitions. Anything from Mahda for the toolchain?
mn: I can show something

#### Minutes Review

ek: used copilot for the second commit. It fixes only small stuff so I really like it. Any concerns?
ek: (hearing none) 
ek: any concerns on minutes themselves?
ek: hearing none, merging

#### Slot 

ek: Is it fine for you Erich?
eb: can be earlier but it is fine
ek: ok, I have asked others too.

#### Onboarding

ek: (explains the way we work, shows github linking et.)

#### Toolchain

mn: (explains the motivation)
mn: we have too many documents to manage. Work with different resources etc. it is tedious
mn: The new toolchain uses LinkML. You define a YAML file, that is the data model.
mn: There are also some toolings that I have added. For example, cross referencing terms.
mn: the next work is handling the assertions. That is the normative text we have.
mn: I also have reviewed the security section. Next will be hypermedia. and then diagrams
ek: Thank you!
mn: how are assertions handled?
ek: (shows the csv file and the assertion generator)

#### URI and IRI

https://github.com/w3c/wot-thing-description/pull/2172

ek: I will show the final state

ek: (writes the opinions on github comment)
dp: better to say OR as a result of base + relative href
mn: absolute and target definitions should be separated.
mn: order should be base, relative, absolute, target.

ek: I will adapt to these


#### Common Definitions

https://github.com/w3c/wot-thing-description/pull/2173

ek: Ben's feedback is asking for clarifications on the default overriding mechanism
ca: I think it is clear. maybe he can join 
dp: can a form have an array value? maybe that is the confusion
ek: ok I will reply in the issue also invite ben for next week

## Slot 2 - 22 January 2026

### Meeting Information

#### Attendees

- Ege Korkan
- Michael Koster
- Marc Riedlinger
- Mahda Noura
- Daniel Peintner
- Kunihiko Toumura
- Tomoaki Mizushima
- Erich Barnstedt

#### Scribe

Daniel Peintner

#### Agenda

https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf#January_21%2C_22_2026


TOPIC: Architecture assertions
https://github.com/w3c/wot-thing-description/issues/2151
EK: Thank you Toumura-san for volunteering

TOPIC: Binding Registry

SUBTOPIC: PR55
https://github.com/w3c/wot-binding-registry/issues/55
EK: PR55 addresses 2 issues (#54 and #53)
... unfortunately there is no way to add placeholder in YAML template
... there was remark that it is no cleat what binding targets
... we need to think about different versions
... I reworded the text about version
... it is still a draft and you can provide feedback
... contact information is another topic. What about people that do not want to share the email address
... relevant organizations will be contacted 
DP: Who is contacting the organization? Was not clear for me...
EK: If a random person submits for AMQP,,, there is no organization
... I think we need to accept that situation
DP: I see
EK: Out of good will, we could contact the relevant organization
EK: I also provided an example in the template
... the new parts from the template are also in the HTML
... people have 30 days to reply if being contacted
... there are still some section to be filled
... for example for the transitions
... I also put the process in a GitHub worklfow/project
... we also need to think about the various transitions
... what if we never leave state "Initial"
MN: e.g., random person submits Matter binding
... not sur if we are allowed to do so
... maybe we need a disclaimer
... or distinguish between the possible situations 
EK: We had a similar case for BACnet and ASHRAE just asked us to put a single statement
MN: For non open protocols it might be problematic
EK: I encountered a similar thing with Matter and the matter-js library
...they say clearly it is not certified
... I think we need to add a section about "ownership"
... maybe together with copyright and access rights
.... created issue #56

SUBTOPIC: Inital state dependency
https://github.com/w3c/wot-binding-registry/issues/51
EK: e.g., Modbus depending on octet stream without octet-strem being stable/current
... see section https://w3c.github.io/wot-binding-registry/#req-deps
... sections needs to be updated, relax this aspect

SUBTOPIC: Add code of conduct for the registry submission
https://github.com/w3c/wot-binding-registry/issues/44
EK: Done as part of #15

TOPIC: LoRaWAN

EB: I would like to take Modbus as an example for LoRaWAN
... we could send them (Lora Association) the draft for review
... I volunteer to kick-off the work
... I think it should be relatively straight forward 
EK: Unfortunately I do not have hardware but I could support the work
EB: Hardware is quite expensive
EK: end devices are cheap and gateway is expensive
EB: Both are somewhat expensive
MK: Sharing the hardware list would be good
... I have some devices myself
EB: Gateway, https://www.waveshare.com/wiki/SX1302_LoRaWAN_Gateway_HA
... Software Stack, https://www.beyondlogic.org/lorawan-upgrading-to-basic-station-and-the-things-network-v3-stack/
https://wiki.dragino.com/xwiki/bin/view/Main/User%20Manual%20for%20LoRaWAN%20End%20Nodes/LHT65N%20LoRaWAN%20Temperature%20%26%20Humidity%20Sensor%20Manual/#H2.4.2BAT-BatteryInfo
https://github.com/lorabasics/basicstation
MK: 2 layers, radio and network gateway
EB: created 2 TDs, one for radio provisioning and another one for device on-boarding
.... you need some fun stuff like mostSignificantByte, bitmask, multiplier
... similar to Modbus
EK: I keep seeing this more often
...I created issue 454

[adjourned]
