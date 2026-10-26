# WoT TD Calls

https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf

## Slot 1 - 21 October 2026

### Meeting Information

**Attendees:**
* Ege Korkan
* Kazuyuki Ashimura
* Christian Glomb
* Kunihiko Toumura
* Cristiano Aguzzi
* Daniel Peintner
* Tomoaki Mizushima
* Michael Koster

**Scribe:** Cristiano Aguzzi

**Regrets:** None

#### Agenda for Today

**Ege:** any topics to update?

-- None --

#### Minutes Review
https://github.com/w3c/wot/pull/1335

**Ege:** minutes looking good, no reviews or changes requested. Merging.

#### Publication Schedule

**Ege:** We agreed the new WD will be made with the new toolchain. It is almost ready and it will be kicked off in November. In mid-December we will add the new features we discussed (common definitions). 

**Ege:** I did a milestone calculation. Since there is a strong dependency with the registry and bindings it is better to target a date before May 2028. The goal is to focus on the registry and bindings after the publication of the TD spec. 

**Cristiano:** I agree.

**Ege:** we have sort of the same issue with Discovery too, but not with the same pressure. 

**Kazuyuki:** this could be an initial starting point for a possible deadline. We have to consider also the impact of future TPAC events. 

**Ege:** any other comments?

#### TPAC Planning

**Ege:** I want to add URI Scheme and protocol selection discussion as well. Otherwise, we have only the toolchain.

**Christian:** Data mapping should be discussed as well. 

**Ege:** any other topics?

**Ege:** Need Sebastian's input for the roadmap.

**Cristiano:** Did we solve the issue about the relationship between the security scheme and bindings?

**Ege:** still to be fixed, but there is no real owner and it might be quite hard to figure out how to do. 

**Kazuyuki:** Any kind of IoT platform which can be mapped with WoT could have their own security mechanism. 

**Ege:** we need an owner for this problem. 

**Kazuyuki:** Our policy is to keep the abstract layer in the TD. But currently we are not really abstract.

**Ege:** correct.

**Kazuyuki:** We have to think about how to re-use and abstract concrete security schemes in the Thing Description. 

**Ege:** cheap solution would be to remove current security schemes and let bindings deal with them.

**Kazuyuki:** ECHONET has already started to work in this direction, so I invited them to TPAC to know more. Also working with DID/VC would help. Joint discussion with Manu about this topic would be useful too. 

#### Issue 488
-> https://github.com/w3c/wot-binding-templates/issues/488 Issue 488 - Double-checking if data types are correctly used

**Ege:** we discovered a bunch of errors in data types across binding documents. 

**Daniel:** I did a review looking at things to improve. HTTP is fine, but the other protocols have issues.

**Ege:** for Modbus I can do it. 

**Cristiano:** is the problem in the schema or in the ontology?

**Ege:** in the ontology.

**Daniel:** we can improve the schema too. 

#### Issue 2217
-> https://github.com/w3c/wot-thing-description/issues/2217 Issue 2217 - Explain how to specify a subprotocol

**Ege:** I updated the table. The URI design was always a tricky part. 

**Ege:** I have created a bunch of proposals that will be discussed at TPAC too. No `href` anymore. 

**Kazuyuki:** Is this example page public? 

**Ege:** not yet. I'll make it public by TPAC. 

**Kazuyuki:** do you think we can try these examples usable by an implementer?

**Ege:** it should be; all of this is coming from implementation experience. 

**Kazuyuki:** If you could bring a device that could speak one of those example protocols, we could check the feasibility during the TPAC PlugFest :)

**Ege:** planning to bring one.

**Kazuyuki:** Great, and thanks!

**Cristiano:** have you included the issue about content-type? 

**Ege:** noted.

## Slot 2 - 22 October 2026

### Meeting Information

**Attendees:**
* Ege Korkan
* Kazuyuki Ashimura
* Christian Glomb
* Kunihiko Toumura
* Erich Barnstedt
* Tomoaki Mizushima
* Mahda Noura
* Michael Koster
* Daniel Peintner

**Invited guest for today:**
* Marc-André Schier

**Scribe:** Ege Korkan

**Regrets:** None

### Minutes

#### Guest
Marc-André Schier from Microsoft is working on his joining procedure, and is an invited guest for today.

#### S7 Binding
-> https://github.com/w3c/wot-binding-templates/pull/490 PR 490 - Draft S7Comm protocol binding

**Ege:** This protocol binding is not a Siemens specification.
... (goes through the changes)
-> https://github.com/w3c/wot-binding-templates/pull/490/changes changes

**Ege:** the question is that the actual specification of the S7 protocol is not publicly available.
... (shows the deployed preview HTML)
-> https://deploy-preview-490--wot-binding-templates.netlify.app/bindings/protocols/s7comm/ deployed preview

**Ege:** will bring an S7 device to TPAC next week.

Decision to merge the proposed driver and create issues for problems we find down the line. Check new issues to remove some redundant vocabulary.

Decision to show an S7 at TPAC along with Siemens TIA Portal with the program loaded into the S7.

