# WoT F2F Day I Minutes 29 October 2026

## Attendees

Present:
1. Ege Korkan 
1. Dave Raggett
1. Mahda Noura
1. Nori Matsumura
1. Yohei Sonobe
1. Kaz Ashimura
1. Sebastian Kaebisch
1. Robert Warren
1. Johan Wilhelm Kluewer
1. Phillip Tronstad
1. Mateusz Jaworski
1. David Ezell
1. Kimberly Seufer
1. Kunihiko Toumura
1. Erich Barnstedt

Remote:
1. Christian Glomb
1. Tomoaki Mizushima
1. Ben Francis
1. Daniel Peintner
1. Cristiano Aguzzi

Chair: Sebastian, Kaz, Michael

Scribe: Kaz

## Agenda:
https://www.w3.org/WoT/IG/wiki/Wiki_for_TPAC_2026_planning#F2F_Agenda_.28Thursday_.2F_Friday.29

## Minutes

### Opening

#### Minutes takers
-> https://github.com/w3c/wot/tree/main/PRESENTATIONS/2026-10-tpac
Kaz
Ege / Christian
Robert / Sebastian
Dave

Scribe: Kaz

#### Agenda
sk: (shows the agenda for today)
... Plugfest summary
... Reports from the joint meetings
... break
... WoT and AI
... lunch
... TD
... break
... presentation from DNV
... Scripting API
... End of the Day
... then Dinner with 15 people
... there is a nice Thai restaurant

dsr: a bit small but maybe could get a table for us

sk: will try to get a table there

#### Intro from Jona
jwk: Johan from DNV from Norway
... originally on Philisophy but these days working on Ontology
... mainly on Oil and Gas
... interested in interoperability

#### Intro from David (for new participants)
de: from Conexxus
... our Team didn't come to TPA this time since they're working on implemenataions for our system
... think AI revolution is just in time

### Plugfest Summary

#### OPC UA
sk: any volunteer :)
... (starts with his own report)
... checked the OPC binding during the Plugfest
... (shows a GUI for the OPC UA binding controller)
... control a robot arm
... (then edi{TD}or editor to show the TD for that purpose)
... message structure here
... acknowledge alarm here

ek: same thing is done for Bacnet
... breaks the separation of the TD/Binding, though
... should think about how to handle that

sk: then randomly selected message here
... events don't need to be acknowledged
... this is what we need to discuss
... "@type" for "uav:eventType" at the moment
... "uav:conditionType": ...

rw: kind of confusing
... probably should remove the word "type" here

sk: can understand your point, but this comes from the OPC UA spec...

rw: the name of the property and the instance is plain English
... not handling computer language
... would be impossible to handle handreds/thousands of "type"s there

sk: I see

ek: technical part of the Plugfest
... should concentrate on the main point

sk: yeah

mj: is this a SPARQL app?

sk: TD files are uploaded on the GitHub repo

--> https://github.com/w3c/wot-testing/tree/main/events/2026.10.Dublin/TDs/Siemens/opc-ua

mj: what about the GUI app for robot arm?

sk: can upload that as well

ka: wondering the actual speed of the arm really synchronized with the GUI :)

#### ECHONET
ys: remote access to the ECHONET devices
... firstly tried to connect their devices in Japan from Dublin here via SSH portforwarding
... (shows the live demo video)
... 3D model for the testbed in Japan
... webcam focus/zoom can be controlled from Dublin
... (shows curl command for that purpose)

sk: any specific issues about the connection?
... transformation from TD to ECHONET, etc.

ys: no specific issue there with the basic connection
... but the digital lock devices had some problem

ka: some timing issue with the lock device

sk: wondering about a possible ECHONET Binding

ka: also think about that

sk: let's talk about that during the Liaison session tomorrow

#### Siemens Ege
ek: devices on the table there
... about new features of TD 2.0
... communication protocols to be repeated many times
... that's "Common Definition" capability
https://github.com/w3c/wot-testing/pull/641

ek: (shows the changed files form PR 641 above)
... new object at the top here
... JSON/CBOR
... (shows airCleaner.td.jsonld)
... this functionality will go into TD 2.0 spec
... (then shows sentronpac4220.td.json)

