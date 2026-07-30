# WoT TD Calls

https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf#July_08,_09_2026

## Slot 1 - 08 July 2026

### Meeting Information

**Attendees:**
- Daniel Peintner
- Ege Korkan
- Michael Koster
- Christian Glomb
- Kaz Ashimura
- Kunihiko Toumura

**Scribe:** 
- Michael Koster

**Regrets:** 

### Minutes

#### Minutes Review

**Ege:** Any feedback on the minutes from last week?
... approved

#### Respec Error

**Ege:** There was an error with respec that seems to have gone away
- https://github.com/w3c/wot-thing-description/pull/2207 PR #2207 - Respec Reference Fixes

**Ege:** Any objections to merging?
... merged

#### Data Mapping

- https://github.com/w3c/wot-thing-description/pull/2201 Draft PR #2201 - Data Mapping Analysis Extension
- https://github.com/w3c/wot-thing-description/blob/c8a7b202b4395c77bbea33892215b8ed0b88379d/planning/work-items/analysis/analysis-data-mapping.md Rendered analysis-data-mapping.md

**Ege:** Review topics:
... side channels
... mapping to non-JSON payloads
... Non-JSON payloads need to be resolved before we can develop media types
... mathematical operations like scaling
... type conversion, enum mapping
... data structure conversion

**Christian:** What is the data structure mapping?

- https://github.com/w3c/wot-thing-description/issues/1936 related Issue 1936 - Supporting complex/structured types in simple protocols

**Ege:** For example, extracting elements from a buffer
... Also mapping Modbus registers to numeric data types

**Christian:** It's like extracting CSV fields

**Ege:** With CSV we have column names, but it does seem similar

**Christian:** It's not identical but similar, same direction

**Ege:** Any other comments:
... bitmaps are the opposite direction, expanding bitfields

**Ege:** Any other discussion?

**Kaz:** What about the related issue #1936
... maybe we need a diagram to add to the text description and make it easier to understand

**Daniel:** The byte and register mapping seems to be confusing

**Ege:** Yes, the byte counts and register counts don't seem to correspond
... maybe the register count is a total for both timestamp and value in this example
... we need a diagram to explain this better
... the tables explain it also; we can reference a diagram to the table

**Ege:** Any other comments? Should we review other use cases?

**Ege:** One question is how much more complex operations are required? Do we need general math formula support?

**Christian:** Maybe we need averages, etc., more complex operations, but we would need use cases

- https://en.wikipedia.org/wiki/Mired Wikipedia - Mired (Micro Reciprocal Degree)

**Michael:** There are micro reciprocal degrees (MIRED) for color temperature
... there are tuples, like a target and transition time

**Ege:** There is the Hue API with MIREK

**Michael:** K is for Kelvin, D is for Degrees, same meaning

**Ege:** Shows the wiki page for MIRED and adds it to the issue
... time check, are there any other topics, AOB?
... no more business, adjourned

## Slot 2 - 09 July 2026

Cancelled
