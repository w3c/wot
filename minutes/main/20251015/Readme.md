# IRC Minutes from 15.10.2025

Attendees

Present
    benfrancis
    
Regrets
    -
Chair
    sebastian
Scribe
    Mahda

Contents

    Minutes
    Calander Events
    Publication Process
    Charter

## Meeting minutes

the transcription from AI was not bad but sometimes special terms were not correct, we need to go through it

## Minutes

sk: AI generated minutes from last week
… the transcription from AI was not bad but sometimes special terms were not correct, we need to go through it

ege: from other calls, e.g., TD call, what should be the process? should the minutes be approved by the moderators?

sk: the AI tool can be only initiated by the host, the host is for now Dave, and the problem is the AI tool can't be started, is that right?

Dave: It may start by itself, we should check

daniel: I started the call today with scripting, Zoltan and I were the only ones present, did it record anything? Do I need to perform something?

Dave: I haven't seen anything until now, got to check after the event

sk: we need to evaluate this again

sk: the IRC minutes to be scanned and corrected. I put the AI minutes in the WoT repository, a folder that is called Minutes, you could do a similar process for TD

ege: should the moderator do the pull request, I don't know how to get the content of the minutes

sk: the TD has its own repo, it is important that you provide a link then. We have alot of WoT-based calls like marketing, I am fine to record the minutes in their own space

ege: How do we get the minutes?

sk: I understand thet the host is the one receiving it, and needs to be forwarded

Dave: can anyone open the AI companion in zoom?

Ege: I think until this is sorted our we need to use IRC, it puts more load on the moderator

Dave: I think in the chairs call on Monday, we discussed that we should rely on the IRC and the AI companion is additional

sk: we are on an experimental mode, but if it turns out that we have much more work we should go back to the old procedure with IRC
… next meeting would be Profile call, you could test whether it works

Ben: I like the idea of having the AI summarisation but it doesn't seem to be ideal currently, we need to keep the minutes on IRC

sk: Lets try this week in the calls with the AI recording and if we have the feeling that it causes much more work we should go back to IRC only

Ben: In the profile call we will track the high level decisions in irc

## Calander Events

sk: You should be aware that the time zone will follow the European daylight saving mode that is upcoming, if you are subscribed to the calendar entry then you should automatically get this update. No affect for European time zones but other timezones please be aware of this

<sebastian> also see https://www.webexhibits.org/daylightsaving/b.html

dape: For the WoT Scripting call, I got information that the event has been updated but the updates were not sent

Ben: I have manually sent a notification for the WoT Profiles

## Publication Process

sk: Could you share some information

Dave: I don't have further updates since Monday. We wanted to clarify the approvals, updating the status of some documents. I don't have all the details here but it is in the emails sent before.

## Charter

mmcool: I want to have a resolution on the publication next week

sk: We are already in the extended charter and we have 6 months extension, we should now use the time what will be the content of the new charter.
… We are currently gathering the inputs and thoughts on the main WoT repository, would be good if you could provide comments
… Let's have a look at the existing discussions

Ege: Recharting Input from the TD TF #1237 - we need to publish of TD 2.0, we are adding new features like initial connection and data mapping. Establishing a user story driven feature development. Each of the binding should be a Group Note, doing the testing for each document of the registry requirements
… I have created another issue a couple of weeks ago

sk: what is your feeling towards the binding registry? We have the 6 months extension, is there any chance we could finish this?

ege: I doubt we can go through the full process, like going to the registry stage because we have the pilot process and want to test it with some of the existing bindings we have

sk: do we want to see more protocols like Matter, there were already some ideas. From my point of view looks good. Any questions?

Ben: Publishing the registry: I don't have a problem with it, but technically it is not within the current charter

sk: when we talked about this charter, 2/3 years ago, this registry concept was not existing and there was no policy on it. This came up during the charter. It is a good point and we need to clarify it if it is not showing in the charter. But I would expect that Kaz would have mentioned if there would have been an issue

<McCool> ntd

ege: Ege discusses his comments on Changes to draft charter #1240: remove some specific wording, removed dicvoery and architecture from normative, manage WoT bindings

sk: I think the digital twin topic came from Michael Legally back in the days, his not active anymore

sk: the plan for the next charter and the key focus topics, how to be more efficient in the WoT group
… it is mainly caused by the many threats we have, in the past we had more than 10 calls in a week. In the past it was justified, creating the WoT, the idea behind it and what needs to be addressed. The picture was not clear in the beginning. The core here is now clear, the TD is the important technology used here. My proposal for the next charter would be to focus on the WoT TD. Of course the WoT TD cannot be a technology and a task that can exist alone — you need inputs like the bindings and the registry — but I am not sure whether we have the manpower for topics like discovery, profiles, and architecture.
… I am open to discussing this in the new charter, but I feel that if we don't have the manpower, we focus on the TD 2.0, and then make another charter related to the other aspects. I have the feeling that other working groups use a similar approach focusing on smaller topics.
… I would like to hear your views on this aspect

Ben: I completly agree that the TD is the core and the number of meetings and the calls we had in the past were not sustainable. The question is, which one survives? The problem I have with only focusing on TD and registry is that we never use the vocabulary from HTTP bindings; to adopt bindings, we need a better way to figure out how they will work with the Profiles. I think if we have to wait for 2 years to start working on Profiles, this will be too long. I would like to see WoT profiles in the next charter. I do see we need to drop Architecture, dicovery, and security merged with other specs.

sk: We need a good stable group, we need W3C members driving this topic. Do you see enough people working on the Profiles?

Ben: The biggest barrier with the Profile is that Siemens has always been against it, if there would be support from Siemens that would be helpful

sk: we currently do not have a business aspect, maybe in the future. Profiles makes sense as a next step after TD and bindings, but we do not want to be the blocking point. If there are a good number of participants, they should raise their voice and say we need it

Ben: We will see how much support there is for this in the next charter. In order for the binding and profiles to work better, ther are some aspects from profiles to be moved to the bindings, and we need collaboration between the two groups. But I totally agree that there needs to be enough resources and support.

sk: I would like everyone to contribute to this discussion. You also had some ideas on attracting more people on the charter

Dave: We want to encourage people to come to the W3C. A strong idea would be to do certification to motivate businesses to be listed on the public pages. Within the working group to ensure which features are required to be implemented and which features are optional, test cases to be applied and to report that using those implementations would verify those test.

sk: could you please make an issue on this

<benfrancis> https://www.w3.org/WoT/developers/

ege: there was a discussion on adopters, we started a list and talked with the W3C member to list the adopters on the web page. That would be I think related to this discussion. Question: Do u want that once they get involved in the certification to then get involved in the spec?

<Ege> w3c/wot-cg#173

sk: since the WoT is a background technology and it's not directly visible to the outside in regards to the usage. A lot of companies are relying on WoT but this is not visible to the outside, only when you start to talk with the technical people

Ben: There is a separate link to the WoT profile calls.

<benfrancis> https://www.w3.org/groups/ig/wot/calendar/