**Ege:** (goes through the section "4. S7 Comm Vocabulary")
-> https://deploy-preview-490--wot-binding-templates.netlify.app/bindings/protocols/s7comm/#vocabulary 4. S7Comm Vocabulary

**Ege:** (creates a new GitHub Issue about possible questions)
-> https://github.com/w3c/wot-binding-templates/issues/495 S7 Binding Improvements

**Ege/Erich:** (look at the "4.4 Data Types" section)
-> https://deploy-preview-490--wot-binding-templates.netlify.app/bindings/protocols/s7comm/#data-types 4.4 Data Types

**Ege/Erich:** (then "5.1 Default Mappings")
-> https://deploy-preview-490--wot-binding-templates.netlify.app/bindings/protocols/s7comm/#default-mappings 5.1 Default Mappings

**Ege:** it's a bit redundant to define "writeProperty", etc.

**Erich:** yeah, but it doesn't hurt, though it's probably redundant.

**Ege:** (adds a point about "defining 's7 Write Variable' and 's7 Read Variable'" to Issue 495)
... (then found "ReadVariable" and "WriteVariable" at section "5.2 Service Names")
... would be better to swap 5.2 and 5.3 then.
... (removes the former point "defining 's7 Write Variable' and 's7 Read Variable', and then adds another point about swapping 5.2 and 5.3 instead)

**Ege:** (then shows Example 7)
-> https://deploy-preview-490--wot-binding-templates.netlify.app/bindings/protocols/s7comm/#example-one-form-per-function Example 7

**Ege:** could be applied to a robot arm for example.

**Erich:** this should be considered as a baseline.
... then should think about further Things like battery.
... but should come later.

**Marc-André:** functionality on the backend.

**Erich:** right. That's what I mean.
... something for the future.

Decision: Alarms & Events mapping to be left for a future version of the S7 driver.

**Erich:** (talks about section "7. Security Considerations")
-> https://deploy-preview-490--wot-binding-templates.netlify.app/bindings/protocols/s7comm/#security-considerations 7. Security Considerations

For S7-1200 and 1500 PLCs, encryption needs to be turned off in the TIA Portal before access is possible. This is not a WoT limitation, but a Siemens decision.

**Ege:** should remove "href" from Example 8.
... (adds changes for that within PR 490)
-> https://deploy-preview-490--wot-binding-templates.netlify.app/bindings/protocols/s7comm/#example-s7-1500-thing-description Example 8

**Ege:** now we can delete the possible Issue 495.
... (removes the description for Issue 495)

**Erich:** Ege, do you know if Sebastian would bring his device?

**Ege:** yes, think so.
... (merge PR 490 now)
(merged)

#### EtherNet/IP Binding
-> https://github.com/w3c/wot-binding-templates/pull/492 PR 492 - Add array model with eipv:dimensions and eipv:elementCount

**Erich:** would keep things/description simple.
... makes it easier to read.

-> https://deploy-preview-492--wot-binding-templates.netlify.app/bindings/protocols/ethernetip/ preview

**Ege:** (shows Example 10)
-> https://deploy-preview-492--wot-binding-templates.netlify.app/bindings/protocols/ethernetip/#example-whole-array-tag Example 10

**Erich:** it helps with the Form section.
... yes, it's redundant, but decided to use this style for my implementation.
... would be happy to remove it if needed.

**Ege:** similar issue with the Modbus Binding.
... (shows Modbus Binding)
-> https://w3c.github.io/wot-binding-templates/bindings/protocols/modbus/ WoT Modbus Binding

**Ege:** (also shows node-wot/packages/binding-modbus)
-> https://github.com/eclipse-thingweb/node-wot/tree/master/packages/binding-modbus eclipse-thingweb/node-wot/packages/binding-modbus

**Erich:** would prefer creating a GitHub Issue for further discussion.

**Ege:** e.g., array of arrays?
... what about the latter part of PR 492?

**Erich:** those points are also included in my implementation.

**Ege:** (shows Example 11)
-> https://deploy-preview-492--wot-binding-templates.netlify.app/bindings/protocols/ethernetip/#example-range-of-four-elements-starting-at-element-2 Example 11

**Erich:** it's kind of redundant.

**Ege:** will create a GitHub Issue.

**Erich:** good.

**Ege:** I'm fine with keeping this kind of redundancy:
```json
"eipv:dimensions": [10],
"eipv:elementCount": 4
```

**Mahda**: can we use the existing type within TD?

**Erich**: we could do so. ... but no guarantee with the usage of the types... ... up to the implementers to map the type systems. ... you don't want unexpected underflow/overflow, right?

**Ege**: (shows the table at "4.4 Primitive Data Types")

**Erich**: most of the protocol drivers' work is mostly type conversion.

**Ege**: (creates a new GitHub Issue about the problems) ... similar problems with the LoRaWAN Binding as well... ... we have "wireType" for LoRaWAN. ... (puts summary of the discussion to PR 492) -> https://github.com/w3c/wot-binding-templates/pull/492#issuecomment-6342695082 Ege's comments

**Ege**: now we can merge this PR 492 itself.

**Mahda**: would like to look into the multidimensional array from LinkML.

**Ege**: ok.

**Ege**: let's see you all in Dublin next week!

[adjourned]


