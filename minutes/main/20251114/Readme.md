# WoT F2F Minutes 14.11.2025, 9:00am-18:00pm

## Attendees

    Mahda Noura

    Kunihiko Toumura

    Kaz Ashimura

    Tomoaki Mizushima

    Tatsuya Igarashi (for AB discussion)

    Sebastian Kaebisch

    Ege Korkan

    Tetsuhiko Hirata

    Van Cu Pham

    Tetsushi Matsuda (for Liaison discussion)

    Charith Perera

    Manu Sporny

    David Ezell

    Tatsuya Hayashi

    Daniel Peintner



Chair: Sebastian

Scribe: Mahda (until coffee break); Sebastian (after coffee break); Ege (after the lunch); Kaz (after 2nd coffee break)

## Agenda:

    09:00-09:10: Opening (Sebastian / Michael)

    09:10-09:20: Asking for comments on W3C Process for AB (Tatsuya Igarashi)

    09:20-10:30: Liaisons (all) 

    Latest status on OPC UA (Sebastian)

    Latest status on Smart City IG (Michael/Kaz)

    ECHONET (Dr. Pham / Matsuda; confirmed)

    10:30-11:15: Coffee Break

    11:15-11:30: Use Case (Tomoaki / McCool) 

    overview about latest changes

    what is the relation to the new charter?

    11:30-12:30: Protocol Bindings: Status and (Note) publication plans (Mahda) 

    Modbus, MQTT, BACnet, CoAP

    12:30-14:00: Lunch

    14:00-15:00: Joint meeting with JSON-LD WG (Manu Sporny)

    15:00-16:00: Closing session

    16:00-16:30: Coffee Break

    16:30-17:45: Joint meeting with WoT CG (Ege / Cristiano)

    17:45-18:00: Closing (Sebastian)

    18:00: End of day / F2F

    Dinner (tbc)


## Minutes

Topic: W3C Publishing Process
We have a special guest Tatsuya Igarashi, the AC Rep from Sony, who would like to ask us about the W3C process.

Igarashi: He is an AC member, the procedure working group has been working on the update. During the TPAC, AB would like to get feedback from us. 

The purpose of AB is, process simplification is a priority. We hear some voices that the process document is hard to understand. In terms of WoT WG, if you have some kind of questions/comments for the W3C process document. We can take these feedback and would like to create a concrete proposal. 

Ege: I am fine with the length and complexity, because I don't need to read everything. The information that I need is self-contained. In this case this part is not a problem. But there are some things that there are some ambiguities regarding the registry. It is hard what other groups are doing, there is a bug in registry lifecycle, which I have reported, but not received any feedback. 

Ege: We published the first registry, you can change everything in the registry until the final publication, see more on the following github issue:

https://github.com/w3c/process/issues/1085

Ege: I think for the registry since some stuff is unclear by design, where groups put overall patterns that they find useful, like TTML group, but you can't find it public. There needs to be a place for the community to publish their best practices. 

Igarashi: We will consider this.

Sebastian: Is this a question only about the document or also the policy?

Igarashi: Yes, also the policy.

Sebastian: We had a task force which we planned to publish a RECOMMENDATION document, the idea was to move the REC document to a Note document. However, here the process it says you are not allowed to move from REC to note. The label was not appropriate.

You have to label your document as an "Abandoned Draft", which is not good. Maybe we would like to still working on this topic but want to publish another version like 2.0. That is why we have not labelled the document an Abandoned Draft. 

Igarashi: The document is a candidate draft, is it recommended to go to Note?

Sebastian: The idea was to publish as a REC, but the plan changed. But the idea was that the content was still good, but we want to use the content for another version, and to publish the intermediate results as a Note. However, we were not able to do this, because it needs to be labelled as a DISCONTINUED DRAFT. This does not make the TF leads happy. 

Igarashi: You would like to simplify the process from Note to draft?

Sebastian: The term "discontinued draft" does not sound friendly.

Kaz: From my opinion, there are several issues about this. Sebastian, your point is only the naming and labelling?

Sebastian: yes, the process is fine, it is about the naming and labelling. 

Kaz: From WoT viewpoint, suspended document is not friendly. 

