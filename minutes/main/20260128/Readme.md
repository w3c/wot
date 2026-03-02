# WoT Main Minutes 28 January 2026

## Attendees

    Kaz Ashimura

    Dave Raggett

    Michael Koster

    Ege Korkan

    Kunihiko Toumura

    Tomoaki Mizushima

    Mahda Noura

    Sebastian Kaebisch

    Daniel Peintner


Regrets
* none

Agenda:

Chair: Michael Koster

Scribe:   Mahda Noura

## Agenda:
 https://www.w3.org/WoT/IG/wiki/Main_WoT_WebConf#28_January_2026

## Minutes
-> https://pad.w3.org/p/2026-01-21-wot 21 Jan 2026
mk: review of the minutes
...last week we had a new member and finished clarifying the process about the minutes
...does anyone have any additions to the minutes?
(None)
...minutes will go public

## Quick Items
### Status of Use Case publication

dr: Sometimes the Things Checker doesn't work, we could link to the ISO website, links to the ontology about weather, the website is not accessible. The link to Swamp project is pointing to somewhere else.
...if we could address these issues I can ask the Web Master..
mk: is there a process?
mk: could we take time on this right now? 
dr: I have written to Mizushima
tm: I am in the process of cheking this.. I think some URLs be removed from the document. 
dr: I will move the document to the correct place only if it is correct, the earliest will be tomorrow, but if we can't figure this out by tomorrow the next date will be on Tuesday. 
...if you could look at the email and see if we can find alternative links and put new examples
tm: i will look at this and send you an email

### Plugfest
sk: Yesterday we had the next organization meeting and we are discussing how many days we could have. Currently on the table is a 3 day WoT plugfest for the days 1-3 and on the 4th day we can have the result presentations. For the day 5 there was nothing planned in detail and I suggested we can have a face to face meeting. This still needs to be clarified whether this is possible. The dates and location is still not confirmed. The details have to be still clarified, the next meeting will take place in the beginning of February. 

mk: Any questions about this?

kaz: do you think we can get some more participants from the Chineese companies and preferabbly more engagements?

sk:this is definitely what W3C China wants to see. But what is the result of this is not clear now.

kaz: Probably we need to consideer travel procedures like visa handling as part of the logistics. please ask them about that also.
sk: we will first clarify the location, date and so on. After that we willl clarify who can actually travel. 



### Marketing

mk: I think Sebastian and Ege have been leading the discussion on social media, in particular X/Twitter
dr: I contacted Coralie Mercier and Marie-Claire Forgue (W3C Comms) for their advice. Coralie asked Amy van der Hiel for her perspective. We are looking for alternatives, things like LinkdIn, Youtube and like that. I am waiting to hear back. 

mk: LinkdIn seems to have engagements...it's pretty good.

sk: I suggest we organize a marketing call. I would ask Ege to organize a call within the next weeks so we can cdiscuss in a seperate meeting to discuss these points.

mk: How to use WoT in Digital Twins. It's a good suggestion to have a seperate meeting. When that is setup let us know.

Kaz: There are several viewpoints. For example, from the viewpoint of the Web-based Digital Twins for Smart Cities Interest Group, WoT is a powerful tool for a possible framwork for smart city purposes. On the other hand, we as the WoT WG and IG can think about something from the WoT viewpoints. 

Ege: I can organize meeting. Do you want to use PlugFest call or a Doodle Poll? 
mk: If we can just come up with a slot like the PLugfest slot or the Profiles slot, any opinions?

Ege: We could do in two weeks, 11th February?

mk: Lets propose that?

Ege: Do we also invite Carolie Mercier ?

dr: yes we should keep them in the loop

mk: we should make sure there is a clear resolution on broadening of outreach.

dr: A question from last weeks call was that Mastadon is not for instance good for the analytics. We need to define this points.

Kaz: Working on marketing is good, but we should concentrate on the Charter discussion.

Ege: I agree, but if we don't get more people than there is also a issue in regards to the Charter.

Kaz:  We can still work on marketing as well, but  the priority should be the charter because marketing would not make sene if thre were no group :)