sk: why does the form default have multiple values?

ek: if it's an array, entries from the definition
... two defintions which have the default
... each affordance has a href here
... defining two default settings

mj: what if there are 3 defaults?

ek: need to have three href settings
... (then goes back to airCleaner.td.jsonld)
... when we come to a low-level interface...
... that is the big change for TD 2.0
... if there is too much optimization, would be too complicated
... security defition can be handled inline

ka: tx for the iitial feasibility check@
... as the next step, we need to think about how to avoid too much complication :)

bf: really like this capability
... trade on the TD side and the implementation complexity
... with multiple defaults
... can have an even longer TD
... great to have some optimization

ek: indeed
... in this case, surprised to find the complexity

#### Siemens Mahda
mn: TD should have the basic semantics
... not overkill semantics but some basic points
... these days we could use AI for that purpose
... basic description about what the device does
... what the property does
... people like those putting the description
... if AI agents can be applied to this pupose...
... also notices some action
... invoke action on the device
... you can on the AI agents as well
... currently we have a term
... but maybe should align that with MCP terms
... (shows a blog post)
... "What Tool Annotations Are"
... (shows an example code)
[[
    interface ToolAnnotations {
        title?: string;
        readOnlyHint?: boolean;
        destructiveHint?: boolean;
        idempotentHit?: boolean;
        openWorldHint?: boolean;
]]

mn: we should think about that
... every property here is a hint
... maybe Daniel or Christian can give comments
... the data is not available when it's sent
... so we should provide this kind of guidance
... during the Plugfest, I used a small cache for that purpose
... it's better than nothing
... better to have a guidance and cache mechanism
... at the minimum, should have a guidance

ek: sometimes you don't know about that
... event to be sent whithin a msec

dp: discussion about stable value a long time ago
... we don't update the value frequently

ek: for LoraWan Binding, we put this kind of frequency value
... also poll capability for Modbus

mn: that's my next point as well
... we don't have any method to handle the fequency
... on the protocol binding level

ek: we should have some abstraction for TD/Binding
... sometimes need inversion

ka: wondering about time sync capability and time code for TD
... if we wan to let the TD processor to handle the change directly
(don't want to extend TD itself with time sync, though)

rw: notion of periocity
... minimal/maximal time span to be handled

de: we could also see the status for possible implementations

sk: any more reports?

#### Conexxus
de: Smart Safe demo
... (shows the diagram of the demo system)
... very understandable
... (shows a demo video)
... having this video, people tend to get interested :)

#### Siemens - Christian
cg: summary from the Plugfest
... data mapping
... enum mapping for ECHONET Web API
... EthernetIP binding
... based on the UA Edge translator
... also features browsing PLC tags
... got a hint as well
... interesting comment on serialization during the OPC UA breakout session
... other formats like XML might be needed

ek: JSON-LD guys are working on CBOR serialization, etc.
... relevant topic for the joint discussion

cg: ok

sk: what about the mathmatical operation which was not checked during the Plugfest?

cg: would present later (duirn the TD session)
... it's part of the ongoing discussion

#### AOB?
ek: any problems with the network connection?
... no big problems on my side, though

sk: the Internet connection was not great

ek: no concrete complains there
... that means everything was OK :)

mn: pretty stable
... Plugfest network also worked well

ka: probably the W3C Team will organize a questionnaire
... about TPAC logistics
... so please respond to that :)

[morning break for 30mins]

### Breakout Summaries

#### OPC Foundation Collaboration
-> https://pad.w3.org/p/2026-10-28-breakout-opc-wot (tentatively on Etherpad)
sk: there is MOU between W3C and OPCF. There are standards developed within OPCF. 
... Now the OPC Binding allows describing OPC UA servers
... We also did some work on this in the plugfest

#### Smart Cities IG
-> https://www.w3.org/2026/10/28-smart-cities-minutes.html Smart City Breakout minutes
ka: We checked the status of the new Charter and the Landscape document
... and then had many presentations from related SDOs. ITU-T, RP1, SBCO, ECHONET.
... want to include RP1 solution statement in the charter text as well