Igarashi: Also there might be possible to improve the process
Sebastian: There we don't have an issue, it is really about the naming. We publish a new working draft and we stopped there. It is still not good, because it looks like we are still working on this document. But we didn't use this label, because others would have the impression that we are not working on this document anymore.

Tatsuya Igarashi: If you would like to influence and discuss please attend the meeting.

Kaz: I think it should be clarified, the relation between working group, interest group and community group. 

Topic: Liasons

We have three topics planned for this part today: OPC UA, Smart City, and ECHONET. 

Subtopic: OPC UA

Sebastian is sharing some slides.

Sebastian: OPC UA has an own ecosystem which works quite well because they have their own communication protocols, client-server interactions, MQTT-based communication, cloud-based communication. Usually if you like in the OPC UA world it is easy to develop your application. The question is always, how can you integrate the sensors and actuators in the opc ua space and how to onboard the devices to the OPC UA world. Here the WoT comes into play. As you know the WoT's motivation is to integrate systems. 

The good news is that there is a companion spec, that says you can have a TD of the devices, and simplify the onboarding OPC UA for WoT connectivity. It was driven by Microsofot. They are currently working on the second version of the standard.

The second approach where I am currently working on. The following situation, if you have an OPC UA server and bring it to another ecosystem, a non-OPC UA. ecosyste, like BACnet, ECHONET or so on. The question is that how can you simplify this, and integrate OPC UA to a non-OPC UA system. That is the work I am doing here to simplify this integration process. 

What is missing is all the RDF stuff and the tooling that is available in the Web world is not existing, we would like to bring it. We are just in the process of releasing this document, we are in discussion about the security. I did work on the PlugFest and discussed already. There needs to be some I expect to publish this document by the end of this year. This document is about how we describe OPC UA systems and what kind of data you want to expose to a non-OPC UA system. Here is an example. 

OPC UA has its own protocol for handshaking and security mechanism. In the href field is used to give the address, they have their own address scheme, it's called a NodeID. This is the typical way that OPC UA works. The good thing was that it was easy to implement this. It is now easy to assign the semantics now thanks to JSON-LD. The WoT Binding is asking what is the URI format. 

We also have the namespace concept from the Thing Description, we can also simply transform this to a TD. That is also very straightforward. This is a list of vocabulary that we have defined in the OPC UA world. There are some terms that are typical in the OPC UA world. All the terms are optional, they don't have to be used. All the terms coming from the OPC UA world are just additional metadata to know where the data is coming from, what are the parent nodes and the children nodes. We also describe a mapping of how to bring the opc ua to TD and how this works. 

It is very nice that we have this in the OPC UA world. The use still XML stuff and now they have an opportunity to use JSON-based scheme. It is improving the OPC UA space alot. 

Matsuda: Could you explain how WoT can make OPC UA onboarding process easier in more detail?

Sebastian: We have different devices which speak different protocols like CAN... The engineers have to understand how the protocols are working. It is normally a very complicated process to understand how to integrate these devices in the tagert systems. As mentioned, you would normally have thousands of such devices in a factory, if you think that if you spend 4000Euro, you can quickly calculate that this is a big issue for the customers. This integration process costs alot of money. Here is the answer, that is solved by a TD. Then you have a standardized entry point. It is like the index.html. the TD plays a similar role. You can then integrate devices in a plug & play style. 

Matsuda: You can improve the integration process by having devices provide WoT interface? 
Sebastian: Yes

Kaz: As Josh and others mentioned yesterday, think about how to implement WoT-based systems themselves, this kind of mechanism would also be very useful for that. 

Subtopic: Smart City

-> https://www.w3.org/2025/11/12-smart-cities-minutes.html Smart Cities IG Breakout on Nov 12
-> https://iec.ch/system/files/2025-10/agenda_speakers_2025.10.29.pdf IEC Seminar on Smart Cities Ontology on Nov 13

Kaz: This week I gave reports and updates, for instance smart building co-creation. They have created a new consortium about smart buildings and working with actual constructors, IEC SC3D. They are working on an ontology. 

Kaz: They are defining geo-spatial concepts. We have discussions about next steps. We need to continue working with JTC. Talking about creating ontologies for smart cities. 

I joined the workshop on terminology and ontologies. I gave updates and proposed further collaborations. 
ISO/IEC JTC 4. 

