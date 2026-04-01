# WoT Main Minutes 18 March 2026

## Attendees

     Dave Ragett

    Sebastian Kaebisch

    Ege Korkan

    Kunihiko Toumura

    Michael Koster

    Ben Francis

    Kaz Ashimura

    Tomoaki Mizushima

    Daniel Peintner

    David Ezell (in part)

    Cristiano Aguzzi


Regrets: 

Chair: Sebastian Käbisch

Scribe: Ege

## Agenda:
 https://www.w3.org/WoT/IG/wiki/Main_WoT_WebConf#18_March_2026

## Minutes

### Minutes Review
-> https://pad.w3.org/p/2026-03-11-wot 11 March 2026
sk: no chair call so we are reviewing them now
... more links and text have been added for context
... any feedbacks on the minutes?
... nothing heard. approved

### Charter Extension

sk: any news on that?
dr: no need to have resolution. I will chase Francois to get it going
... we should work on the new charter though

### Plugfest in China

sk: date and location is finalized. A webpage/wiki is coming soon. 
... date is june 15-18 and in shanghai.
ka: Will there be another face to face other than TPAC later this year? I need to know in order to prioritize travel budget spending.
sk: maybe end of this year in Vienna, Austria. It is not clear yet but Markus Reigl wants to organize something.

### Notices

sk: we have marketing call after this main call.
... also there is daylight saving changes. pay attention to it as US will have meetings a bit later.
... also Ege is not available next two weeks but Koster will moderate the call and I think I will join as well.
ek: That is called outreach and we want to discuss about the strategy to get more people to contribute

### Charter discussions
-> https://rawcdn.githack.com/w3c/wot/e8403fe0b0a25343a3c88796953aa79ff5da2255/charters/wot-wg-2025-draft.html  Draft Charter

sk: I have adjusted the mission statement. Ben had given feedback about it and I have added IoT fragmentation problem. This is kind of the same statement from last time. This makes it easier for newcomers to see what it is about.
... Koster, are you interested in co-chairing still?
mk: I am. first as an IE. Maybe I can convince my company.
... if others are interested, please apply
sk: the dates are still open
... I have added the Web Thing subprotocol and mention it in the scope as well.
... the proposal for the description came from Ben.
... please provide your comments
... one discussion we had was the naming of the Web Thing Protocol
... the proposal is to have WoT in the naming. Even though Thing would repeat twice. Same issue exists with WoT Thing Description
... we can discuss whether protocol should be renamed to subprotocol

bf: thank you. I would prefer web thing in the name but I understand.
... I think the wording of subprotocol is not used outside much.

ek: It would be good to have WoT in the beginning since it should be clear that it belongs to WoT deliverables.
... I agree with subprotocol naming, others do not use it.
... It should be clear that the protocol can work on HTTP or WS. 

bf: The description should be adjusted but they should not be split to two deliverables. It is bad from marketing point of view.

ka: Thank you for updating the draft Charter but I am confused with the new protocol. It is a deliverable of the CG already. . I'm personally OK with this direction since it could be a good starting point for browser collaboration but We should target Matter as a collaboration item instead. So would ask if you talked with PLH, etc. about this deliverable?

sk: it is something for Dave. We discussed it in the chairs call. There is no semantics on Websockets so you need to always build something on top. It is also valuable to show that something can come from a CG. They exist in W3C for a reason. 

bf: this CG was spun out of the WG at the time. Other CGs said that they will not develop protocols. Since the beginning it was meant to move to standards track at IETF or W3C. 
... I wasn't expecting it to happen that soon but waiting at least another 2 years would be bad.

de: for big companies, adopting from the CG is probably fine. For us, it is important to have a standard document that is from W3C or other SDOs. So I support this protocol and see value in it.

ka: we need to talk about how to integrate the webthing protocol with the wot framework. Also matter collaboration is important.

sk: there are prototypes out there but we lack manpower.

ka: There are many people interested in Matter instead of WoT, and we'd like them also to use WoT as well
... Let me think about who would be interested in this direction
... it would be nice to involve GAFA people too into WoT :)

bf: What is feeling about the timeline. It is important for my funding, i.e. having funding but not being able to work would be bad

sk: we should merge this PR asap. Then if there is no vetos, we can go to AC voting.
... let's give the charter two weeks to review in the WG. Then we can initiate the voting process.

bf: can the new charter start before the extended charter ends?

sk: yes it should be possible.

dr: The expected duration of the charter refinement phase, which must not be less than 28 days, and should not be more than 6 months.  The review period must be at least 28 days. Any Advisory Committee representative may request an extended review period in response to the Call for Review; upon receipt of any such request, the Team must extend the review period to at least 60 days. (extract from W3C Process)
-> https://www.w3.org/policies/process/#charter-major-changes W3C Process Document - 
4.4.1. New Charters and Major Changes

ka: if you want to adopt this tight schedule, I can provide some text for matter and ashrae.
... note that my suggestion for updating Charters is creating smaler PRs one by one :)
... so please simply go ahead and merge this PR itself. I can create another one.

sk: We can add these as extensions in new PR.