### WoT and AI Brainstorming
#### Basic Tooling
sk: as part of the WoT Primer and Best Practice

cg: There will be also other best practices as well right? Like TD design

sk: yes.
... We used to look into tables and copy by hand into the TD. Too much effort but at least needed to be done once.
... somewhat can be simplified with a tool like EdiTDor
... you can also use some scripting to parse a structured format like a proprietary XML file and transform into a TM/TD
... best is to get it directly from the manufacturer

#### AI Usage

sk: You can use AI as well but the trustworthiness is a question. Mahda will get into this in her presentation.

bf: About creating TDs, we took a different approach. Adapters in WebThings can be used to generate a TD. The work of Mahda and Ege to put guardrails is interesting. However, just generating the TD using LLMs is not deterministic.

jk: We are working with AI as well. It is not possible to handle long TDs manually anyways. However, we are building the infrastructure with versioning, PR creation, atomic TMs for simple things that anyone can use etc.
... governance and giving responsability to different stakeholders
... also the underlying semantics need to be managed so that the TD looks simple.

ek: Generation of TDs via online browsing. That works for some protocols that allow browsing. Still you may want to enhance it, thus doing offline engineering.
... TM governance and infrastructure for setting this up.

de: we are developing the infrastructure for the manufacturers to provide the TMs; create UML sequence diagrams  to avoid reading human readable text etc. 
... we can generate TD from the sequence diagrams as well
Usage of own ontology via MCP server handling "flat" TDs

ek: so everyone calls a pump a pump?

de: oh it is a big topic. there is a pump, distributior point, fueling position etc.; create also conformance reports via agent; re-doc / re-docly
... now the tooling slope is much less steep compared to a while ago
... TDs are iminently understable to a bot. that is very important.

rw: can use LLMs to reverse engineer wire protocols
... authorship of TD: should be manufacturer

ek: but there is a programmer (for PLCs)

sk: just applicable for basic, default interfaces but not the program itself

ek: SSL for manufacturer in general

jk: When I came to WoT last year. It is fantastic that they are in JSON-LD. You can expand a TD and check against the constraints in an ontology.
... e.g. tubing of a milking machine can be tested against materials used to build it
... was the expectation but didn't work out
a deeper correctness notion for a TD would be appreciated

sk: just to recorded for the TD itself

mn: could talk about it in the toolchain session / roundtripping

jk: matters for the LLM

ka: we should revisit the deliverable with guideline and start a repository with all these ideas. We should collect these ideas on that repo.

bf: the discussion point so far was about generating TDs. That needs to be done once or very few times.
... Consumption of WoT even more interesting via LLM, e.g., instead of using Anthropics MHS

sk: MHS is doing what we already have, didn't advertise yet, but should point out in our new guidelines to implement physical AI via WoT, will make a proposal later

bf: W3C strategy mentioned MCP as an example to bring people into W3C

mn: WebMCP people were discussing about how to make existing implementations AI friendly, we might also do this in our AI-WoT best practice document
... We should make sure that our specs are easier to understand by the AI
... built a skill to create TD and corresponding binding; should be provided to WoT users, then AI has direct access
... then we provide basic tooling but leave the responsibility to the user
... simple but useful and promotable to attract more WoT user

dr: Is an opportunity for this group to promote WoT via the AI "hype" maybe using WebMCP polyfill

sk: Does providing prompt patterns make sense?

dr: Yes, prompts for creating and critisising TDs

de: Make use of MCP resources; WebMCP excits because it can include already existing web pages without creating new resources

ca: Supports the AI direction just discussed; skill good thing for newcomers; line between skill and MCP blurs
... low hanging fruit -> skill for local use
... MCP valid alternative for chat based platforms like Claude Code and non-local resources
... let's create skill for TD creation / validation / ...

ek: Should differentiate between TD and spec understanding; can only provide tools for spec. understanding

mj: Need some helpers for AI agents to be better aware of WoT specs.

mn: Good TD design needed for AI usage but also knowledge of specs necessary; pre-defined prompt as guidances for, e.g., understanding what a Modbus binding is about