Sebastian: What is the plan? You are an interest group?
Kaz: From the logistic part I will become the co-chair and continue to group meeting. We will revise the folks from JTC4, and think about which parts of smart city ontologies need to be interconnected. 

Sebastian: Is the goal is to provide guidelines?

Kaz: yes, and defining ontologies, think about which ontologies to consider for ontologies. The problem is that some nicer mechanisms are required for integrating ontologies. Yesterday, I talked about having binding registry .
Sebastian: We should mention S3CD as a potential cooperation partner for the new charter.
Kaz: also JDC4 

Subtopic: Echonet

Matsuda: The first part ECHONET consortium and the other topic is a research work that is not part of the ECHONET

Pham, Van Cu: ECHONET Web API guideline. They describe how the device can be seen and describe. It is called Device Description (DD). There are 44 different types of devices. What we can do the device? We have functions to read and write the device property, invoke an action on a device. This design is based on ECHONET Lite devices. In ECHONET Lite device we need a controller that transforms the semantics. Also, we have more functions, like getting a list of devices or specific devices. There are more functions that are different, like you want to send a command to a group of devices, so not sending three commands, instead we can send one request. Another functionality is that you can define a group of devices. We have the functionality for quering historical data, what was invoked in the past. This function is actually is not a mandatory function. You can also define a period of time.

Currently if you want to give the history of one device, now you can do for a group of devices. I did not work on this feature myself. The property descriptions look a lot like the TD. We have a set of specific URIs.  in ECHONET Lite you have more than 100 devices. I haven't seen any events until now from ECHONET. Now we want to issue one API call. 

What is the difference from a TD?
The syntax is a bit different.. JSON instead of JSON-LD. No ontology support at the moment. No support for protocol binding support.

Matsuda: We don't have TMs, it corresponds to TD. 
 
Sebastian: If I buy a ECHONET device, does the device have a TD? the API is predefined by ECHONET, they have the methods to get the device descriptions. Do you speak directly with the device or with the gateway?

We assume that the server is connected to the devices and the clients. Conceptually, ECHONET devices can support this, I don't think there is any device in the market that support the ECHONET LIte Web API directly in the market.  (Additional note after the session: There are vendors that provide ECHONET Lite Web API server for their products in B2B services. [Tetsushi Matsuda])

Sebatian: that means there is always a server that is running on a gateway? If you buy an ECHONET device you would need a gateway in the middle?

Matsuda: Not really. ECHONET Lite protocol was originally for local networks based on UDP. We have proprietary descriptions for ECHONET Lite. ECHONET Lite and ECHONET Lite protocol are different protocols. 

Pham: Last time when I demonstrated, I put a air conditioner, inside that there are ECHONET Lite and .ECHONET WEb API. When you put the power you have advertise yourself, send a multicast package...that is in the ECHONET Lite specification. from that, I register the frame format structure into ECHONET Lite Web API, that translates the frames to JSON. 

Sebastian: That means the device descriptions we have seen is the ECHONET Lite descriptions.

Matsuda: The server generates this device description based on ECHONET Lite data model. The ECHONET Lite Web API does not specify the interface between an Web server and a device/controller.

Sebastian: That means if you want to onboard ECHONET Lite devices to the server, how do you know which devices you have? Do you have predefined device models?

Pham: I look at the models, the format is not JSON, it's hexadecimal calls, we have this kind of documentation. There are predefined device models. 

Sebatian: This is similar to Matter.

Matsuda: With ECHONET Lite protocol, the controller can discover what properties are supported by a device, and the controller can provide this to the server. 

Sebastian: That means in the future if the Web API gets an option to give me the device list and bring the devices and properties in a TD, then you can share to every client what you can do with the ECHONET ecosystem.

Pham: That is currently what I am doing. 

Kaz: I was also wondering the potential expectation by the ECHONET consortium for the devices themselves inside the home, do you think in some years the device web api could be deployed on the device itself instead of a cloud server?

Matsuda: good question, it depends on the market. 

Ege: You said you also want to present something? 

Pham: Yes
Ege: at the final slide you said you don't support ontologies, but you do. You are pointing to 0x.. something, even though you don't point to web ontologies. TM for device models, if I buy two different airconditioner from two different companies, how much differences are there?

Pham: They will be different. The minimum is that they have to put the manufacturers name, there are some mandatory properties and some optional ones.

