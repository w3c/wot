# WoT Main Minutes 9 September 2026

## Attendees

Present:
 Kaz Ashimura
Sebastian Kaebisch
Robert Warren
Rob Smith
Tomoaki Mizushima
Ege Korkan
Kunihiko Toumura
David Ezell
Tetsushi Matsuda
Daniel Peintner
Michael Koster

Regrets:
   

Chair: Sebastian

Scribe: Kaz

## Agenda:
https://www.w3.org/WoT/IG/wiki/Main_WoT_WebConf#16_September_2026

## Minutes

### Invited Experts

sk: Robert Warren made a presentation for IE

ka: and Rob Smith is an invited guest for today

sk: ok
... regarding the IE applications, Robert Warren and Noriaki Matsumura,
... the Chairs and the Team Contact have already approved
... Dave is working on the procedure

### Privious minutes
-> https://pad.w3.org/p/2026-09-09-wot draft minutes on Etherpad from the Sep 9 meeting

sk: (goes through the draft minutes)
... look good
... any comments?
(none)
(approved)

-> https://github.com/w3c/wot/pull/1320 PR1320 for old minutes

sk: due to the summer vacation, several old minutes have not been uploaded yet
... Kaz has created a PR to upload them
... I've checked the PR already, and no problem there
(merged)

### New Charter

sk: as you know, the new Charter have been approved and an official announcement
... have been sent out

-> https://lists.w3.org/Archives/Public/public-wot-wg/2026Sep/0004.html Announcement of the new Charter
-> https://www.w3.org/2026/09/wot-wg-2026.html New Charter at the official location

sk: please rejoin the WG because we have updates on the deliverables

-> https://www.w3.org/groups/wg/wot/join/ rejoin link

### W3C WoT Event in China
Date: January 14-15, 2027
Location: Hosted by Huawei
Venue: W3C Office in Shenzhen, 2nd Floor, ChangFuJinMao Tower, No. 5, Shihua Road, Futian District, Shenzhen, Guangdong Province, 518000, China
Registration can be found here: https://www.w3.org/events/happenings/2027/w3c-web-of-things-event-in-china-2027/

sk: please visit those pages if interested

### TPAC 2026
-> https://www.w3.org/WoT/IG/wiki/Wiki_for_TPAC_2026_planning WoT TPAC meeting

#### TPAC WoT Agenda
sk: (goes through the wiki above)
... Plugfest stars on Sunday
... demo as a breakout on Wednesday
... expected joint meetings with Spatio-temporal Data on the Web, JSON-LD, Verifiable Credential, Smart CIties (as a breakout) and MEIG

ek: what about the Plugfest call?

sk: will describe that later :)

#### Rob's talk on WebVMT
rs: how long can I use about the Spatio-temporal/ME topic?

sk: 10 mins?

rs: ok
-> https://github.com/w3c/wot/blob/main/PRESENTATIONS/2026-09-16-WebVMTIntro-RobSmith.pdf Rob's slides on WebVMT

rs: quick intro
... IE in the Spatio-temporal Data on the Web WG
... involved in GeoPose on the OGC side
... also involved in MEIG as well on the W3C side
... [slide 1: Video Metadata]
... Video file content & streams syncronized
... audio and video are synchronized together
... metadata as well
... monotonic time with no ambituity
... also can handle optional epoch
... [slide 2: HTML Intergraiton]
... video handling within browser is matured
... VMT file will be exported to HTML via data cues
... agnostic of media encodings
... able to create n HTML data que to handle the start/end time
... got support for text format
... also support for binary data
... data cue discussion by MEIG and WICG during TPAC
... track is collection of cues
... that's a stateful approach
... accessible in JS code
... [slide 3: Further Details]
... W3C group Note for WebVMT in 2023
... Web site available at webvmt.org
... GitHub at github.com/webvmt

ka: instead of the details of WebVMT itself, we should talk about possible use cases from WoT as well during TPAC :)

rs: yeah
... regarding video handling

ka: yeah, and from my viewpoint, that should be discussed as part of
... browser and wot

dp: you mentioned WebVMT is a container format?

rs: yes
... WebVMT itself is a very light-weight format
... any text/binary format could be conveyed

dp: ok

rs: can we show a demo for 5 mins?

sk: ah, it's a bit too long for today...
... (goes back to the other TPAC agenda items)

#### TPAC WoT Agenda (continued)
-> https://www.w3.org/WoT/IG/wiki/Wiki_for_TPAC_2026_planning#Draft_F2F_Agenda_(Thursday_/_Friday) TPAC agenda

sk: (goes through the agenda starting with "F2F Day 1")
... draft agenda based on the one from TPAC 2025
... opening
... plugfest summary
... repofts from joint meetings like smart cities
... coffee break
... a slot not assigned yet
... then lunch
... after lunch, TD topics. would use much time this time
... (refers to Ege's provided link)

-> https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf#TPAC_Topics_from_TD_TF TD topics
sk: (adds the link for that to the WoT TPAC wiki)
... then afternoon break
... after that, WoT and AI
... then Scripting API. Daniel, would make sense?

dp: not sure at the moment
... will join TPAC remotely

sk: can arrange the time later
... we can choose a different slot if needed
... then End of day, and dinenr for Thursday

sk: and then Day 2
... opening
... and possible talk by AB. not sure if we would have one this year as well, though
... then liaisons, OPC UA and Smart Cities
... also great to have ECHONET update as well from Matsuda-san if possible
... then coffee break
... then another TBD session
... after that we'll talk about protocol binding and registry
... luch
... then joint meetings with JSON-LD and VCWG
... then afternoon break
... and then WoT CG

sk: my question is when to have the joint discussion with Rob Smith and Robert Warren
... what about morning on Friday?

rw: OK to have the joint discussiont that time

rs: thought our meeting would be afternoon?

rw: maybe confused by the time difference...
... but morning session still would work
... let's put that there (=Friday morning)

ka: is 15 mins enough?

sk: don'e worry about the length at the moment

sk: then next is MEIG
... would make sense to have that also on Friday

ka: should work
... will check their joint meetings on Friday again
... another possibility is a breakout session on Wednesday

sk: ok
... now we've covered all the expected topics

### Plugfest call
sk: would resume the Plugfest call next Wednesday on Sep 23 right after the main call
... will update the calendar

### Nagasaki meeting
-> https://www.w3.org/WoT/IG/wiki/Wiki_for_WoT_Week_Nagasaki_2027 Draft wiki for the WoT Week 2027 in Nagasaki

ka: please look at the draft wiki :)

[adjourned]