dr / ek: How to publish this?

mn: Distribute on MCP tooling server. 

ek: But how to publish?

cr: Already scripting API types. Can do it the same way.

ek: Distribute skill registry via package manager and dp & cr. Or W3C has to manage distribution channels.
... Difficult to put the "W3C" label.
... Might be a trust issue. W3C is not just publishing specs then and not, e.g., npm packages.

rw: W3C server could do the job?

dr: W3C ownership, WoT group responsibility

ek: Still a gap at W3C. It is more than specs. Currently cr & dp are doing this.

ka: Basically, I agree with you, Ege
... We are already using third-party resources, e.g., github.
... Talk about our required resources first, and then discuss where /how to manage the required resources next.

ek: We distribute more the HTML based specs.

ka: We don't have to publish all our required resources as an HTML document
... however, we should list all the resources about WoT somewhere
... and possibly we can publish a list of all our resources as a group Note so that everybody is aware of all our resources and how to handle them.

de: Agentic Web people might help and we could require changes.
... When we do WebMCP correcty we might have a solution.

eb: Skills more important than MCP

jk: If AI resources are easy to find by LLMs, usage will increase

rw: Content negotiation

dp: Should kick off discussion about package management, but might be cumbersome, much easier when acting as individual

ek: Putting resources on a web server doesn't mean that agents will find it

mn: TDs can have lots of properties but using all or converting them to tools will overblow the context -> let's think about a way how to organize properties into tools -> maybe group via @type
... rather offer this to people than letting create it our their own

rw: Confused about JSON-LD context / RDF / Agent context
... e.g. collection of all lighting objects -> how to organize tools?

mn: Should go into the "best practices for AI usage in WoT"
... Invocations on gateway but not all exposed to the context window of the AI agent -> @type tells how tool calls are related

rw: details are important

mn: tell agent what is important and how to group

ca: grouping is also required in managable affordances, proposal there -> mn please have a look at it
https://github.com/relu91/wot-thing-description/blob/3bb0b18905c7e8a09e3a3878cff3fb47ef1173eb/proposals/manegiable-aff-data-mapping/proposal.md

mn: e.g., "forms" part not necessary

FYI: LLM usecases in last year's TPAC plugfest
-> https://github.com/w3c/wot-testing/blob/main/events/2025.11.Kobe/TD/Hitachi/2025-11-12-Plugfest-outcome-ktoumura.pdf

[lunch till 1:45pm]

Scribe: Robert

### WoT Primer and Best Practice Deliverable

#### Outline of the paper is reviewed. 
* How to use the semantics?
* Getting started
* Creating Descriptions in Practice
* WoT and physical AI
* Application Patterns

#### Feedbacks from the audience:
Daniel Peitner: Perhaps two documents: Primer (Getting Started) and Best Practices

Ege: Much of this is already within the document. Tutorial already exists in the community group and architectural document. Previously Linting was looked at and might be a good idea for AI. 

SK: We could use the current landing page that contains all of this as a landing page and then move the content to new documents that look more official.

Erich: Could have an official W3c documents and just use notes / draft that are updated using github. 

SK: Notes are easy to publish.

Erich: Automation is key to keep things fresh.

Ege: If you want a developer tutorial, the W3c style does not work.

SK: We should provide trusted sources on the document without dueplicating old stuff. The AI stuff is what will be important.

SK: We need a new task force to get involved on this projects.

Erich: My biggest block to adoption is the lack of wot files. We could push the manufacturers by asking them to review. 

Ege: Push it to the ecllipse library,

Rob: I agree with asking manufacturers.

Erich: I have tokens to burn. Let's host all wot files on our own repo.  

Ege: Hard to do

Dave: We can fix that.

SK: We will close discussion on this since we have a rough discussion on this.

Scribe: Sebastian
### TD task force discussion
--> <link to the slides>

EK: plans for today: Summaries of the TD work, Specification Toolchain (Mahda), TD roadmap, Data Mapping

... tomorrow, we do an outlook

EK (slide 4): TD spec gives core information

... and explains Binding mechanism and extends different bindings

