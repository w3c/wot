# WoT TD Calls

https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf

## Slot 1 - 23 September 2026

Cancelled

## Slot 2 - 24 September 2026

### Meeting Information

**Attendees:**
* Ege Korkan
* Kazuyuki Ashimura
* Christian Glomb
* Kunihiko Toumura
* Erich Barnstedt
* Tomoaki Mizushima
* Daniel Peintner
* Michael Koster
* Marc Schier

**Scribe:** Michael Koster

**Regrets:** None

### Minutes

#### Agenda for Today
**Ege:** (skims the basic agenda items on the TD wiki)

**Kazuyuki:** during the main call yesterday, we were wondering about the updated publication schedule
... and wanted to check with you
... can we talk about that quickly today?

**Ege:** need clarification from Mahda but she is not around today

**Kazuyuki:** can you talk with her offline?

**Ege:** will do

**Michael:** we need to check the TPAC agenda for TD topics

**Ege:** ok

#### Minutes Review
https://github.com/w3c/wot/pull/1319 16-17 Sep 2026

**Ege:** any feedback on the minutes?
... no, merged

**Ege:** introduce Marc Schier
... Marc still needs to join the group, will be a guest today

#### LoRaWAN Things Conference
**Ege:** attended the conference last 2 days
... outreach for WoT
... people understand what we're doing and want to participate
... Kerlink proposes a liaison
... could be part of a certification badge program
... added 2 more devices (free from vendor)
... lots of interest
... Modbus and BACnet gateways are being offered by LoRaWAN GW vendors
... all slides are available

https://w3c.github.io/wot-binding-templates/bindings/protocols/lorawan/ LoRaWAN Binding
https://github.com/eclipse-thingweb/examples/tree/main/TTC26 The Things Conference 2026

**Ege:** people are surprised about the number of bindings available

**Kazuyuki:** Is there anything installed in the devices for WoT?

**Ege:** no, it's an external TD that is generated to talk to the device

**Kazuyuki:** so they talk to a gateway

**Ege:** yes, it's an edge device that we actually talk to
... Rob Warren will bring a device (Oyster) to the plugfest
... now you need a set of keys for the device and the TD connects

**Kazuyuki:** are you bringing devices to Dublin?

**Ege:** hope to bring everything
... there were a lot of Azure and IoT people there

#### EtherNet/IP Binding

https://github.com/w3c/wot-binding-templates/pull/484 Draft EtherNet/IP protocol binding
https://deploy-preview-484--wot-binding-templates.netlify.app/bindings/protocols/ethernetip/ Preview

**Ege:** we have some feedback on the syntax and URI scheme

**Erich:** I've looked at the list

**Ege:** (reviews PR #484)
... (square brackets, URI fixes, definitions, xsd types)

**Daniel:** yes xsd type fixes

**Ege:** (more scan through PR documents and spec)
... looks good

**Erich:** maybe clarify the reference to XML schema datatypes

-> https://deploy-preview-484--wot-binding-templates.netlify.app/bindings/protocols/ethernetip/#toc 4.2 Primitive Data Types

**Ege:** There are similarities to BACnet and Profinet
... we need a solution when there is not a good match in xsd types

**Daniel:** prefix

**Kazuyuki:** "closest" implies not equal
... at some point we can clarify the equivalence

**Ege:** looks like this addresses all the feedback
... we will need to remove the false normative identifiers like "MUST"

**Erich:** OPC DA AE HDA mappings should be considered
... TD would describe the endpoint

**Ege:** information like manufacturer

**Daniel:** XSD and JSON data types are not exactly the same, for example an XSD Boolean can have [1,0] value in addition to [true, false] and 2 other lexical representations

**Ege:** the driver should normalize those
... will check and create an issue, will submit later with details

#### w3c.json file on wot-resources repo

https://github.com/w3c/wot-resources/pull/36 Create w3c.json file

**Ege:** can we just merge, what happens?

**Kazuyuki:** W3C server will check periodically and apply, it's not a risk to merge

**Ege:** merged

#### Modbus Address Range

https://github.com/w3c/wot-binding-templates/pull/472

**Ege:** 2 things
... address range is "conventional", we should not be strict, language change in the spec
... also some quick fixes from TallTed

**Ege:** any comments?
... no comments, merged

#### Features, Data Mapping
-> https://github.com/w3c/wot-thing-description/pull/2234 Data mapping user story 5
-> https://github.com/wiresio/wot-thing-description/blob/7747b4c0b0ca8b215f12f6fe5d4b8dfaa027f7f1/planning/work-items/analysis/data-mapping/US5-details.md Rendered MD

**Ege:** we're getting close to a complete analysis

**Christian:** there were some comments addressed
... should we include extraction mechanism in the core directory
... we could include multiple payload bindings moving it out of the core vocabulary

**Ege:** we can discuss this now (US5-details.md)
... this is about when there is structured data in a set of bits (bitfield?)
... a lot of protocols expose a big JSON file that contains fields and complex types

**Christian:** explains example for extracting a brightness value from a JSON lighting control object
... can use JSON Pointer to extract

**Daniel:** the other examples are octet streams containing raw values
... similar examples in Profinet
... do we need an octet-stream binding to get to JSON

**Ege:** we need to think about the design
... the TD core vocabulary is not aware of datatypes
... the steps to extract are generic but the values are dependent on the content-type

**Christian:** a similar approach could be used for handling other types
... we could have a dedicated octet-stream binding

**Ege:** we would need some generalization
... (review all the examples)

**Christian:** these use fromWire and toWire
... not sure whether bit operations should be in here

**Ege:** the inverse operations are "pick" fromWire and "wrap" toWire
... when you submit you need to insert the value into the whole big structure

**Ege:** there is an array example using indexing
... should it also be a pick operation from an array?

**Christian:** yes

**Ege:** bitfield with enum example based on a heat pump status
... 2 single bit fields and a 2 bit field

**Christian:** we extract, then map to an enum

**Ege:** this is also used in BACnet and Profinet
... mask and map

**Ege:** will have a deeper look, looks correct
... and compare with the bindings

**Ege:** we are on time, it's looking good

**Kazuyuki:** we could discuss details next week
... what would be the best style for this to be published
... there is an expected implementation guideline Note, as a candidate

**Ege:** we need more space for concrete examples but the vocabulary itself will be in the TD

**Ege:** chapter 6 needs this also

#### AOB

**Ege:** no business, adjourn
**Ege:** thanks everyone
