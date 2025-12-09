# WoT F2F Minutes 13.11.2025, 9:00am-16:45pm

## Attendees

    Kaz Ashimura

    Daniel Peintner

    Kunihiko Toumura

    Tetsuhiko Hirata

    Van Cu Pham

    Mahda Noura

    Tomoaki Mizushima

    Tetsushi Matsuda (for PlugFest Summary)

    Piotr Sowiński (observer, for PlugFest Summary)

    Ege Korkan

    Sebastian Kaebisch

    Hiroki Endo

    Michael Koster

    Piotr Sowinski

    Shintaro Fukushima

    Shunta Asahina

    David Ezell

    Josh Thomas

    Charith Perera

    Pierre Antoine Champin, W3C

    Carlos Ibarra Lopez

    Dan Brickley

    Zane Durklin


Chair: Sebastian

Scribe: Ege (until first coffee break), Josh (until lunch), Kaz (after lunch), Sebastian (after second coffee break)

Zoom Link: https://w3c.zoom.us/j/8528924146?pwd=iBQMAq3y2QBLbYslO37qR7jsZId6Ib.1 

## Agenda:
https://www.w3.org/WoT/IG/wiki/Wiki_for_TPAC_2025_planning#F2F_Day_1:_Thursday,_Nov_13,_09:00-16:45

    09:00-09:15: Opening (Sebastian / Michael)

    09:15-10:15: PlugFest Summary (all)

    10:15-10:30: Reports from joint or relevant group meetings (e.g., JSON-LD)

    10:30-11:00: Coffee Break

    11:00-12:30: Charter WG plans (Sebastian / Michael)

    12:30-13:45: Lunch

    13:45-15:00: Thing Description (Ege / Michael)

    15:00-15:30: Coffee Break

    15:30-16:00 HTTPS in local networks (Carlos)

    16:00-16:45: Scripting API (Daniel / Cristiano)

    16:45: End of day

    19:00: WoT Dinner

## Minutes:
    
Introduction

Sebastian: We have the repo at https://github.com/w3c/wot/tree/main/PRESENTATIONS/2025-11-tpac where you can share slides and see others.

Kaz: Please add your name to attendees section on this Etherpad

Sebastian: Let's have a look at the agenda.

Daniel: One of us should be there for scripting but we have shared slides with Ege.

Sebastian: We should go for dinner together. How many people?

Room: 9 people raised hands.

Sebastian: Ok let's start with plugfest summary session.

Plugfest Summary

Josh Findings

Josh: It went pretty well. node-wot needs help with websockets. We did some work and we want to backport it to the open source.

Josh: Do we have any guidance about how to manage certificate? Especially self-signed certificates in local networks.

Sebastian: Security is always an issue on how much you put. I have a discussion about this on opc ua as well. Putting too much means security issue.

Josh: We had an architecture to handle this in Ignite. 

Kaz: We should discuss implementation guidance as well as specificaitons. It is already included in the current Charter but we should think about that more seriously for tne next Charter period.

Ege: TLS in local networks is a long lasting issue. I have talked with someone from Google yesterday and they are restarting this work. 

Sebastian: We can also think of a secure channel to exchange TD with security credentials.

Josh: Brian made an offer and said that they can ship a portable system to handle the network issues.

David: He said he can buy it and send it. It is meant to fit in a rack.

Piotr Findings

Piotr: I will share a recap. I have made a diagram to explain. It can work for any protocols but I have done only http polling. You can use ontologies to annotate the data and send RDF streams.

Slides: https://drive.google.com/file/d/1UbIHj2NZzprIyC9mUq7b4DzEpYKD5VGb/view?usp=sharing

Piotr: I am very happy with the community. I could integrate ECHONET devices very easily. TDs is easy.

Piotr: If there is someone to help, everything is good. There is no user guides, some diagrams that explain the overall architecture. 

Sebastian: We have a tutorial that we need to make more visible.

https://w3c.github.io/wot-cg/tutorials/whatiswot/ 

Charith: I'm also interested in the WoT tutorials. Would be happy to review it.

Ege Findings

Ege: Show some slides:

https://docs.google.com/presentation/d/1rogX4_IWFALB7RoXPlKwX7axTcCXPwiBZkPNzRytHxk/edit?usp=sharing and https://github.com/w3c/wot/blob/main/PRESENTATIONS/2025-11-tpac/2025-11-13-WoT-TD20-PF-Results-Korkan.pdf
-> https://github.com/w3c/wot-testing/pull/629 wot-testing PR 629 - 
TD 2.0 common definitions tests

