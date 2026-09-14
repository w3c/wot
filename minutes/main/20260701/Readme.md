# WoT Main Minutes 1 July 2026

## Attendees

Present:
1. Dave Raggett
2. Kaz Ashimura
3. Michael Koster
4. Ege Korkan
5. Kunihiko Toumura
6. Daniel Peintner
7. Tetsushi Matsuda

Regrets:
    Sebastian Kaebisch

Chair: Koster

Scribe: Kaz

## Agenda:
https://www.w3.org/WoT/IG/wiki/Main_WoT_WebConf#1_July_2026

## Minutes

### Guests, New Members, and Invited Experts
mjk: no new Members or IEs

### Prev minutes
-> https://pad.w3.org/p/2026-06-24-wot 24 June 2026

mjk: (goes through the previous minutes)
... (just fixes several typos)
... note that there is a permission form for OPC/LoRaWan collaboration. ask Erich
... any other comments?
(none)

mjk: any objections for publishing the minutes?
(none)

(minutes have been approved)

### New Charter Discussion
-> https://w3c.github.io/wot/charters/wot-wg-2025-draft.html Draft Charter

mjk: updates from Dave?

dsr: yes
[[
There is one thing we MUST do, which is to fixe the same of the following reference:

One editorial comment on the charter, Section 5.1: The Spatial Data on the Web Working Group was renamed to Spatio-temporal Data on the Web Working Group in February 2025.
]]
... change of the name of the Spatial Data WG
... Michael, can you apply that?

mjk: yes

dsr: another comment from Rigo Wenning around "3.3 Tentative Deliverables":
[[
Current wording:
==
Depending on the incubation progress, interest from multiple implementers, and the consensus of the Group participants, the Working Group may adopt the following documents as Rec-track

WoT Thing Protocol
This document defines HTTP and WebSocket sub-protocols for monitoring and controlling connected devices over the World Wide Web. The WoT Thing Protocol is intended as a dedicated protocol for the Web of Things, to enable a WoT Consumer to communicate with one or more WoT Things over an HTTP REST API and/or WebSocket connection.
==

Suggested wording:
====
Notwithstanding section 2.1. and depending on the incubation progress, interest from multiple implementers, and the consensus of the Group participants, the Working Group may adopt the following documents as Rec-track

WoT Thing Protocol
This document defines HTTP and WebSocket sub-protocols for monitoring and controlling connected devices over the World Wide Web. The WoT Thing Protocol is intended as a dedicated protocol for the Web of Things, to enable a WoT Consumer to communicate with one or more WoT Things over an HTTP REST API and/or WebSocket connection.
====
]]

dsr: what do you think?

mjk: would like to be more careful about the wording for that

ka: also we should have a final review by native English speakers like you both, Michael and Dave

dsr: yeah, I'm OK with the current draft Charter

mjk: we need to make another WG resolution for the updates
... anybody who object to apply Rigo's proposed wording?
(none)

mjk: I'll make a PR for the following 3 point:
... 1. name change of the Spatial WG within "5.1 W3C Groups"
... 2. "3.3 Tentative Deliverables" for Rigo's text
... 3. date of the TD specs within "3.1 Normative Specificaitons" (need clarification by the TD TF)

mjk: note that the WG Schedule page has been updated
-> https://github.com/w3c/wot/blob/main/planning/wg-schedule.md#td TD schedule within the WG Schedule

ka: actually the WG Schedule page is not updated yet
... and we can check the updated proposed dates during the TD call later

mjk: ah, right
... let's do so using the Milestone Caluculator

ka: yes!

mjk: so why don't we discuss that during the TD call later today?

ka: sounds good

### Quick Items and Notices (Informative)

#### Planning
mjk: (quickly skimms the planning section of the main wiki)

#### Analytics
-> https://w3c.github.io/wot-analytics/ WoT Analytics Dashboard

ek: stricter Bot filtering, and getting 5 times less traffic...

mjk: ways of interest show up
... maybe more from conferences
... btw, where all those Bots come from?

ek: data center, etc., I guess
... it takes a while for actual analytics

mjk: (visits the WoT Analytics Dashboard site)
... what is the timespan?

ek: you can choose "month", "year", etc.

mjk: among the WoT website, the top page is the most popular

ek: right
.... while the /TR area including the WoT standards are very popular in general

mjk: maybe peopla are looking for stuff (starting with the WoT home page)

ek: would like to talk about the use cases, etc., during the next hour

mjk: today?

ek: yes

mjk: ok. will try to join

#### Meeting in China
ek: talked with Sebastian again
... difficult to organize the meeting in January given it's right after the Christmas season
... also Feburary is start of Chinese New Year

#### Smart Cities
ka: had a meeting on June 29
... talked about the IG Charter udpates and the Landscape document
... Linda from OGC and Juanjo from Fiware are willing to help us

mjk: yes
... our role as the W3C Smart Cities IG is consolidating information
... want to work with WoT, etc., as well
... the Landscape document is a good place to have gaps, use cases, etc., as well
... would be a collaboration point
... good to have SDO repos from important stakeholders
... another point is the IG re-Chartering

#### Any other items?
mjk: any other quick items?
(none)

### Schedule
mjk: (see the holidays section)
-> https://www.w3.org/WoT/IG/wiki/Main_WoT_WebConf#Holidays_and_Upcoming_Events Holidays and Events

### Liaisons

#### ECHONET
ka: have been talking with them, and will continue the discussion about possible Binding input
... and also possible Plugfest participation

ek: concrete content for the Binding?

ka: helping them identify the gaps between the latest TD and their ECHOENT Lite Web API

ek: the resources are well-defined
... the difference is that everything is defined as an object

mjk: maybe some kind of Schema to be defined

ek: think so
... should look into how TD looks like within ECHONET

kaz: note that their target for TD collaboration is not the original ECHONET or ECHONET Lite
... but ECHONET Lite Web API Device Description
... so the point should be the binding with TD via WoT Binding
... and the details to be discussed during the TD call

ek/mjk: ok

#### OPC
mjk: OPC UA Binding being discussed

#### ETSI ISG CIM
mjk: Juanjo as an IE for the Smart Cities IG
... happy about that

#### IEC SC3D
mjk: liaison for Smart Cities IG

kaz: will have a meeting with their chair person next week on Friday
... mainly for the Smart Cities IG
... but can report back from that meeting to this WoT main call too

mjk: great

### TF reports
mjk: any specific reports?
(none)

### AOB
ek: Marketing call will start in 10 mins

[adjourned]