Matsuda: What Pham-san mentioned about mandatory property is about ECHONET Lite data mode, not ECHONET Lite Web API data mode. At present we don't have any mandatory properties in our definitions of ECHONET Lite Web API data model. We expect the Web API will support mandatory properties in ECHONET Lite data model but we cannot guarantee that those properties are supported by the ECHONET Lite Web API. But of course if you would like to implement a Web API for an airconditioner, you want to turn ON and OFF and set the temperature of the airconditioner.

Ege: So, you say that ECHONET Lite specification is not necassirily mapped to the Web API model.

Matsuda: Yes, even though properties in ECHONET Lite data model are mapped to ECHONET Lite Web API data mode, mandatory or optional attribute is not mapped. Thats the current situation. 

Presentation from Pham from JAIST university: ECHONET Lite and /or Web API as WoT. This is a presentation from myself as research and not ECHONET.

Pham: In TD there are some dynamic and static parts, the form, security,.. change. I am using node-wot. There are three solutions that integrate ECHONET Lite to ECHONET Lite Web API. 
one solution is to use a proxy, another solution is that what if inside the form I just put the corresponding URIs. 

Mapping between TDs and DDs. DD/MRA to TD mapping explained. Defined a customized prefix called echonet.
echonet:eoj. There are some differences in the schema to the TD, but some straightforward mapping is required. 
We just some use some rules to map the MRA to DD to TD. There is a tool I developed for this. 

Expose a Thing by API using node-wot. Pham explains the three patterns and how the TD is generated in each of the patterns. 

In the future we don't even need the proxies to translate between the ECHONET Web API to TD. 

Ege: We would be supporting this kind of pattern for data mapping, like define once and that it is valid for all properties. Issue posted regarding “values in object” https://github.com/eclipse-thingweb/node-wot/issues/1411
In TD we put a string but we need an object, we also have a similar problem. This is a common pattern that I am seeing. 

Pham: do you mean the request or response? 
Ege; for the example I gave you from Siemens, we have...

Kaz: probably we can expect us to generate a ECHONET Lite protocol binding. 
Pham: Yes I can do it. But I need to consult ECHONET Consortium.

Ege: If we solve the data mapping issue, this will be exposed as HTTP, but it would be a vanilla TD, and there would not be the need for an extra gateway. This can a profile for instance. 
Kaz: Personally, at this moment, there can be two registries for ECHONET Lite. 
Pham: For me ECHONET Lite is easier for me
Sebastian: But you don't directly speak with ECHONET Lite. 

(Morning break till 11:15)

Use Cases

-> https://w3c.github.io/wot-usecases/ WoT Use Cases and Requiremetns Note Editor's Draft
-> https://github.com/w3c/wot-usecases/issues wot-usecases repository's Issue area

Tomoaki: I like to share the latest status of the use case document
... the plan was to publish an updated Note version for the TPAC
... this was not possible
... the Terminology section has a new entry "User Story"
... there are now 3 categories: functional requirement (coming from use cases), technical requirement, and user story 
... Section 2.1 introduce the Use Stories
... if you create a new issue at the Use Case repository there you can select category proposal, use case proposal and user story proposal
... in the past we used pull request. However this is only possible for W3C members. Creating issues solves this problem
... we did not change anything in Chapter 3 and chapter 4; however, there is a new Chapter 5 about User Stories
... next step is about the discussion about Use Cases in the new charter
... I would prefer to keep the Use Case task force in the new charter
... I like to cooperatio with, e.g., the TD task force

Ege: what will happen to Chapter 3 and 4?

Tomoaki: this document should stay as is

Ege: I would prefer to have those Chapters not anymore here

Tomoaki: We need to discuss this, lets do this after TPAC

Sebastian: What you like to prefer. Have those in the TD?

Ege: No

Sebastian: lets discuss this together with McCool after TPAC

Kaz: Given the current situation, we should not talk about the work of WoT Use Cases by the WoT IG's Use Cases TF, but we should more think about how this could be coverd in the new  WoT WG Charter

Protocol Bindings: Status and (Note) publication plans (Mahda) 

-> https://www.w3.org/TR/wot-binding-registry/#submission-requirements WoT Binding Registry - 4.4 Submission Requirements

