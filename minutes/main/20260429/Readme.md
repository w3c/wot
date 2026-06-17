# WoT Main Minutes 29 April 2026

## Attendees

Present:

    Kaz Ashimura

    Dave Raggett

    Sebastian Kaebisch

    Mahda Noura

    Ben Francis

    Charith Perera

    David Ezell

    Ege Korkan

    Kunihiko Toumura

    Michael Koster

    Tomoaki Mizushima

    Josh Thomas

    Bobur h



Regrets:

Chair: Sebastian

Scribe: Mahda Noura

## Agenda:
 https://www.w3.org/WoT/IG/wiki/Main_WoT_WebConf#29_April_2026
 
 ## Minutes 
 
 ### Minutes Review
-> https://pad.w3.org/p/2026-04-15-wot 15 April 2026
 
 sk: The minutes look fine
 sk: Is there any comments on the minutes from two weeks ago?
 (None)
 
 ### Charter Discussion
 
 #### Horizonal charter review
-> https://github.com/w3c/strategy/issues/509#issuecomment-4197504588 Dom's comments on the WoT WG Charter
 
 sk: Discuss the Reviews received:
     - First point was about the naming issue where we discussed several times ago, why it's called the Web Thing Protocol. 
     -Then there is redundancy in the group, should be updated.

     - Why bindings not published as a REC and instead working on an implementation report. 

We discussed the points on the Monday call and want to provide the response. 
... I would like to discuss this with you to see whether you have similar opinions. 

Why "WoT Thing Protocol"? Because all the deliverable start with the WoT and this results into a strange redundant word usage. If we have the term Web it will cause wording issue, we didn't use it in a smart way. Using this in the short form with the "WoT" term is better. 

##### PR 1286
PR#1286 -> https://github.com/w3c/wot/pull/1286 Update list of groups for coordination to address review feedback
- There was an update on the JSON-LD working group providing the latest resources.
- There are some removements of existing groups.
- The Web and Network interest working group has also been removed
- The special data has been updated with the latest resources
- The Privacy working group is an official group now
- ECLASS updated and URI of ITU-T

sk: Thank you Ben for the comments
...Is there any comments/questions for merging this PR?

