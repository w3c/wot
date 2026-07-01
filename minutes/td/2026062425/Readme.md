# WoT TD Calls

https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf#June_24,_25_2026

## Slot 1 - 24 June 2026

Cancelled

## Slot 2 - 25 June 2026

### Meeting Information

**Attendees:**
* Ege Korkan
* Kazuyuki Ashimura
* Erich Barnstedt
* Michael Koster
* Kunihiko Toumura
* Cris Aguzzi

**Scribe:** Kazuyuki Ashimura

**Regrets:** Daniel, Mahda

### Minutes
-> https://github.com/w3c/wot/pull/1301 PR 1301 TD Minutes for June 17-18, 2026

**Ege:** (goes through the minutes)
... (approved)

### Agenda Bushing
**Ege:** need to shuffle topics since yesterday's meeting was cancelled
... (add some edits to the agenda)

### Report from the LoRaWAN Binding Meeting & PR 458
**Ege:** yesterday, there was some presentation about concrete information
... about the Binding below
https://deploy-preview-458--wot-binding-templates.netlify.app/bindings/protocols/lorawan/#examples

**Ege:** also about the payload
https://github.com/MultiTechSystems/device-payload-schema (Public)
https://members.lora-alliance.org/wg/Payloadschema/ (LoRa Members-only)

**Ege:** (gives information about the "deploy-preview-458" link above)
... (also the device-payload-schema repository)
... it handles binary data using the type keyword of "i16" or "u8"
... compliant with our schema

**Cris:** pretty generic approach

**Ege:** (shows r211.js)
https://github.com/TheThingsNetwork/lorawan-devices/blob/master/vendor/netvox/payload/r211.js

**Kaz:** what's that?

**Ege:** OSS work around LoRaWAN for prototyping

**Erich:** good timing to start official work

**Ege:** (then shows the "Performance & Security" section from the device-payload-schema)
-> https://github.com/MultiTechSystems/device-payload-schema#performance--security

**Ege:** this example YAML to be used to generate JS code (for a while)
... we can generate this from TD also
... can put some extra fields as well to generate ordinary TD

**Erich:** it's great to talk about this to use WoT
... would see a JSON format for the output

**Ege:** the property names here are still open
... could refer to the IPSO standard
... we should reassign this

**Erich:** ok
... would see the input for the decoder
... would know how to handle the data
... we should draw a diagram of the procedure

**Ege:** right
... would show the full end-to-end procedure
... (shows the document site for the Things Network)
https://www.thethingsnetwork.org/docs/devices/registration/

**Ege:** then would see something else
... (goes back to the 458 document)
-> https://deploy-preview-458--wot-binding-templates.netlify.app/bindings/protocols/lorawan/#structure-of-a-lorawan-uplink-message 1.2 Structure of a LoRaWAN Uplink Message

**Ege:** Byte 0 is Report type
... Byte 1-2 is for Temperature
... Byte 3-4 is Unsigned 16-bit integer
... then branching
-> https://deploy-preview-458--wot-binding-templates.netlify.app/bindings/protocols/lorawan/#fixed-binary-layout-with-without-branching 1.3.1 Fixed Binary Layout with/without branching

**Ege:** you can understand the mechanism of branching here
... (goes through the details as well)

**Kaz:** regarding the style, it's odd to have the Introduction section before ToC

**Ege:** ah, there is some bug with the template...
... will fix it

**Kaz:** thanks!

**Ege:** (continues to describe the details)
-> https://deploy-preview-458--wot-binding-templates.netlify.app/bindings/protocols/lorawan/#js%20example%201 1.4 Codec JS function example

**Ege:** (describes the example table on "010b01240b2d0bef000000")

**Cris:** can see there are a lot of efforts for optimization
... what about CBOR for LoRaWAN?

**Ege:** like schema-based compression?

**Cris:** yeah, sort of payload definition
... for the data structure using another file format

**Ege:** don't know...
... we can do that theoretically
... but depends on the ecosystem

**Cris:** all the examples are different by themselves
... and difficult to fit

**Ege:** meaning would save the electric power?

**Cris:** e.g., for a sensor to see the capacity of the rain

**Ege:** ah, I see
... maybe could consider making the device sleep

**Cris:** yeah, would think about some mechanism

**Ege:** (adds a comment on "is there any activity to standardize the payload format to avoid many variations")
... ("or at least naming different ways and reduce the different styles")

**Michael:** LoRa adoption is still ongoing
... we should probably try to involve others
... you can hook up with the other SDOs like IPSO

**Ege:** would try to find examples

https://github.com/MultiTechSystems/device-payload-schema/blob/5f400db3a0ffae38b3d8aedc982288717e3855be/docs/IPSO-REFERENCE.md?plain=1#L4

**Kaz:** in that case, you mean we might want to think about some kind of canonicalization of all the possible variations?

**Ege:** yeah, would be nice if possible
... would motivate more people
... critical to testing probably given the possible costs to test all the variations

**Ege:** by the way, any remarks around the document itself?
... for the next PR, we can move some of the contents to the Appendix

(no more comments)

**Ege:** (commits the comments so far)

### Readability
https://github.com/w3c/wot-binding-registry/pull/70 Readability Improvements

**Ege:** any more comments?

(none)

**Ege:** (merges it)

### Interaction Semantics
-> https://github.com/w3c/wot-thing-description/pull/2206 Interaction Semantics Section
-> https://w3c.github.io/wot-thing-description/#sec-op-data-schema-mapping 5.3.4.2.1 Mapping op Values to Data Schemas
-> https://w3c.github.io/wot-thing-description/#behavior-data 9.2 Data Schemas

**Ege:** some of the contents came from the WoT Architecture spec
... created the PR 2206 to clean the spec up

**Ege:** (shows "9.3 Interaction Semantics" from the PR 2206)
-> https://pr-preview.s3.amazonaws.com/w3c/wot-thing-description/pull/2206.html#interaction-semantics 9.3 Interaction Semantics

**Ege:** another small point there
... (shows "5.3.4.2.2")
... removing this section completely

**Kaz:** just to make sure it's already removed within the PR 2206, right?

**Ege:** yes

### Analytics on the TD standards and wot-resources
**Ege:** would mention this just quickly for those who didn't join the main call yesterday
-> https://w3c.github.io/wot-analytics/ WOT Analytics Dashboard site

**Ege:** (describes that there is a specific analytics page for WoT activity)
... (shows the "Yearly" > "Top Paths" > "Standardization Documents" section)

**Cris:** interesting to see which Web page people were looking at
... also the schema

**Ege:** ok
... would talk with the W3C System Team

**Michael:** could have a long-tail information

**Ege:** there is a big dump of CSV files there
... note that the clients which accessed the WoT resources are desktop PCs

[adjourned]