Mahda: Currently drafts available
... Modbus, CoAP, MQTT, BACnet, Profinet, HTTP
... we need to publish them to get part of the WoT Registry
... there are some rules which need to be fullfilled
... we have to provide a name of the binding, link to the specification / document
... information about URI scheme
...on which TD version on
...we need to follow the technical submission process
...the WoT binding guideline gives in Section 4.4. all the necessary requirements that have to be fullfilled
... regarding the publication process there several steps
...Step 1: Pilot phae for the binding registry
...Step 2: Mechanical pocess required by the W3C
...Step 3: Review of existing artifacts for the protocol bindings
...Step 4: Defining test report content

Sebastian: who is doing the artifacts

Mahda: I will do this

Sebastian: how does the test report look like?

Ege: is still open
... the registry process does not care about the protocol itself
... but we want to know how the test result look like, e.g., how the TD is parsed
... the test should be made public availble
... will be part of the registry entry

Mahda: Chapter 5 of the Registry document shows a sample entry
.... discussion points are if we can publish the BACnet with ASHRAE
... same for OPC UA with OPC Foundation
... we need also to think about, if we use the new generation tooling with LinkML
... another topic would be if we want to have new protocol bindings?

Sebastian: its also a charter discussion? Matter is requested quite often

Ege: We should put the new tooling with LinkML if it also works for the TD. For the existing ones, I dont see the point
... PROFINET has no Ontology yet

Mahda: there is also the question who review the new submitted protocol bindings?

Ege: We need a list/review check mechanism

Sebastian: maybe we can automize this?

Mahda: for the ontology its not easy
... basics can be auto validated
... there is a tool called ROBOT which can be considerd

Kaz: How to organize the review process? How and when?
... shall we use the github?

Ege: still open

Kaz: we can also ask Manu later.

Tomoaki: OPC UA document is good example for a binding document. We can review this document as a example.

Ege: However, we cannot change the content of the OPC UA binding anymore

Sebastian: this is right. We need good guideline information for other SDOs
... my expectation would be that other SDO get in contact with us to clarify questions if there are

Kaz: right. so we should clarify which document (binding document itself or the registry entry) to be reviewed how
... hour main target is not the binding document itself but the registry entry

Sebastian: how about the Modbus binding?
... there was the ReadFileRecord missing

Mahda: I worked on this during the PlugFest

PR: https://github.com/w3c/wot-binding-templates/pull/445 
[WIP] Missing ReadFileRecord in Modbus binding

Mahda: this feature is now covered
... also fixed some issues such as the prefix "modbus" to "modv"
... updated "Data request" to "Data field"
... did some typo fixes

Sebastian: when will be merged?

Mahda: there is still a render error. 

Ege: I need to merge the master first then should be fixed
 
Sebastian: if this is fixed, then it can be merged, right?

Ege: yes

(Lunch till 14:00 JST)

JSON-LD Joint Session

-> https://w3c.github.io/json-ld-charter-2025/ Proposed JSON-LD WG Charter

Sebastian: We have Manu Sporny with us here. They have prepared a new charter and he will present it today. Then we will have Q&A on that. Then some issues from our side.

Manu: It is under vote right now. You can vote for it.

Manu: We want to make JSON-LD easier to use. There is room for that. Similar for the JSON-LD API.

Manu: For example you can guarantee that the context are static.

Ege: The content is static right?

Manu: Yes.

Ege: Ok that is very interesting. Our users kind of assume that already so this makes it actually correct.

Sebastian: Is it backwards compatible?

Manu: Yes.

Manu: Similar for algorithm and framing.

Manu: New work is YAML serialization. 

Ege: Can we just use an off-the-shelf YAML converter? 

Manu: Yes. it should just work. We are talking about YAML to JSON conversion where you have stuff like comments.

Sebastian: Will comments be supported?

Manu: No they will be dropped.

Ege: How about adding a new term into JSON when you have comments?

Manu: that would be injecting data into JSON-LD and it is not recommended.

David: Also there are multi line text etc. and you cannot do that in JSON.

Manu: Yes those will not be supported.
    
Sebastian: Comments are indeed nice. It is a cool feature for us.

Sebastian: For CBOR, do you do something a bit different than IETF?

Manu: No it is fully compatible.

Manu: Uncompressed CBOR-LD is not very interesting, only minimal gains.

