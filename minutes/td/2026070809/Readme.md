# WoT TD Calls

https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf#July_08,_09_2026

## Slot 1 - 08 July 2026

### Meeting Information

**Attendees:**
* Daniel
* Ege
* Michael
* Christian
* Kaz
* Kunihiko

**Scribe:** Michael

**Regrets:** 

### Minutes

#### Minutes Review
ek: any feedback on the minutes from last week?
... approved

#### Respec error
ek: there was an error with respec that seems to have gone away
-> https://github.com/w3c/wot-thing-description/pull/2207 PR #2207 - Respec Reference Fixes

ek: any objections to merging?
... merged

#### Data mapping
-> https://github.com/w3c/wot-thing-description/pull/2201 Draft PR #2201 - Data Mapping Analysis Extension
-> https://github.com/w3c/wot-thing-description/blob/c8a7b202b4395c77bbea33892215b8ed0b88379d/planning/work-items/analysis/analysis-data-mapping.md Rendered anyalysis-data-mapping.md

ek: Review topics: 
... side channels, 
... mapping to non-JSON payloads
... Non-JSON payloads need to be resolved before we can develop media types
... Mathematical operations liike scaling
... Type conversion, enum mapping
... Data structure conversion

cg: what is the data structure mapping?

-> https://github.com/w3c/wot-thing-description/issues/1936 related Issue 1936 - Supporting complex/structured types in simple protocols
ek: for example, extracting elements from a buffer
... Also mapping modbus registers to numeric data types

cg: it's like extracting csv fields

ek: with CSV we have column names but it does seem similar

cg: It's not identical but similar, same direction

ek: any other comments:
... bitmaps are the opposite direction, expanding bitfields

ek: any other discussion?

ka: what about the related isssue #1936
... maybe we need a diagram to add to the text desctiption and make it easier to underrstand
dp: the byte and register mapping seems to be confusing
ek: yes the byte counts and register counts don't seem to correspond
... maybe the register count is a total for both timestamp and value in this example
... we need a diagram to explain this better
... the tables explain it also, we can reference a diagram to the table

ek: any other comments? shoyuld we review other use cases

ek: one question is how much more complex operations are required? Do we need general math formula support?

cg: maybe we need averages, etc., more complex operations but we would need use cases

-> https://en.wikipedia.org/wiki/Mired Wikipedia - Mired (Micro Reciprocal Degree)
mk: there are micro reciprocal degrees (MIRED) for color temperature
... there are tuples, like a target and transition time

ek: there is the Hue API with MIREK
mk: K is for kelvin, D is for Degrees, same meaning

ek: shows the wiki page for MIRED and add to issue

... Time check, are there any other topics, AOB?
... No more business, adjourned

## Slot 2- 09 July 2026

Cancelled
