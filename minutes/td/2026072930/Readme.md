# WoT TD Calls

https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf

## Slot 1 - 29 July 2026

### Meeting Information

Cancelled

## Slot 2 - 30 July 2026

### Meeting Information

**Attendees:**
1. Kaz Ashimura
2. Michael Koster
3. Christian Glomb
4. Ege Korkan
5. Kunihiko Toumura
6. Mahda Noura

**Scribe:** 
- Ege Korkan

**Regrets:** 

### Minutes

#### Minutes Review

**Ege:** Here are the minutes https://github.com/w3c/wot/pull/1306/changes
... hearing none, merged.

**Ege:** The week after https://github.com/w3c/wot/pull/1308/changes
... hearing none, merged.

#### LoRaWAN Binding

**Ege:** The work is being made open source at Eclipse Foundation. You can see https://github.com/Hao-Siemens/td-tools/blob/feat/add-lorawan-binding-python-folder/python/lorawan/README.md#how-to-describe-a-device-in-a-td
... https://github.com/eclipse-thingweb/td-tools/pull/85

**Ege:** You can see that it is more complex than usual with a lot more data mapping and manipulation happening.
... the work will go back into the binding document as well, this is just tests and feedback at the moment.

**Michael:** 2 weeks ago we discussed this. The reason is because they started with code as codecs. So we need to get people to think about the TD first.

**Ege:** Maybe this will make things more visible and more simplification can happen over time.

**Kaz:** Thanks for the work. WG needs to define what should be imported into the binding document. This is too long.

**Ege:** Yes, mostly the table will go and some prose to explain the usage of the keywords.

**Christian:** Some terms are general and can be/are used in other protocols. So that way we can simplify this binding by splitting.

**Ege:** Indeed

**Kaz:** We should discuss which parts of the vocabulary (or vocabularies) should be in the TD. A core vocabulary for binding would also make sense depending the need.

**Ege:** Yes and we should make sure that people use these mapping vocabularies only when they have to. It should not be encouraged.

**Michael:** I will paraphrase. The TD will be able to describe a data schema that is exactly on the wire. This will not be possible for all protocols. Maybe this can help with creating standardized data schemas.

**Ege:** We have excluded standardized data schemas on top of WoT so far.

**Michael:** What if there is already existing standardized data schemas. Like LWM2M. How to use those as well.

**Ege:** Maybe like https://opcfoundation.org/markets-collaboration/opc-ua-for-machinery/ machine status?

**Michael:** I meant more like CBOR where you can do lossless conversion to JSON Schema. Maybe you can link to OCF schemas and omit the schema entirely. That can be interesting if you want to map a standardized schema to a protocol that it is maybe not even meant to.

**Ege:** We try to do it also for OPC UA companion specs where we map an energy meter to OPC UA energy consumption comp. spec.

**Michael:** There would be a similar thing for LWM2M. They are in XML but there are JSON versions in OneDM.

**Michael:** I also did this thing where I have used LWM2M in the forms but the data schema uses higher level units.

#### Data Mapping

**Ege:** https://github.com/w3c/wot-thing-description/pull/2211 has been updated

**Christian:** We also have comparison to LoRaWAN binding's terms too.

**Ege:** I will review it and then we can have another look next week.

#### Toolchain

**Ege:** https://github.com/w3c/wot-thing-description/issues/2209

**Mahda:** Should we move the toolchain into the TD repo?

**Ege:** I think so. The core is LinkML which is separate anyways.

**Mahda:** Yes I think it would be simpler to do so. Not sure how to manage cross repo releases etc.

**Ege:** And there would be no benefit.

**Mahda:** In the current state, ontologies, SHACL shapes, JSON-LD context are not post-processed to meet our information model and quality requirements. We have index.html, JSON schema, and visualization auto-generated. Thus, the "big PR" should not change artifacts that are not post-processed yet.

**Ege:** OK then we just need to make sure that PR previews work.

**Ege:** AOB?