Sebastian: Did you consider EXI? They are very good in string compression.

-> https://www.w3.org/TR/exi-for-json/ EXI for JSON
-> Test environment, https://exificient.github.io/javascript/demo/processJSON.html or with string sharing, see https://exificient.github.io/javascript/demo/processJSON.html?SharedStrings=true

Manu: We can have a look at it. Maybe it is what we are doing for compressed JSON-LD. It sounds interesting.

Manu: The compression allows to get rid of the long URIs and makes them a single byte. So something like schema.org becomes a single byte

Manu: (shows a QR code example)

Manu: We needed to get under 400 bytes to be readable. Also here is the chart with compression results.

Daniel: Do you have the slides available?

https://lists.w3.org/Archives/Public/public-json-ld-wg/2020Jul/att-0004/Introduction_to_CBOR-LD.pdf

Manu: Yes. They are 2 years old though.

Ege: What if you just do CBOR compression?

Manu: You get to around 800 from 1200 bytes.

Sebastian: the key aspect is, that you can work on the binary level. No decoding is needed.

Kaz: Do you want to provide an editor?

Manu: Yes we are working on it. But libraries automatically do compression tables.

Manu: Here is a compression table. You can know the context to create a lookup table.

Manu: So this way you can do a lot of compression.

David: So the context is important.

Ege: What if there are terms are not in compression table.

Manu: You can add custom terms to table and have more compression.

Ege: There was a presentation of json binpack: https://github.com/sourcemeta/jsonbinpack?tab=readme-ov-file . It does the same thing but with the json schema

Manu: Probably similar results but this operates in the rdf level.

Manu: In this example of date time, you know the ranges since you know the range of dates etc. This should be better than JSON Schema based approach for example.

Manu: Also we can have better multipart compression since we do better than base64.

Manu: Similar benefits for did documents.

Manu: You can also go from yaml-ld directly to cbor-ld.

Manu: Otherwise there is only maintenance.

Sebastian: You also have a nice timeline.

Manu: We are incubating this for 2 years already. So we are far ahead.

Sebastian: We can easily include this in our charter.

Ege: How will you adopt the CG spec?

Manu: We will take the last CG report and go through the wg process. We have been doing this for 8 years already. It makes it easier to argument a charter. For credentials API, we did the same but probably did it for too long. 

Ege: One thing to note for the WG. We will need to refactor the TD spec a bit to make sure there is no general assertive language in the serialization.

Sebastian: In the DID method registry, how do you evaluate the submissions? Is it automated?

Manu: I can show the most challenging registry we manage. DID Methods.

-> https://www.w3.org/TR/did-extensions/#the-registration-process

Manu: We have more than 200 methods. We have other registries too but I won't talk about those.

-> https://www.w3.org/TR/did-extensions-methods/#did-methods

Manu: (shows a json that comes in a PR)

-> https://github.com/w3c/did-extensions/pull/649 did-extensions PR 649 - add did:nda method

Manu: They make a PR with a simple JSON. Then they get a checklist to fill. We have a community of 13 reviewers and 2 of them need to provide a review. Sometimes it is a couple of minutes sometimes months. I guess you won't get that many submissions.

Sebastian: Probably not.

Ege: If we get the manufacturers protocols, we can get there.

Manu: The infrastructure to set this up is maybe a week long work for someone. Then it is straightforward.

Manu: There is a video they watch as training.

Ege: Can I be a reviewer?

Manu: Yes. But there is somebody who really knows what they are doing who presses the merge button.

Ege: so becoming a reviewer is motivation.

Manu: Also it is a best effort

Ege: who is the one that knows what they are doing?

Manu: Me but also other people.

Ege: Can you show some difficult entries?

Manu: (shows example PR 603) They tried to register 21 methods.

David: Do you handle JSON Pointers?

Manu: We use JSON Pointer only some very specific stuff.

Manu: So add code of conduct kind of remarks. Otherwise it can be bad.

Kaz: So the reviews and workflow happening in pull requests is nice. We should do something similar.

Ege: We have decided to use issues. Is this in a CG since people make PRs?

Manu: It bounces back and forth. Not recommended though. Keep it in the WG.

Manu: Also this is not an official registry. The community did not need it.

Kaz: (Missed your point)

Manu: We have evaluated it a couple of times.
    