... binding registry has an overview, what kind of bindings exists

EK (slide 7): there is a work item planning page at github and on overview of the achitecture specification assertions
-> https://github.com/w3c/wot-thing-description/blob/main/planning/work-items/README.md work-items

EK (slides 8-10): We working on Common Definitions

... I already showed this morning

... we have examples for simple and complex use cases

SK: how often complex forms will be used?

EK: Siemens have examples, like Modbus and BACnet the same time. ECHONET as well.

KA: for dynamic selection of the expected multiple protocols. right?

EK: right

DR: how do organize the version of the bindings?

EK: this is not solved yet. Will be a topic for tomorrow.

EK (slide 11): there is work on Data Mapping

... Christian will in more details on this later

EK (slide 12): Media Streaming

... 

EK (slide 13): There are core design challenges

... we have discussions on the fundementals of the TD like subprotocols

... also discussion on readOnly and writeOnly

EK (slide 15): News in bindings

... HTTP binding will not part anymore of TD

... Modbus has also now zeroAdressing

EK (slide 16): We new Bindings 

... LoRaWAN, EtherNet/IP, S7Comm, ...

EK (slide 18 - 21): the registry is just a table

... like IANA

... draft already published

... table entry includes name, link to the specification, ...

... we allow SDO to publish bindings, however, they may not open source

... we have also number of rules

KA: you'd like "support" here, but what kind of support?

EK: new PRs! both good number and quality of the PRs expected :)

SK: is there a way that not existing binding can be announced and others may contribute is?

EK: not addressed yet, but we have an issue about this

-> https://github.com/orgs/w3c/projects/222 WoT BInding Registry Project to manage the progress

### Toolchain Progress & Timeline

--> slides XXX
--> https://github.com/w3c/wot-thing-description-toolchain-tmp Toolchain repo

MN (slide 2): we have a Toolchain that address all TD generation artifacts

... we have different ontologies like TD ontology, data schema ontology, etc., currently not all in the generation

... the generation pipeline does the LinkML Resource Generation and Snipped 

<Mahde showing the source code of the toolchain>

JK: we have setup a toolchain for Thing Model and Thing Descriptions. I think we have something similar

MN: if you want to contribute to the TD spec, you need to use the LinkML toolchain

... the JSON-LD context is not finished yet. 

... there is a glossary that covers the terms that are important

CG: this is a huge work, I think it would be good to have more support to it. Maybe Johan can contribute?

MK (slide 4): there still open topics open

... who can contrinbute to this?

... github pages of the resources
-> https://github.com/w3c/wot-thing-description-toolchain-tmp/issues/43 Issue 43 about the GitHub Pages

... maybe Dave Ragatt can support here?

DR: please send me an email

MN: we need also support on generating ontologies, JSON-LD context round-tripping, SHACL shapes. Maybe someone from DNV can support here?

MN (slide 5): Timeline

... we are in a state that we are more stable

... plan to integrate the toolchain between 15.11.-1.12. in the TD repo

... 15.12. a documentation will be published

... from January on, I like to integrate the protocol bindings like Modbus, MQTT, ...

... the protocol binding ontologies are not resolveable, should be fixed asap
-> https://github.com/w3c/wot-binding-templates/issues/474 Issue 474 - Publishing Ontologies and Context Files

SK: should be then solved when we publish all bindings as Note

RW: I can support here about the topic about the versioning

EB: is this the same problem in the OPCF? Must the protocol owner host the OWL file?

SK: yes, we are working on that. 

EK: not the protocol owner, but the owner of the specification binding 

KA: just to make sure, we'd like to apply this toolchain whenever we update the Editor's draft, e.g., when we merge a PR. right?

EK/MN: yes

[Break till 16:45]

Scribe: Dave
### Maritime Linked Data - schemas and ontology for interpretability (Johan, DNV)

See slides: https://github.com/w3c/wot/blob/main/PRESENTATIONS/2026-10-tpac/20261027T161124--maritime-linked-data__itxmaritime_wot.html

ITxMaritime is a collaboration modelled on ITxPT (public transport) for data exchange, e.g. ship to shore.

