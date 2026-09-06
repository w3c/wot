# WoT TD Calls

https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf

## Slot 1 - 02 September 2026

### Meeting Information

**Attendees:**

1. Ege Korkan
2. Kunihiko Toumura
3. Michael Koster
4. Kazuyuki Ashimura
5. Christian Glomb
6. Tomoaki Mizushima
7. Daniel Peintner

**Scribe:** Ege Korkan

**Regrets:** 
- Mahda Noura

### Minutes

#### Agenda for Today

Ege: (skims the basic agenda items on the TD wiki)
... data mapping and media streaming today or tomorrow?

Christian: data mapping today

Kunihiko: for me tomorrow

#### Minutes Review

https://github.com/w3c/wot/pull/1313

Ege: here they are
... seeing no raised hands, good to go.
... merged

#### Specref problems

Ege: specref outage is causing problems: https://github.com/tobie/specref/issues/951
... so ignore respec for now

#### WoT Resources

Ege: https://github.com/w3c/ns/pull/10 is a fix towards the right direction
... https://github.com/w3c/wot-resources/pull/31 tests for us. revealed
... it is stable and has no dependencies
... runs on PRs and monthly

Daniel: I was just confused since no one would use node.js 18. 

Michael: yes nodejs 18 is deprecated.

Ege: I will remove the mentions.

Kazuyuki: what are the next steps?

Ege: I need to update the resources so that the tests pass. Also the webmaster is involved.
... we cannot do more frequent releases due to this process though

Kazuyuki: they wanted to make some progress on namespace management. The repository might be that but we should talk with them

Ege: yes I will

Ege: Also I am removing the static resources from the TD repo at https://github.com/w3c/wot-thing-description/pull/2230 . We should have less maintenance this way

Ege: also TD, binding templates and registry repositories have PRs that change HTTP to HTTPS. Sadly not possible to do replace all. ontology prefixes need to stay http and also some website do not support HTTPS still. 

#### Data Mapping

- https://github.com/w3c/wot-thing-description/blob/main/planning/work-items/analysis/analysis-data-mapping.md Analysis Document
- https://github.com/w3c/wot-thing-description/pull/2211 PR 2211 - Extending analysis
- https://github.com/wiresio/wot-thing-description/blob/1aa3da611f2bfebfd948a64951db38a4853cee79/planning/work-items/analysis/analysis-data-mapping-3-summary.md Rendered MD for analysis-data-mapping-3-summary.md

##### Discussion about "Example 3: HTTP Light Colorpicker Properties"

Christian: I have copied the summary from the main document
... the prefix is still there as map but we plan to include it in the TD context and then it would disappear
... also about negative values, it is apparently possible to have them in Modbus but to be confirmed.

Michael: yes there are some common prefixes. I will find and send it over

Christian: Now to the Hue 