Kaz: This approach is much more concrete than the W3C Process.

Manu: We did not want the risk of the AC review rejection.

Sebastian: We really appreciate your work. Thank you for joining.

Closing Session

Sebastian: We do it now since I did a mistake in the agenda. So we have time now.

Sebastian: Etherpad. Is it good or not? What are pros and cons for you?

Kaz: I like it. We should agree on the minute taking style, though.

Mahda: I like it. I think we should add the guidelines for stuff like headings etc.

Sebastian: We should note that it is not public until we make it public on GitHub.

Daniel: I cannot do autocorrect though. It is not activated.

Sebastian: Our etherpad is not up to date. W3C should update it.

Ege: Yes and there are plugins but W3C needs to do it.

Tomoaki: Etherpad is good. Easy to read and quick to change. However, someone can change the minutes after the meeting.

Sebastian: We can go back in time to see if someone has changed it.

Ege: You can also click the star button and save the version.

Sebastian: Only w3c account people can change it. 

Kaz: If we really want to "manage" all the minutes from our weekly meetings strictly, we can identify the "state" of the minutes by adding a "[DRAFT]" kind of label
... also we can copy the "final" minutes to our GitHub repository if really needed
... but I personally don't think we need to manage the minutes so strictly

Ege: Minutes are public already. We can create the minutes on GitHub straightaway and let people review a week.

Sebastian: Ok we can do that.

Tomoaki: Scribing is not member's job. AI Companion can be used.

Sebastian: We can enable the companion. I need to check.

Kaz: I don't think we should use AI companion for good quality. The results are not OK at this point. So I would like to go ahead with etherpad. We can also have some more discussion about our need for minutes taking and possible procedure, though.

Sebastian: It is very annoying to use the AI tool. We get an email and copy paste etc.

Kaz: We don't need the perfect solution now. Etherpad is a good starting point.

Manu: We have a full workflow to use recording and ai agent generates the summary. Full audio and video recording. The code is online and can be replicated. It is not perfect but very close.

David: We can even train it over time for acronyms.

Manu: we would need to keep up with it but yes.

Manu: It is fully automated now, everybody shows up and talks. A week later you get everything.

Manu: Anything that got in the way of full automation is removed now.

Manu: We used the same infra for the WG but the CG is paying for it.

Ege: It would be nice to test it once to see what we can have.

Tomoaki: Chairs should agree with W3C on what the staff work is. I don't know the team contact's job. He can be busy but team contact is team contact.

Kaz: Groups can talk with the Team about your expectations but basically the group itself and the Chairs themselves are responsible for the standardizaiton, so the group should specify what is expected from the Team Contact carefully.

Sebastian: No WoT meetings next week. 

Sebastian: Tpac 2026 is on october in Dublin, Ireland.

Sebastian: There is option to have a plugfest before the AC meeting in China. There will be also technical sessions in the AC meeting and we can present the results there.

Sebastian: Thank you for coming here and doing all the hard work. The breakout was very successful. 

(Afternoon break till 16:30 JST)

Joint meeting with WoT CG (Ege / Cristiano)

CG Session Slides: https://docs.google.com/presentation/d/1GBIeF4bj2YkZbWiCrPsDkRjui89VoHS_MrXCtbsPyW4/edit?usp=sharing 

ege: joint meeting with the CG
... Cristiano should be joining
... starting with brief updates
... transparency of the work
... then Plugfest and Liaison

subtopic: What dows the CG do?

ege: no plan for publishing specs
... no official agreement about docs
... but oranizing meetups
... put slides, etc., on GitHub
... video on YouTube also
... Tutorials also have been created
... e.g., underlying technology
... also office hours
... to discuss questions from external developers
... (shows "Updates from WoT CG" video)
... 5 tutorials, 10 meetups
... WoT Week
... Plugfest
... various target areas
... different industry categories
... opensource collaboration
... join the community!
... the video summarizes the CG's activity
... (What works well)
... Meetups have 20+ attendees
... tutorials get reviews and watched regularly
... (shows channel view information)
... some are more popular than others
... DT's AI topic is popular
... questions?

seb: how many from the WoT main page?
... e.g., the ones from the WoT marketing page

ege: 30000
... pretty good number
... (shows videos listed on YouTube)