Ege: worked on forms how to optimze it better in the TD to avoid redundant definitions. I did a common test with TDs that were provided in the PlugFest. E.g., I used the TD from Sebastian and replaced the base term with a from term. The air conditioner TD could be defined more compact. I also worked on a TD expansion tool. 
-> https://github.com/eclipse-thingweb/td-tools/pull/70 exlipse-thingweb - td-tools PR 70 - TD Expansion Tool

Sebastian: Nice to see that TDs can be more compact. Would also help for WebSocket definitions.

Dave: seems to be the right direction.

Sebastian: TDs with this new approach will not backwards compatible. A tooling can help to bring TD1.x to TD2.0.

Kaz: It needs to be clearified if this approach also relevant for TM.

Ege: this should work for both

Sebastian Findings

Sebastian: OPC UA has a handshake mechanism and a discovery mechanism with a separate discovery server. Also, each OPC UA server has a discovery endpoint where you can get endpoints available and the security methods available there.

Sebastian: (shows the possible ways in readme at https://github.com/w3c/wot-testing/tree/main/events/2025.11.Kobe/TD/OPC%20UA)

Sebastian: I think I like option 1 more and would like to talk about this in the next opcua session.

Piotr: Is this spec worked on in OPCF?

Sebastian: Yes this is the new way with the registry. The "owners" of the protocol can register.

David: Could you go back to show the options?

Sebastian: It looks complex because the protocol is more complex as well. I prefer to compact one. I have also provided TD.

Kaz: Does OPCF intend to provide a server for testing?

Sebastian: The one I have is from a company.

Kaz: For example, ECHONET provides a testing facility for similar purposes.

Daniel: Does OPCUA *want* to pick/propose one way to describe security information OR can we kind of provide option 1 and 2.

Sebastian: From the standardizatuin point of view one option should be used. OPCUA group should make the option.
    
Ege: Like combining none security mode and anonymous for the "no security mode"?

Mahda Findings
    
Mahda: I had some issues to tackle. First the readfilerecord function is missing in modbus. While doing that I have realized that there are inconsistencies. We should provide some guidelines for this in the registry spec.

Mahda: I have started work on improving the toolchain. There will be no need to add manual cross referencing. You can write plain text like "BCP47" and "anyUri" and the tooling will pick it up. We may extend it to index.template.html as well so that is easier to write.

Sebastian: We have a long standing issue about this where Victor had written the initial tooling.

Kunihiko Findings

Kunihiko: I have realized that having more description or less interfaces make it easier for LLM to understand the TD. We can think of writing guidelines about this.

Sebastian: I want to add "WoT and AI" topic in the charter discussion. This would be a good input.

Kaz: We need to explain what kind of semantics are needed for generation workflows.

Mahda: that is typically use case dependent

Kaz: Maybe that aligns with implementation guidance discussion from before.

Charith: Putting too much information can be bad too, which you have seen sometimes. Also the context window can explode. So I did some basic ML workflow to choose the tools and then reason on their descriptions.

David: TD is sometimes too granular. A big list of properties etc. confuses it. The prompts need to be more guiding as well.

Pham Findings

Pham: (shows the devices)

Pham: Mobile router failed when there were too many people in the room. That is why Josh's demo failed.

Pham: Others managed to interact with our devices. The airbnb use case was very interesting.

Pham: First time attendance in person. It is a quite good experience, much better than remote attendance. I have really enjoyed the experience.

Sebastian: Why not use TPAC network?

Pham: The network configuration is flashed to the device.

Sebastian: Can you provide the device description of commercial devices?

Pham: (shows the results on postman)

Tetsushi: There are differences between TD and our device description. That is why Pham-san built a proxy.

Ege: Why did the mobile router fail? Too many phones around connecting to the same base station.

Josh: More people came to the area over time.

Kunihiko: What is the difference between gateway and proxy?

Pham: The gateway provided the raw payloads of echonet and also security. So the payloads need to be objects. 

Kunihiko: This difference is important for the WG. 

Pham: I can provide some slides for later.

(Please note that the protocol related to gateway and proxy discussed above is not part of ECHONET Lite Web API specification but a research project by JAIST. I am sorry not to have mentioned this in the session. [Tetsushi Matsuda])

Sebastian: Now coffee break!

(Break till 11:00 JST)

Charter Plans
-> https://github.com/w3c/wot/blob/main/charters/wot-wg-2025-draft.html Draft WoT WG Charter
-> https://w3c.github.io/wot/charters/wot-wg-2025-draft.html Rendered HTML

Presented slides: https://github.com/w3c/wot/blob/main/PRESENTATIONS/2025-11-tpac/2025-11-13-WoT-TPAC-Charter-Sebastian.pdf

Sebastian: We currently have three groups. These are comprise of the Taskforces WG, IG, and CG. We have 4 meetings in a row on Wednesday. 

Discussion Points:

    TD is the key tech for WoT we need to focus on this

    This should be the central hub of our work and bring in features to this

    We should probably stop the Interest Group Activities

    Plugfest can be taken over by the community group

    This is good as the CG is more open to people outside of W3C

    Use case and Requirement can be part of the WoT WG under the TD Task Force


Mizushima: Use cases are removed but then reported back to the groups. If we remove this group then this requirement of reporting back to the main task force is no longer required. We need to clairify where to put the uses cases, ie if they are a note etc.

Ege: You will need to join the CG to submit your TD to the Working Group. For use case gathering we need to be careful who we gather the use cases from since its the people that implement that have the use cases.

Kaz: A WG can handle evrything for standards, and a CG can do the marketing etc. In the group we need to decide who wants to work on it and who is consuming it. We need to match a use case to a requirement to clairify the issue. This can be done in Github issues.

Sebastian: We can compare our flow to how other working groups are doing

Ege: https://github.com/w3c/wot-usecases/issues/257#issuecomment-1907308039 Use cases should be defined in such a way that an attempt was used to use WoT and it did not work so here is our use case for the spec to try to fix. Having a plain Use Case does not really tie it to what we are to do, or later on match a requirement that was filled by that use case. The next level is to show advisory reasons of WoT in a use case form. This allows non-technical personal to see the rational of using this specification. The third point would be more case studies and experiances.
The goal here would be to orgainze these type of documents. 

Josh: The first case is the one we shoud use for the Task Forces, the rest enter the scope of more marketing. Technical use caes after being tested in the current spec offers insight about what is missing and how the end user wants to implement. These goals make for a more directed approach for the task force to think about implementation and possible solutions the tester missed.

Ege: Some of the marketing can be moved into the main call as there is not a lot of changes to approve. 

Sebastian: Binding registry is soon to be released but needs to have bindings allowed to be managed outside of w3c since those specifications are driven by their groups. Good examples are Bacnet and OPC-UA. 

Profiles, we need more backing from the gorup or we need to think about if we close this out until there are more interest.

Mizushima: I have interest but I wonder why its made. It should not be a subset of the TD, but it is not clarified. We should discuss if the profile document is necessary.

Sebastian: We should not give it up all toghether but we want to bring TD 2.0  forfront then do Profile and Discovery.

David: If I knew the difference between binding, protocol, and profiles are.

Ege: Bindings are requried to query the data, without them you cannot use the TD per say as the description does not show the data.

Sebastian: Thing Models can be used to define a template for a thing. The context needs to be independent in your standard.

Kaz: as a working group we need to have the AC review of our charter. So we need to have consensus on these changes. We might need yet another spcification to accomplish this as we have models and can focus on TD 2.0.

Sebastian: We can put this in the backlog and focus on TD 2.0. If we find a need we can pull it forward.

Koster: I agree, we should also look at the requirements and see if there is some way to move. I dont find a specific specification that is not general use as something we should focus on.

Charter Considerations

Sebastian: In the AC meeting we had some discussion about AI. I think it makes sense to discuss adding AI to our tools. The second is bringing the devices into the browser. 

Kaz: Device sensor group is working on some of this. We had some joint discussions with them in Anaheim last year.

Josh: In the demos the only demo that was not a WoT device Google appauded because it was tied to their browser. I did not get any idea that they gave us a use case on how or why we should use the browser.

Sebastian: You can only speak to a single device at a time

Kaz: this discussion reminded me of the issue around Web Trust. Which TD resource from which device is really trustworthy, etc. We might want to talk with WebAuthn group and also C2PA and OP as iaison targets.

Kunihiko: "DMX /WebUSB binding" in the browser helps NTT Komatsu-san's usecase.

Sebastian: WoT Certification, it would be good if we validate the companies that use the standard. We can then have a marketing aspect to show a list of companies that use it. 

Kaz: W3C does not provide certification to HTML etc. Other standards do like matter etc. The resources to do the validation could be a revenue stream, but that is not our focus, as we are a standard body.


Tomoaki: Maybe this topic should be discussed in W3C team, and we just focus on the TD13:45-15:00: Thing Description (Ege / Michael)


Ege: We discussed this at the beginning of the charter. Companies, especially non-member companies, and promoted, so to say, but she was okay to do this, like that CG could do. W3C cannot promote companies.

(lunch till 13:45 JST)

Thing Description (Ege / Michael)
scribe: Kaz

->  https://docs.google.com/presentation/d/18PtTbYRZqcwuO_sDKjAFXqWD0Va6VkdM72orzVsysy0/edit?usp=sharing Ege's slides

ege: (shows topics for this session)
... binding templates reorganizaiton
... TD 2.0
... tomorrow, binding registry
... then what can you do?

(slide 2)

ege: grand binding template reorganization
... to clarify the concepts
... binding registry on the left
... and binding templates on the right side
... the "Binding Templates" document is almost empty now
... actual binding managed on the registry side
... which is on the "Registry Track"
... but that's quite new and still under research
... the actual content is document at section 5 "Registry"
... lifecycle and maintenance

-> https://www.w3.org/TR/wot-binding-registry/ WoT Binding Registry

ege: section 4.4.6 mentions "Copyright" for the registry

-> @@@

ege: (shows TD 2.0 Editor's Draft)
... questions?

charith: any entry already submitted?

ege: not yet

charith: how to handle the detailed information?

ege: when you submit the summary document, that should include the basic information
... and if you want to provide detailed information like how to implement it
... you can provide that

kaz: where to have the detailed information?

ege: the summary document is handled on the W3C side
... the details could be managed on their side
... (shows exampels on HTTP, CoAP, etc.)

https://github.com/w3c/wot-binding-templates/?tab=readme-ov-file#publications

seb: when to start that?

ege: still on the pilot phase
... could have some trouble with the submission
... some university has an idea about bluetooth

subtopic: TD 2.0

ege: working style, etc.
... would ask you about something
... why do we do?
... why did we do?
... how to structure new work?

kaz: 2 questions
... any industry need?
... then who to lead the work?

ege: yeah
... (shows his proposal)
... something everyone agreed on there...
... but some other points still unclear
... which features to be worked on first?

mahda: what about the timeline?

ege: (adds that to the questions)
... (then shows the basic workflow diagram)
... (then "Thing Description Planning")
... (then "First an analysis is done . then "Then a concrete proposal")
... would like to ask your opinions

seb: one of the big problems
... is our resources
... need much more speed

ege: we've been trying a project board and categorization, etc.

seb: maybe we should focus on some specific topic

kaz: would agree with Sebastian
... also Mahda
... so we should clarify our focus with concrete timeline
... and check the progress every week or at least every month

mahda: should clarify what is our focus areas and which area people are working on
... not only one person raising an issue but as the whole group
... should check the progress based on the timeline

pierre: naive question
... why you want to have "2.0"?
... breaking changes there?

ege: yes
... we used to call it "WoT.next"

pierre: ok

ege: including both big changes and small changes
... but in any case, bigger than the changes between 1.0 and 1.1

seb: possibly not backward compatible

ege: would like to talk about "Hiccups" as well
... the work got interrupted by something
... wot-resources, errata, other open questions
... resources include schema and ontology
... regardig errata, we have a management procedure document now
... the TD TF has been handling "WG-level issues" also

ege: (TD 2.0: New Features)
... common definitions
... manageable affordances
... (including state transition discussion)
... then data mapping
... (how to deal with value wrappers)
... (e.g., temperature with timestamp)
... also some other possible topics like history management

charith: question about hypothetical discussions

ege: would handle concrete user stories
... could be a burden, though

kaz: we should think about if there is concrete industry need

subtopic: TD 2.0: Tooling

mahda: would like to talk about the WoT Toolchain
... (shows the complicated diagram about the whole tooling mechanism)
... (Problem 1: Maintence & Consistency)
... problem about maintenance and consistency
... (Example 1: Definition Inconsistency)
... definition inconsistency
... also data type inconsistency
... e.g., xsd:string vs rdf:langString
... then import statement inconsistency
... e.g., dct for dc terms
... (Problem 2: Tooling Complexity for Spec Develoepr)
... then complexity for developers
... super complicated
... possible solutions
... LinkML as a sigle source of truth
... (shows a diagram on the proposed mechanism)
... step1: WOT resources generator
... step 2: WoT spec generator
... "template.index.html" is the only input for the step 2
... (Please Tryout the Tool - WoTIS)
-> https://github.com/w3c/wot-thing-description-toolchain-tmp toolchain repo

mahda: (shows the repo)
... updated with the description on the proposed mechanism
... here you can find the schema
... (shows the yaml content)
... once the mechanism has been updated like this
... would be easier for the developers to handle the toolchain
... (shows the old intermediate contents also)
... same goals here
... still need to check if everything is really ok
... the final deliverable is "index.html" for the spec
... (shows the spec on her local pc)
-> https://w3c.github.io/wot-thing-description/ fyi, the Editor's Draft on GitHub

seb: LinkML document generator?

mahda: not using it
... (What do we still need from LinkML)
... several ongoing points
... native support for modeling RDF multi-language strings
... open mappings for Class attributes
... JSON-LD arrays and containers
... raised issues on the LinkML repo as well

seb: still many things to do...

mahda: yeah...

seb: but everything to be synchronized with each other

mahda: right

seb: LinkML seems to be a right solution

ege: there is a side merit

kaz: jus to make sure, the final index.html includes the ReSpec commands?

mahda: right

kaz: ok. thanks a lot for your hard work!!!

subtopic: What can you do?

ege: driving new features?
... need a concrete "Champion" for each
... build concensus within the TD-TF
... then integrated into the spec
... need use cases from the community

pierre: what about TypeScript?
... several libraries

mahda: could be used also

pierre: ok

ege: that's it for this session

seb: any questions?

mahda: anyboday intetested in making contributions :) ?

seb: just to make sure, Daniel, will you be available for the next session on Scripting API?

daniel: yes
... but the later, the better

seb: (updates the agenda slightly)

(Afternoon break till 15:30 JST)

HTTPS for Local Networks (Calros IbarraLopez)
Carlos: Im working with google chrome. We doing https in local networks

Slides from Carlos: ...

Carlos: there are privacy /security issues with http
... current options are self signed certifactes, adding a root cert, dynamic DNS + Port forwarding + cerfificate from trusted CA, just use HTTP, wildcards cert

Dan: does IPV6 open more options?

Carlos: not really
Carlos: there are some use cases we are thinking such as routers, enterprise intranet devices, home servers/Rasp Pi/hobbyist type things, cloud-backed IoT devices, non cloud-backed IoT devices
... previos/current attempts are, eg., the CG "HTTPS For Local Networks Community" or Martin Thomson's proposal
... there can be PAKE with devices or TOFU
... better would self-signed experience (similar to TOFU)
... there can be disambiguating non-unique origins
... there can be a warning message when there is a change

Daniel: how about thing-2-thing interaction as we do in WoT?

Carlos: I just started to look into it. Lets see

Ege: if it runs as a script we still need to interupt sometime

Carlos: how do you share credientials?

Ege: this is out of band. What we can do, do the exchange of credentials before the actually interaction start

Zane: can public certificat shared?

Ege: this would be possible

WoT Scripting API (Daniel Peintner)

Presented slides: ...

Daniel: I have 3 topics to be discussed: publication plans, next charter topics, implementations
... last publication was 2 years ago
... like to publish a new version in the next month
... there will be a better clarifications about fetch TD and request a TD, algorithm clarifications & improvements, exposedThing does
... about the ActionInteractionOutput method it will allow cancelling asynchronous actions and query the status of a ling running action
... based on the Profile 1.0 publication (as draft) we need to consider further operations like queryallactions and unobserveallproperties
... for async actions the new ActionInteracionOutput should be sufficient
... befor publication, we plan to solve 2 major issues (Daniel provides 2 links of the issues): Cover additional responses as success and as error
... once done we are "almost" feature complete 
... the topics for the next charter are "for next iteration", "wait-for-td", "spec-improvement", "enhancement", "API-improvement", "Use case"
... the goal is to keep the API aligend with futher TD recisions
... we have bi-weekly calls. Allow us to focus on TD topics
... we are collecting more implementations of Scripting API under the "thingweb" umbrella: node-wot (type script), dart_wot (Dart), kotlin-wot (Kotlin), wotpy (python) will be published soon
... wot statistics shows high growing interest in thingweb

Ege: in the PlugFest I saw from ArmorSafe the WebThing protocol. Actually this protocol is very close to the Shripting API.

Daniel: the best answear can provided by Cristiano, he has some experiences with it. Currenlty, the WebSocket is not highly developed in thingweb. 

Sebastian: you used the WS in the plugfest, arn't you?

Josh: Yes, we will provide a PR soon.

Daniel: that would be great.

Ege: Here are some aspects that are related to the Scripting API https://w3c.github.io/web-thing-protocol/#observeproperty-response

Ege: we do not have a behavoir description yet, what happen if you do an observe. I beliefe the Scripting API can be the right place for it?

Daniel: I'm not sure about that.

Ege: There are also the other opertions like unobserveproperty

Daniel: Im wonding who can describe the behavoir

Ege: Here in WebThing protocol there are descriptions which do this. 

Daniel: I think, this should be an own docuement itself.

[Day 1 adjourned]

