# WoT Main Minutes 13 May 2026

## Attendees

Present:

    Kaz Ashimura

    Dave Raggett

    Sebastian Kaebisch

    Ege Korkan

    Kunihiko Toumura

    Michael Koster

    Josh Thomas

    Tetsushi Matsuda

    Daniel Peintner

    Ben Francis



Regrets:
1. David Ezell

Chair: Koster

Scribe: Josh

## Agenda:
 https://www.w3.org/WoT/IG/wiki/Main_WoT_WebConf#13_May_2026
 
 ## Minutes 
-> https://pad.w3.org/p/2026-04-29-wot 29 April 2026
 Review  of last weeks minutes - No additions or corrections 
 Approved
 
 ## Quick items
 sk: Regarding the WoT@China event, there is some new information about the event, until the location is confirmed the registration page will not be up. The event could also be moved to Shenzhen. Travel arrangements should be held until this location issue is resolved.
 
## REC vs. Note for BInding
-> https://github.com/w3c/wot/issues/1293 GitHub Issue about "REC vs. Note Track for WoT Bindings"

sk: Binding options should be an rec or a note. There is now a third option of a Registry data report. 
 
 DR: Chatted with Dom and Francois and they do not think the Registry data report is right for us.
 
 Dom said: at the end of the day, the question is: does the group think bindings are a critical path to wide interoperability? if so, the cost of reviews and constraints of the Rec track are what W3C is about: making sure that wide interop comes with the set of guarantees we recognize as key to keeping the Web open and in service to adopters and users.

If instead the bindings are mere guidance to adopters, but not something where you would expect two independent implementation to work one with another seamlessly, then documenting them as Notes make sense (but without pretending they define conformance).

ek: This is not another track it is just a way to publish the registry inside of another document. 

DR: we can only do normaltive statments in the rec tracks

ek:  there was one thing I think we discussed last week in the TD call, was that the normative aspects of a binding can be governed by the registry and the TD specs. And basically, they're just implementing those normative requirements without changing them.

mk: We need a longer discussion here. 

kaz: My impression of the response is that we could not make this clear to them and we need to invite them to the the WoT main call or the WoT chairs call to help try to make them understand what we really want to do. Like Ege mentioned putting protocol variations on the main registry and then describe the vocabulary separately for each protocol. For that purpose, what would be the best style as W3C document? 

sk: I mean, what it actually shows here in this discussion is there is a missing puzzle in all this variation of deliverables at the W3C. And actually what we need is documentation. this is relevant for the registry in our case, so there is some things missing here. To simplify this decision, I would say to go with the note approach. Ege provided a good example how we can actually handle this for the bindings and there is this work on the web codecs which also have an registry defined. If you want to use this specific protocol, which have already a pre-specified configuration and settings which coming from the original standard, that we just explain how this should be reflected in the thing description. And I think that's enough for a note. However, if there is a requirement or if someone or a specific group likes to have the bindings document in a rec style to be safe and make this possible to make an official reference to a rec document. 

ek: There is a comment from Dave which is a comment of Dom, So there is this clear question. It says at the end of the day, the question is, does the group bindings are critical paths to widen durability? So to say, so in the, To be honest, they need to be strict. So they are not just a guidance. They expect basically, like it said here, two independent implementations to work one with another seamlessly. One desctiption contains the binding and the consumer needs to implement the other counterpart and they need to work seamlessly. it is not the rec track that guarantees that they will work seamlessly. It's the rules and the binding and the TD that guarantees that they work seamlessly. So that is why I... need to bring the importance of the other documents that govern those bindings. And a mere, so to say, mere rec status from W3C does not guarantee that they are working seamlessly.

dr:  wasn't able to extract anything further from Dom and Francois. They think it's really, they've put the balls back in our court. We have to decide whether, you know, basically they're saying if we want to make the bindings normative, it must be a rec, otherwise it can be a note. And So that basically puts it up to us. We can decide whether we want to promote any from notes to recs. And other groups have fudged this. And Francois said, you know, I thought there'd be more comments about that, but there wasn't.

mk: Dom and Francois' response is that they seem to think that there's a vocabulary issue. that is administered by W3C that's a normative vocabulary that guarantees interoperability. And, you know, a binding has two sides to it. It has a thing description side and it has a subject protocol. I think what I'm I think that's what you call a target protocol or whatever side. So the vocabulary that we administer, it should be, as Ege says, in thing description and in the binding document, that anything that we normatively administer in a binding that we have to check to make sure the binding works or we have to run some assertion checks on or whatever.