The ability to move information acts as a bottleneck.  The Web of Things looks very promising in fixing that.

In particular to exchange schema for semantics. 

Sebastian: I am not aware of alternatives to WoT that support semantics with IoT.

We don't (as yet) have thing models or ontologies for our domain.

We want to develop maritime linked data (MLD) building upon the Web of Things.  A library of afforances and thing models (TDs).

Work on the MLD ontology has started, based upon OWL 2 DL.

Ship owners are enthusiastic in the potential for ontology-based ship models.

[diagram depicting an ontology core]

Four distinct approaches: physical quantities with units, or low/med/high, normal/abnormal, running/stopped.

Mateusz introduces the web-based tools DNV have been developing to support this. He shows an example TD schema.  These tools are not yet publicly available.

Demos importing a repository.  Talks about process for pull request approval.

Kaz: wondering about the history capability, is this using GitHub?

Mateusz: no. This is like a workspace.  We allow users to roll-back their changes.

Kaz: what is the unit of roll-back, each commit?

Mateusz: yes

Ege: please explain what you mean by "ship position"

Mahda asks about "ui-group"

Position is expressed in terms of an object with properties including latitude and longitude.

Johan talks about options for defining position with reduced accuracy or frequency of update.

We plan to use decimal numbers for  latitude and longitude.

Kaz asks if they handle heading direction of the ships as well like OGC's GeoPose, and they said yes.

Ege: it would be good to see examples of compositional TDs using imports.

Example of a fuel supply monitor folllowing international maritime standards.

Mahda asks about how they handle datatypes, e.g. complex (i.e. structured) types

Johann: we use a schema to keep things consistent

Ege: ontologies allow for composable modules

Johann talks about the difference between schemas and ontologies. They cover different aspects.

People want to work on schemas before the ontologies

We also use "skills"

David: We have 1200 definitions for various things for an ontology within Conexxus. We've found it useful to have overlapping definitions using a vector database. This helps with critiquing proposals for new related concepts.

Phillip talks about discovery with a thing descreiption directory. An example is when you need the speed through water from a given ship.

See slides: https://github.com/w3c/wot/blob/main/PRESENTATIONS/2026-10-tpac/Maritime-Interoperability-2026-10-DD-WoT-TPAC.pptx

[shows a dashboard with some simulated data]

This uses SPARQL

He then shows an example dialogue with an LLM that can access the data sources.

This, for instance, can be used to display charts for data over time.

Sebastian asks whether DNV is using a TD directory

[answer: DOMUS]

Sebastian provides a summing up, e.g. a great use of WoT, and a very warm welcome, and invitation to submit feedback and requests for changes in your contributions to the WoT WG.

A warm reception from the maritime community. A feeling that the time is now right for semantic based approaches.

###  WoT Scripting (Cristiano and Daniel)

see slides: [insert URL here]

Last publication of the scripting API was in October 2023

Slide on `ActionInteractionOutput`, which covers cancelling asynchronous actions

Support for error handling `InteractionError` derived from DOMException. This allows for additional diagnostic information. Describes the error and response handling flow.

Ege: the scripting API is the only place we where talk about how consumer applications are built. This helps us to identify usability problems with the TD spec.

Kaz asks about the kinds of errors and the means to add new ones

-> https://w3c.github.io/wot-scripting-api/#the-handle-interaction-error-response-algorithm 7.5.2 The handle interaction error response algorithm

Cristiano recommends following the platform's style of errors

Mahda talks about errors in node-wot, and praises the work on the scripting API

Sebastian: We will continue this session tomorrow as we need to free this room now.  We start again at 8:30am in a different room 2nd floor room 6, then Sail on the ground floor

[Note on the Day 2 meeting tomorrow]
* 8:30-9:30 Media for WoT breakout (at room 6 in Dublin): 
  https://www.w3.org/events/meetings/a70e4c41-5f8b-4b82-9fb6-d845a38f648c/
* 9:45-17:30 WoT F2F Day 2 (at room 5 in Dublin: 
  https://www.w3.org/events/meetings/1b9a6022-f15a-4a63-9918-e76c21f465eb/