ege: (What does not work well)
... office hours
... ok in the beginning
... but i the worst case, simply used as a chairs call
... monthly calls
... very low numbers and not motivated to work on CG tasks...
... maybe need more "concrete" tasks?
... created the "Adopters page", though
... a "starter" page can be created

ege: (Plugfest Organization)
... as mentioend yesterday
... possibly the WoT IG would be closed
... possibly move Plugfests to the CG side

ege: (Liaison)
... discussion during TPAC in Sevilla

-> https://github.com/w3c/wot-cg/pull/227 wot-cg PR 227

-> https://github.com/w3c/wot-cg/blob/bf7739043a14527678b94b7ea3ea8197b7217829/liaisons.md proposed liaisons.md

ege: proposed liaisons.md document about WoT WG collaboration
... e.g., around WoT Binding
... create a non-normative document to be submitted to the WG
... also topic on Plugfests

seb: just a proposal from the CG side

ege: right

seb: make sense to have discussion

daniel: just checked
... IG has 3 TFs
... what about Marketing and Use cases?

ege: possibly

seb: we talked about that yesterday as part of the WoT WG Charter topic
... Use Cases work can be moved to the WoT WG
... on the other hand, Plugfests would have external developers
... so make more sense for the CG to work on that, I think

daniel: ok, tx

seb: anything else?

cris: would support this direction
... wondering about the Marketing work like meetups

ege: Web site maintenance is the big part

cris: yeah
... so wondering about the possible collaboration about that

seb: Marketing on the WG side is hosted by the W3C officially
... on the other hand, the CG is differently managed
... but possible liaison to be discussed
... would initiate discussion on that

kaz: good direction
... wondering about how to proceed
... OK to have further discussion as part of the WoT WG Chartering?

ege: sure
... technically, some of the WG topics could be discussed by the CG
... in a non-normative manner

kaz: good point
... so we need to clarify the procedure about the relationship between CG and WG

seb: regarding the WoT WG Charter
... probably we would have less focused work for the WoT WG
... but that should not mean we (as the whole W3C) should stop discussion on the other topics
... e.g., JSON-LD guys also have been discussing how to work on which topics

mahda: wondering about the license

ege: CGs have their own license mechanism
... (mentions possible collaboration between a WG and a CG)

mahda: maybe the CG is not really interested in writing specs
... probably they're more interested in implementations
... WoT tooling could be a topic, though

ege: some of the CG participants might be interested

mahda: test files, schemas, etc.

ege: but difficult to split the tasks for testing in general
... maybe in some case, it might be possible, though

david: what about use cases work by CG?

seb: no, at the moment

david: we have factory manager, and if we reach out them
... it's just narrative, what is wished to have or hate to have
... what would make their lives better, etc.
... could invite them to the CG
... almost kind of like having one unique group
... could get very strong opinions
... we have to be sure
... facing to external people
... WoT solves offload problems
... but it's not a clear turnkey solution
... actually, node-wot is still kind of difficult to understand
... don't want to use websocket itself, etc.
... would see what external people really would like to have

ege: yeah
... but not sure how to do that...

cris: one comment
... one actual point here is marketing from my side
... explain the WoT landscape better
... I agree WoT for offloading approach
... opensource projects can get people as the necessary effort is less than others

ege: people have more...
... would like to know how to handle WoT?
... they describe their issues on their slides
... pipeline should be clarified

david: yes, pipeline to be clarified

cris: some companies don't allow people to make contribution to opensource projects
... should make the license easier

kaz: we can generate our proposal and then talk talk with the Team :)

david: we have the next step to simply the work
... some of us get together to clarify the current procedure
... we have to try
... we're actually losing participation due to "paper work"

(some discussion about opensource vs legal departments within companies)
(also some more discussion about how to promote the WoT work in general)

seb: wondering about the Plugfests

(some quick discussion about Plugfests)

ege: then that's it for today :)

seb: and I've already done our closing session ;)
... thank you very much for our 6-day meeting!!!

ege: enjoyed Karaoke much :)

seb: but still have October Fest, etc., in Germany
... both of then in Osaka, though
... anyway, thank you very much for your participation, all!
... no WoT meetings next week
... so see you all in 2 weeks

ege: note that there will be a meetup of the CG next week

(ouch)

[WoT F2F adjourned]





































