(quickly refers to Mired at https://en.wikipedia.org/wiki/Mired)

Christian: reciprocal refers to inverting the number (power of -1).

Ege: what are the other diffs in the PR?

Christian: nothing much other than this.

Michael: on the reciprocal, we can think of "power" kind of term which can take values like -1 or 2 for square

Ege: on the GitHub, I see other diffs. 
... we can do some cleanup and do this async.

Kazuyuki: would it not be similar to have just one term as fromWire can be calculated from toWire?

Daniel: I think there were some cases where you could not

Christian: it depends on the implementer no?

Michael: I think it needs more discussion so an issue would be good. We should write the possibilities.

Kazuyuki: asked about that mainly because (1) we might be going to get an error if the fromWire and toWire contradict with each other
... also sometimes we need to care about the precision of the number, i.e., significant figures of the conversion result

Ege: ok we have five points to further evaluate and cleanup the PR (CSV and main analysis file)
... one is power or reciprocal
... two is two direction requirements
... three is removal of prefix or not?
... units is already an issue
... also about adding code examples on how this should look like when generated.
... nice, we can cleanup the PR, open other issues and merge it

[Slot 1 adjourned]

---

## Slot 2 - 03 September 2026

### Meeting Information

**Attendees:**

1. Ege Korkan
2. Kazuyuki Ashimura
3. Kunihiko Toumura
4. Erich Barnstedt
5. Tomoaki Mizushima
6. Christian Glomb
7. Daniel Peintner
8. Michael Koster

**Scribe:** Erich Barnstedt

**Regrets:** 

### Minutes

#### Copyright of the content from the Binding Specifications

- https://w3c.github.io/wot-binding-templates/bindings/protocols/lorawan/index.html#js-codec-example LoRaWAN Binding
- https://github.com/w3c/wot-binding-templates/pull/482 PR 482 - fix the copyright pic for the decoding example
- https://deploy-preview-482--wot-binding-templates.netlify.app/bindings/protocols/lorawan/#js-codec-example Preview HTML within PR 482

Ege: (describes our concern about the potentially copyrighted content within the Binding Specifications, e.g., the LoRaWAN Binding)
... should remove the images for the imported tables from the GitHub draft and the GitHub repo
- https://github.com/w3c/wot-binding-templates/tree/main/bindings/protocols/lorawan/images imported images

#### TPAC

**Plugfest Mo-Tues (setup Sunday)**

**Breakouts Thursday/Friday** - Joint session for WoT-Connectivity/Binding by Sebastian and Erich

**Media Streaming demo requested**

**Comm definitions**

**Data Definitions**

- https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf#September_2%2C_3_2026 Ege adds topics to the TD Wiki about the expected topics for TPAC 2026

**TPAC Topics from TD TF**

**Plugfest**

- **Media Streaming:** Showcasing the state of the art and coming up with the proposal for integration with WoT, e.g., a binding, new vocabulary terms etc.
  - Inviting the relevant people: To be extended by Kaz
- **Common Definitions:**
  - Sentron PAC Energy Meter. Showing common definitions usage
- **Data Mapping**
  - Examples from the analysis
  - ECHONET Lite Web API (if they can join). Or a new binding. How to handle the layering of restricted HTTP Binding for ECHONET Lite Web API?

**Breakout Topics (from individual(s))**

- To be submitted at https://github.com/w3c/tpac2026-breakouts/issues

**WG Meeting**

- **OPC Foundation Liaison and Collaboration**
  - WoT Binding for OPC UA
  - WoT Connectivity for OPC UA
- **Media Streaming: Together with MEIG**
  - people: To be added
  - note: could also be a breakout
- **Geolocation: In general and also media with geolocation information**
  - people: To be added
  - note: could also be a breakout

#### Extending Data Mapping Analysis

- https://github.com/w3c/wot-thing-description/pull/2211 PR 2211 - Extending analysis

Ege: (goes through the latest changes at https://github.com/w3c/wot-thing-description/pull/2211/changes)
... made some mistake and will fix that later

Kazuyuki: let's dive into the details separately, and ask Toumura-san to talk about media updates for today :)

Ege: right

#### Media streaming

- https://github.com/w3c/wot-thing-description/pull/2213 PR 2213 - Expand media streaming analysis
- https://github.com/k-toumura/wot-thing-description/blob/d65edf17613a2739d7f1f150870f910ddf176578/planning/work-items/analysis/analysis-media-streaming.md updated MD within the PR

Kunihiko: (describes the updates)

- https://github.com/k-toumura/wot-thing-description/blob/d65edf17613a2739d7f1f150870f910ddf176578/planning/work-items/analysis/analysis-media-streaming.md#summarized-problem Summarized Problem

Kunihiko: (describes 3 problems)

1. A Consumer cannot determine how to establish a stream, or which one to choose
2. No affordance type fits a media stream exactly.
3. A Thing Description cannot describe operations on a stream

Ege: for me, the 2nd problem is the biggest one

Kunihiko: need to think about how to solve those 3 problems

Ege: based on today's discussion, we can merge this PR.

Kazuyuki: agree

(no objections)

(merged; further updates can be proposed via another PR)

[adjourned]