(PR#1286 merged)

##### Conformance for Bindings
-> https://w3c.github.io/wot-binding-templates/bindings/protocols/http/#conformance Conformance section from the WoT HTTP BInding Note
Dom's comment from Issue#509: Why the bindings are declared as informative documents, which has also some normative aspects inside?
sk: I think this is a complicated situation here. The idea of the binding is not to invent the protocol that is used, it is more a guideline. For instance how shall the TD look like when you want to use the MQTT protocol. On the other hand, it is more than a guideline, it provides a recommendation of different terms and so on. Both normative and recommended info is provided. 
...three points are discussed on the provided issue
...when publishing a new version of the REC would be more complicated
...flexibility of the Note document, we should focus more on whether content that improves interoperability is provided. We should not focus on the evolution of the protocol. 
...If we start with the Note aspect then we have IPR issues, because if you go to the REC track you need to make sure there is no IP issue, which is more complicated. 
...In our case, we are not changing the functionality of a protocol or not adding something on top. 

mk: There were two points that we missed here and that made us make the decision. First, testability aspect. We decided not to make it a normative document, there would be tehcnical requirements that we can't test. We couldn't test anyways. We need to validate and we can't do that because we can't control the protocol. Second point on IPR... we decided to not have any third party IPR on the document. We don't want for instance any IPR in the W3C. 

mk: If we would apply the IPR it would raise the bar for third party development on the binding. It would complicate things for contributors. 

sk: That is a good point, for instance DID methods need to be part of the registry to be used for the ecosystem.

ek: There are some wrong observations. We would need a testability anyways. When there is something a REC or coming from outside or just a Note, if they want to make the binding stable they need to show testability and implementation. Another point on development of the protocols rapidly...version of the binding.
ek: IPR issue is existing for instance BACNET. Is the IPR about other organization or members?

sk: You don't see the problem starting from Note to REC?
ek: I don't understand the issue around IPR?
sk: If you start a REC as a member company, you need to agree that you don't have any IPR behind, if it exists you need to release it for free. This process doesn't exist for the Note. 

sk: IPR is mainly an issue for the members working on the standard. They are not allowed to bring protected issues in a standard. This is what they want to avoid here. 

ka: There is some discussion so far. But I don't think we should continue the discussion about Note vs REC. We should rather explain what we want to do and thenask Dom about how they can support us from the W3C Proess viewpoint. For example, the expected vocabularies are listed on each protocol binding template, and we'd like to encourage/force people to use those vocabularies for each protocol for WoT binding.. We can simply ask them about what can be implemented or applied from the latest W3C Process for our purposes. 
... Technically, what Dom is telling us is correct based on the W3C Process document. So we should explain what we want to do is encouraging people to use specific vocbaulary for WoT bindings. We should explain this explicitly and ask Dom for help. 

dave: I think I understand DOMs view on IPR. We should only do that if we see ..in this case when we are having a registry it should be informative and not normative... we should be clear about the role in the charter, quality control for informative notes describing how others want to use WoT protocols. 
    
ben: This is really tricky. If you look at the W3C Process, technically Notes are not supposed to contain Normative statements. On the other hand, there are several Notes that do this. If you want to do this correctly we should not use Normative vocabluaries. I have looked into a set of registries, some of them are informal, it is important what they contain. If every binding was a recommendation, I think it is a heavy process that will affect the timeline. It will limit people to contribute. The only other suggestion I have, only looking at existing registires, there are community reports, they can contain normative language, the bindings could exist in the community group and exist there. In conclusion, if you follow the W3C Process precisely... but this is far heavy-weight for producing these documents. 

sk: you are absolutely right. The amount of deliverables are too much and we won't be able to manage this. We have 7 planned rec's in the pipeline, won't be possible with the current resources. Bringing the REC pass, testing, and documents is too much time that we don't have. 

sk:  I would like to show you some examples of documents, like the DID Extensions, there are Normative terms too, clearly normative assertions are included.

mk: We are still missing a point here about the normative content. We wanted to have the W3C review be about the formation of the document and completness. Once we are done with this, we should be left with normative references that are about the protocol itself e.g. Matter, OPC UA binding. There is no way W3C would be able to do a conformance test on all the protocols.

sk: Good point, that was the reason why we couldn't work with the OPC foundation, they have different requirements on how to specify the document, which is not compliant with the W3C.

ege: We are mixing too many stuff. We are doing conformance testing on how implementation is using TD... 

sk: there is a difference between "conformance testing" and "feature testing".

ege: I think to make this a construtive discussion, it would be good to compare the work to put a binding into the registry to the stable/current state when it is a note vs a rec. Unless we are not doing this comparison, we are not having a constructive discussion. IPR could be an issue on it's own. 

sk: Modbus not active anymore, justification that we can taking over

ege: we are nt saying anything about we taking over, OPC foundation does the work....just that the internal process of W3C looks different than OPC foundation.

sk: ASHRAE is aware of it, but we are going to ask them

ege: I think we don't have to ask them. 
sk: You would prefer to go to a REC?
ege: I would prefer that we make a real comparison, what is the effort between doing the two?
sk: We already know this... 


sk: It would be better to go for a REC track. Of course we need a testing protocol. But I am a bit worried if 

sk: the question is if we can fulfill the rules we make

dr: proposal to use a single REC track which defines the rules of a registation document, where we include normative statements, and check submissions against that document. WE make no statements about IPR in this document.

ka: this could be a possible solution but here is another proposal. We should try a 2-step approach, first clarify the whole group expectation for the WoT Binding mechanism, then discuss with Dom based on that.

sk: do we not already have our expectations in the charter?

ka: apparently not, from Dom's response. More clarification is needed. There is still some gap

bf: not sure if Dave's suggestion solves the problem because we already have the registry document. The question of note vs rec only applies to documents published by the w3c itself. We could keep documents at the working draft stage indefinitely as an option.

sk: we discussed this internally to keep documents at workning draft and maybe go to CR stage

### Next Steps
sk: we are out of time today, one more topic is cancellation of next week meeting due to Golden week. Propose moving this discussion to a new github issue where we can discuss in the meantime

ka: to clarify, we'll discuss on the github issue and follow up on the main call in 2 weeks

sk: yes 

## Adjourn

[adjourned]

 