### OPC UA Binding Registry Submission
-> https://github.com/w3c/wot-binding-registry/issues/57 wot-binding-registry Issue 57 - 
Web of Things (WoT) OPC UA Binding
mk: Ege and I had a discussion today whether the W3C is interested in managing the registry iteself. 
Ege: Regarding the OPC UA submission performed by Sebastian: He has used the issue template to see how the binding submission looks like. There are some issues stemming from the issue template not being clear enough. We are already aware of this.

-> https://github.com/w3c/wot-binding-registry/issues/new?template=binding_submission.yaml Registry entry submission issue template
Ege shows the issue template. This serves as a simulation and testing. 

sk: I followed the process in the issue template in the WoT binding registry issue. 

sk: I have a question about the prefix, would be good if this goes in the context file. Currently we have HTTP in there but it would make sense if the protocol has a permament link they go to the TD context files. 

mk:: The prefix should be resolved to a URI that identifies the terms, typical RDF. We want to standardize those prefixes.

Ege: Objection to some of the points. We have removed HTTP from the context file, so that the TD documents are independent. That is why we want the prefix to be listed in the binding registry. Also, the new TD 2.0 publication does not have the HTTP binding vocabularies in the context. 

Kaz: This is rather a generic question. I couldn't join the TD and the binding calls these days. Do we have enough time to discuss the issues around the templates and the procedure?

Ege: What do you mean?

Kaz: Do you have enough time and discussion in the TD call so far?
Ege: Yes

Kaz: I was wondering why you brought this point in this main call and a certain resolution was required? 

Ege: It is an announcement that the first binding is submitted

Kaz: Having a progress report during the main call is fine, but if we need some more detailed and focused discussion about registry managment, I could try to join the TD calls from time to time.

mk: Any other quick items?

(none)

##Schedule
### Cancellations

mk: There is a break coming up in February. There is a TD cancellation in February on the TD call

ege: Do we have use cases, profiles and plugfest calls?
sk: No, it was scheduled for today but I cancelled it. 

sk: Do you plan to have a use case call, Tomoaki?
tm: I haven't had that discussion with Michael McCool. 
sk: please send me an email once you know. 

## Charter Discussion

mk: What is the discussion point and what is next in the charter discussion?

-> https://github.com/w3c/wot/pull/1256 wot PR 1256 - WoT 2.0 Charter Draft
sk: There is a PR and a suggestion by Toumura: https://github.com/w3c/wot/pull/1256
sk: I would like to keep the AI topic in the title -level. If this is not in the title it is not highlighted that much. In this way, we could attract some new people who are interested in AI. My suggestion would be to have AI name in the top-level. 

mk: Another way of saying that is lets' create a section in the document about AI
sk: good point
mk: Please update your comment in the PR
mk: Let's quickly look at the PR

Kaz: Regarding the topic around the realtionship between WoT and AI Agent, AI Agent as a WoT client and a WoT use case would be useful. However, I am not sure if we should have a seperate deliverable about "WoT and AI Agents". At least we can talk with the AI-related group guys to see what is the possible relationship between AI Agents and WoT. In addition, we could put this as a deliverable in the end, but we need to be carefull about what we mean by "WoT and AI Agents" and should clarify this.

mk: what do we mean when we say AI agemtns.
mk: We are not talking about a certain standard. I think what we should do as a deliverable is that a Note where TD is used in the AI, generation, discovery cycle. Like how do you create and find TDs. We need to think about the two aspects of generating TDs and consuming TDs by AI Agents.

Kaz: This can be a kind of white paper or could be a big part of the updated WoT Use Case document, but we need to think about what kind of deliverable document we would have for this concept. 

mk: We could basically make it as a use case but could at the same time make sense as a stand alone Note. It would also take some time to produce this as a deliverable. Maybe we should have a diiscussion point. We should make people aware that we are not ignoring the whole AI topic and at the same time we don't have any standardization aspects of it. 

mk: What is the action items here? Is Someone ready to draft a table of content around this AI topic and then we could have a discussion point around this. 

sk: do you mean a paragraph in the charter description?
mk: yes

sk: yes I would volunteer for this task and make a PR. 

[adjourned]




