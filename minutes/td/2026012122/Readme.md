# WoT TD Calls

## Slot 1 - 21 January 2026

### Meeting Information

#### Attendees

*   Ege Korkan
*   Michael Koster
*   Mahda Noura
*   Erich Barnstedt
*   Marc Riedlinger
*   Kunihiko Toumura
*   Daniel Peintner
*   Tomoaki Mizushima
*   Cristiano Aguzzi

#### Scribe

Ege Korkan

#### Agenda

<https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf#January_21%2C_22_2026>

### Minutes

Ege: We have new rules for the minutes, but basically the same way as before.

#### Agenda Review

Ege: URI vs IRI and then common definitions. Anything from Mahda for the toolchain?  
Mahda: I can show something.

#### Minutes Review

Ege: I used Copilot for the second commit. It fixes only small stuff, so I really like it. Any concerns?  
Ege: (hearing none)  
Ege: Any concerns on the minutes themselves?  
Ege: Hearing none, merging.

#### Slot

Ege: Is it fine for you, Erich?  
Erich: It can be earlier, but it is fine.  
Ege: Ok, I have asked others too.

#### Onboarding

Ege: (explains the way we work, shows GitHub linking etc.)

#### Toolchain

Mahda: (explains the motivation)  
Mahda: We have too many documents to manage. Working with different resources, etc., is tedious.  
Mahda: The new toolchain uses LinkML. You define a YAML file that is the data model.  
Mahda: There are also some tooling components that I have added—for example, cross‑referencing terms.  
Mahda: The next work is handling the assertions. That is the normative text we have.  
Mahda: I also have reviewed the security section. Next will be hypermedia, and then diagrams.  
Ege: Thank you!  
Mahda: How are assertions handled?  
Ege: (shows the CSV file and the assertion generator)

#### URI and IRI

<https://github.com/w3c/wot-thing-description/pull/2172>

Ege: I will show the final state.

Ege: (writes the opinions in a GitHub comment)  
Daniel: Better to say OR as a result of base + relative href.  
Mahda: Absolute and target definitions should be separated.  
Mahda: The order should be base, relative, absolute, target.

Ege: I will adapt to these.

#### Common Definitions

<https://github.com/w3c/wot-thing-description/pull/2173>

Ege: Ben's feedback is asking for clarifications on the default‑overriding mechanism.  
Cris: I think it is clear. Maybe he can join.  
Daniel: Can a form have an array value? Maybe that is the confusion.  
Ege: Ok. I will reply in the issue and also invite Ben for next week.

***

## Slot 2 - 22 January 2026

### Meeting Information

#### Attendees

*   Ege Korkan
*   Michael Koster
*   Marc Riedlinger
*   Mahda Noura
*   Daniel Peintner
*   Kunihiko Toumura
*   Tomoaki Mizushima
*   Erich Barnstedt

#### Scribe

Daniel Peintner

#### Agenda

<https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf#January_21%2C_22_2026>

### Minutes

#### Architecture assertions

<https://github.com/w3c/wot-thing-description/issues/2151>  
Ege: Thank you Toumura‑san for volunteering.

#### Binding Registry

##### PR55  

<https://github.com/w3c/wot-binding-registry/issues/55>  
Ege: PR55 addresses 2 issues (#54 and #53).  
… unfortunately there is no way to add a placeholder in the YAML template.  
… There was a remark that it is not clear what the binding targets.  
… We need to think about different versions.  
… I reworded the text about versioning.  
… It is still a draft and you can provide feedback.  
… Contact information is another topic. What about people who do not want to share their email address?  
… Relevant organizations will be contacted.  
Daniel: Who is contacting the organization? It was not clear to me…  
Ege: If a random person submits, e.g. for AMQP, there is no organization.  
… I think we need to accept that situation.  
Daniel: I see.  
Ege: Out of goodwill, we could contact the relevant organization.  
Ege: I also provided an example in the template.  
… The new parts from the template are also in the HTML.  
… People have 30 days to reply if they are contacted.  
… There are still some sections to be filled.  
… For example, the transitions.  
… I also put the process in a GitHub workflow/project.  
… We also need to think about the various transitions.  
… What if we never leave state “Initial”?  
Mahda: e.g., a random person submits a Matter binding.  
… Not sure if we are allowed to do so.  
… Maybe we need a disclaimer.  
… Or distinguish between the possible situations.  
Ege: We had a similar case for BACnet, and ASHRAE just asked us to put a single statement.  
Mahda: For non‑open protocols it might be problematic.  
Ege: I encountered a similar thing with Matter and the matter‑js library.  
… They say clearly it is not certified.  
… I think we need to add a section about “ownership”.  
… Maybe together with copyright and access rights.  
… Created issue #56.

##### Initial state dependency  
<https://github.com/w3c/wot-binding-registry/issues/51>  
Ege: e.g., Modbus depending on octet‑stream without octet‑stream being stable/current.  
… See section <https://w3c.github.io/wot-binding-registry/#req-deps>  
… The section needs to be updated; relax this aspect.

##### Add code of conduct for the registry submission  
<https://github.com/w3c/wot-binding-registry/issues/44>  
Ege: Done as part of #15.

#### LoRaWAN

Erich: I would like to take Modbus as an example for LoRaWAN.  
… We could send them (LoRa Alliance) the draft for review.  
… I volunteer to kick off the work.  
… I think it should be relatively straightforward.  
Ege: Unfortunately, I do not have hardware, but I could support the work.  
Erich: Hardware is quite expensive.  
Ege: End devices are cheap and the gateway is expensive.  
Erich: Both are somewhat expensive.  
Michael: Sharing the hardware list would be good.  
… I have some devices myself.  
Erich: Gateway: <https://www.waveshare.com/wiki/SX1302_LoRaWAN_Gateway_HA>  
… Software Stack: <https://www.beyondlogic.org/lorawan-upgrading-to-basic-station-and-the-things-network-v3-stack/>  
<https://wiki.dragino.com/xwiki/bin/view/Main/User%20Manual%20for%20LoRaWAN%20End%20Nodes/LHT65N%20LoRaWAN%20Temperature%20%26%20Humidity%20Sensor%20Manual/#H2.4.2BAT-BatteryInfo>  
<https://github.com/lorabasics/basicstation>  
Michael: Two layers: radio and network gateway.  
Erich: I created two TDs: one for radio provisioning and another one for device onboarding.  
… You need some fun stuff like mostSignificantByte, bitmask, multiplier.  
… Similar to Modbus.  
Ege: I keep seeing this more often.  
… I created issue 454.

\[adjourned]