sk: my personal view on this is As alreay mentioned, let's go with the note approach.
And similar with what we have seen with the Web Codecs. So that would be my preferred way here. And if there is agreement on this, to go this direction, then we can go in exchange with Dom and asking him that we are interested to follow this approach. 

ek: We cannot decide later if an item is a rec because we have to write it in to the charter. So we cannot decide case by case basis. if we don't declare it beforehand in the charter. So what Sebastian is saying is like the only way from my point of view. So to say that there are nodes in this charter And then when we go for the next charter discussion, we can change it.

dr: So, I think that we should go with the note approach as Sebastian outlined. But in the wording, we do have the option of being able to extend the binding registry document itself. So we can put normative material in that. So we have the option of being able to update the registry document as we want to add normative bindings. whereas the notes are clearly stated as informative.

kaz: I am ok with the note approach myself.  we have been already mentioning note approach should be one of the options on this issue. We should invite them to the WoT calls or the WoT chairs call to discuss. And like Ege has been describing, for example, today's call. Yeah, what we want to do is this and that. And this part describes the vocabulary for HTTP and Matter and so on. And we really would like implementers to follow those vocabulary patterns and so on. And what would be the best style for that purpose should be discussed. After that, again. In the end, if note is the option, that's fine. In any case, we don't want to get further refusals on this issue 1293.

bf: I think while, strictly speaking, notes shouldn't contain normative language, there are plenty of examples of notes which do, including those which are listed in registries. And I'm just not sure that the... extensive horizontal review that needs to happen on the rec track is really necessary for these documents. So I think a note is fine.I think a community group report would be another option, but I also think notes are fine for this. It would be a huge amount of work to put all of those documents through the rec track.

mk: Yeah, I think that we have general agreement that if we were to require rec track that that would be too much of a, too high a bar for what we're trying to do in terms of making this, the bindings accessible. In our view of the balance between accessibility and interoperability, accessibility meaning that people can just use bindings without joining W3C and without going through a minimum six-month process of getting a document approved. It's probably actually longer than that in most cases.

bf: Just bear in mind that some of the binding documents aren't going to be either, because some of the binding documents will be published by other standards bodies or elsewhere, and they won't be a note or a rec.

ek: Like Kaz mentioned we present our arguments with the amount of effort and they already said that this should not be the base of the decision. We said it would be a lot of work to do a rec track and that is why we were doing the note track. This should not be the reason that they say in that case do two bindings instead of multiple. We do not want to restrict the bindings. It is not a matter of effort, we want to have prodocol bindings and take their open api and make TD's out of them.

bf: I do not think we need a list of all the bindings that is going to be worked during the charter.  in the past we had some wording in the charter about profiles where we said that we may work on other profiles, other interoperability profiles, and we didn't explicitly list them.

dr: We need to update the wording in the charter. Maybe we need a resolution that we go in this direction and we need to move fairly quickly because this is holding up getting the horizontal review and the AC review. So I'd like to see us formally agree on an approach and then update the charter accordingly.

mk: Sounds like we should try to agree on is the binding documents will be notes and we do not want to put if they could be recs or not.

kaz: I am ok with the note approach, but based on Doms comments we need to remove the Conformance section that we specify the registry document.

mk: anyone have an issue with removing the conformance section? If not we should create a resolution to propose a registery entry for TD protocol bindings will be a note track item and to do this we need to remove the conformance section. 

bf: The current charter is open ended saying “Thus, the WG will define core binding and profiling mechanisms, and define additional profiles and bindings, as appropriate.” And regarding the conformance section, Yes, that's technically true, but there are also lots of examples of published notes that have a conformance section and normative language. 

dr: But I think in our case, we have to follow what Dom and Francois said or we won't get through the process. 

bf: You can just say must and should and may in lowercase and not have a conformance section.

Proposal: W3C Web of Things Binding Registry entries will be published as W3C Note type documents, without an explicit conformance section.

mk: So here's a proposed resolution that the web of things binding registry entries will be published as note documents without any explicit conformance sections. Does anyone have any objection to resolving that today? 
No objections

Resolution: W3C Web of Things Binding Registry entries will be published as W3C Note type documents, without an explicit conformance section.

mk: Action item to update the charter with the new resolution. 

bf: has the current charter been extended?

dr: Francois said essentially we will have the charter extension as we move the charter forward, which is why I'm trying to encourage we move that as quickly as we can. We're in a kind of gray zone, but it's a gray zone of W3C's making,

[adjourned]




