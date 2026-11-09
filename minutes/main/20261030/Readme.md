# WoT F2F Day 2 Minutes 30 October 2026

## Agenda:
https://www.w3.org/WoT/IG/wiki/Wiki_for_TPAC_2026_planning#F2F_Agenda_.28Thursday_.2F_Friday.29

## Minutes

### Media for WoT Breakout@Room 6 on the 2nd Floor (8:30-9:30)

**Breakout Proposal:** https://github.com/w3c/tpac2026-breakouts/issues/85

Present
Kaz Ashimura
Kensaku Komatsu
Nanaaka Kido
Kunihiko Toumura
Yohei Sonobe
Noriaki Matsumura
Chris Needham
Emma Horrell
Wolfgang Schildbach
Sebastian Kaebisch
Matt Reynolds
Koichi Moriyama
Rob Smith
Naomi Yoshizawa
Hiroshi Ota
Michiko Kuriyama
Ege Korkan
Robert Warrent
Mahda Noura

Remote:
Bernd Czelhan
Tomoaki Mizushima
Miriam Fukushima
Fredrik Solenbert
Daniel Peintner
Ben Francis
Iris Johnson

Chair: Kaz

Scribe: Chris

#### Opening - WoT in a nutshell
-> slides (TBD)

Kaz: I'll introduce WoT for media people, and we have some proposals from Rob and Ken, and Toumura-san.

... There are IoT silos, too many standards in different ecosystems. We try to solve this using WoT mechanisms.
... Device capability description, based on properties, actions, and events.
... We refer to outside schemas and ecosystem-specific ontologies
... We use JSON-LD serialisation. @context refers to the schema, @id identifies the device
... There's a human readable name and description for comments
... It can use OAuth2 or bearer tokens
.... The actions section defines what can be done, e.g., toggle a switch
... Events can be sent from the device
... WoT binding allows interconnection across IoT standards and protocols
... WoT connects IoT standards with the web. Now, we think about how to integrate browsers and media streaming
... Camera outputs

#### WebVMT - Rob Smith
-> https://www.w3.org/2026/Talks/TPAC/webvmt-use-cases/ Rob's slides
Rob: I'm involved with GeoPose at OGC, and MEIG at W3C for video, and WICG DataCue for timed metadata.
.. I lead the development of WebVMT - video map tracks, and now has a broader scope: video metadata
... Video files can have 3 types of content: the video itself, audio, and other related data
... This could be brought in from any source. You can have multiple streams of each type
... We synchronise together the video, and audio and metadata. WebVMT does that for the web
... The video time increases monotonically, and avoids ambiguities like leap seconds
... An epoch allows you to reference a time and date
... Video files are large and complex, many different encodings. It makes it difficult to access the metadata in the video files
... It requires browser support. Browser video support is mature, but less to for metadata
... Subtitles are well supported in WebVTT
... WebVMT adapts this for timed metadata using HTML cues
... You can export the metadata to a VMT file. The format is based on VTT
... It's agnostic of video encoding
... A cue has a start time, end time, and content
... For timed metadata, we want the data in its native form
... This integrates with DataCue, which has a type to identify what the content is
... We support text formats, like JSON or XML or RDF, and binary formats, MISB, GPMF, and proprietary formats
... Also global metadata, with persistent cues that describe the whole file: the make and model of camera, for example
... Cues can be synchronised in the browser. Cues exist on a track, and give an instantaneous snapshot. Or cue events on enter and exit. It's all accessible in Javascript
... There's a draft W3C Note. The latest change is negative cue times, for information before the start of the video
... We're preparing an updated Note, to be agreed at the Spatial Data on the Web meeting today
... webvmt.org has an overview and demos
... There are engineering reports too, and guidance for getting started
.... There are GitHub repos, and a Community Group for reporting problems
... Dashcam analysis example, vehicle collisions. We can identify events from spikes in the accelerometer data.
... You can nagivate to the relevant part of the video file
... Media metadata, a playlist, and static and dynamic metadata. Title, description, image thumbnail embedded in the VMT file
... Dynamic content, simple numbers from 0 to 100. They have a type to distinguish between them.

#### Real and Virtual Orchestration / Entertainment on top of Browser - Kensaku Komatsu
-> Slides (TBD)

Ken: I'm chair of the Sync on the Web CG
... I'm thinking about how to orchestrated devices with video content on a timeline
... I'm working with WebVMT. I'll show a demo and present study results

Nanaka: We'll demo how to synchronise the video and robots
... You can see the DMX lights and the robots move in time to the music
... How does it work? We made a VMT file including metadata for the robot and the DMX lights
... The signal is sent to the devices using the Web Serial API and Web Bluetooth API

Ken: This is a small step over our previous demo, but makes a big difference
... There's a gap in the Web Serial API. To identify the robot, Web Serial API only has productId and vendorId which makes it hard to select the robot
... Web Serial API needs permissions. Accessig the device requires user permission
... Web Bluetooth API has ID and name properties which identify each robot. So there's no gap with Web Bluetooth
... I've raised issues
... We can describe the device in JSON format. To control DMX devices we need to send binary data using Web Serial API. This needs a driver to convert the data to binary format
... The driver is in JavaScript. To make a universal solution we need a standardised way to create such a driver
... I've disucssed with Kaz. An option could be a WoT binding. That's our current idea.
... In the robot use case, some devices have a delay between the signal and real motion. We need to calculate the calibration. I propose having a time-shift control attribute. WebVMT is used in a <track> element in HTML, add a timeShift attribute.

Ege: Are the polyfills packaged in the VMT file
Ken: No, they're in the browser via a <script> tag in HTML

Wolfgang: What is the proposal: a file format, a playback API, etc?
Kaz: WebVMT is a proposed format for time synchronisation and metadata. Ken's proposal is based on that format. We can think about connections between WoT and web browsers.
Wolfgang: ISOBMFF has all this already, I don't see need for the WebVMT.
Sebastian: I wouldn't use a driver approach, it doesn't scale. Each device needs a driver. WoT is smarter, you usually only need a Thing Description, how to interact with the device. You need business logic to interpret the TD, but you just need that once. The JavaScript implementation has the bindings, that just needs the TD to interact with the devices. Have a single access point to the device using a WoT stack.
Rob: WebVMT is here for the synchronisation with media. The robots are synchronised to the video content
... Regarding the driver, I think Ken was trying to abstract it so it works for other devices. We could have passed through WebVMT straight to the device.

#### Media Streaming in Thing Description - Kunihiko Toumura
-> Slides (TBD)

Toumura: WoT describes interaction with media by properties, actions and events. Request/response pattern, HTTP GET. Media streaming is different, data excanged over a separate conection from the request. Multiple tracks can be in a single connection. We also need to establish conection, e.g., stop or resume the stream.

... At this year's TPAC plugfest we used MediaMTX as a case study to look at how media streams shuoldbe described in a TD.
... Send and receive video using MediaMTX. The consumer is a browser application. It collects the TD of nearby devices and collects them into an application
... The consumer selects the endpoint, e.g., MoQT, WebRTC, etc.
... To build a consumer, what kind of information should be contained?
... [Demo of a TD for a camera]
... [Example TD]. It describes and audio/video stream, video and audio codec information, and the protocol: MoQ or WebRTC. Also processing delay. Receiving video can be described using a readOnly property
... We're investigating how to control the connection, using actions.
... To stop the stream, How to link the existing connetion to other interactions
... A unidirection stream can be described as a property
... A URL alone isn't enough. WHIP, WHEP, HLS all use URLs, need to distinguish between them
... Other media specific metadata is useful, e.g, encoding, resolution, frames per second
... We can use vocabularies from Media Capabilities, WebCodecs Codec Registry
... Media vocabulary, in the next TD standard. Media-specific, frame rate and delay, and protocol specific. We want to discuss the direction based on use cases
... I'd like to discuss concrete use cases

Kaz: Rob and Ken's presentation related to browser as WoT consumer, and devices to be controlled

cn: I see three different class of use cases here
... One is browser based interaction and playback, as Rob and Ken describe
... Second is the exchange of video/audio data via devices, where Toumura-san proposed how to deal with that
... Third is similar to protocols like DLNA where you have a media server and a catalog of content and you can select what to play and  send commands to handle media streams, like play, pause, rewind
... if we think about 2nd level of UCs to handle devices
... need to think about video rate, etc.
... interesting to define the context for vocabulary
... is there any existing vocabulary for this direction?

sk: there is a need for specific term for video handling
... probably not within the TD Core
... but some external ontologies
... based on the media use cases
... do you see we need some possible core bocabulary as well?
... maybe context extension?

kt: can be expressed by an external ontology mostly
... but possible actions for abstract control to be considered
... as part of the TD Core

ws: media using the Web or RTC, or MPEG DASH. Each has defined vocabularies already that are sufficient for their needs.
... I suggest not to duplicate vocabularies
... The question is then what does WoT need that isn't in the existing protocols?

Kaz: That suggests the need for a survey, and we may need MEIG help

Ege: The use cases are different, and orthogonal. The first and second Chris mentioned are orthogonal. If the devies also produce media streams, e.g., a security camera with pan and tilt, it has more classic WoT actions.
... The actuation of devices isn't media specific, this is where WoT becomes more relevant

Ben: Reiterating Chris and Ege, different use cases. Browser based and protocols. Do TDs fit in the robot use case?
... This is based on JavaScript in the browser. TD is designed for devices on the network, two different worlds. I'd maybe use a WebSocket connection to talk to the robot. Web Serial and Web Bluetooth are browser based APIs. These are two separate worlds
... We've done work on describing things with pan and tilt.
... There's an interesting discussion to be had about URIs

Ken: From the developer point of view, sending data to the devices, my model is coming from the browser. Just send a signal, and the framework has an adapter. I think it will be abstracted. If it can support networking and directly connected devices, it's interesting

Ben: We currently use URLs, but there are ways to solve that in a browser

Kaz: Ken could think about that in the CG

...Thank you to all presenters and participants.

[Breakout session Adjourned]

----
### WoT F2F - Day 2

The following session will be held at tge Sales Suite on the 2nd Floor (9:30-17:30)

Present:
Angel Li
Sebastian Kaebisch
Johan Wilhelm Kluewer
Dave Regett
Mahda Noura
Ege Korkan
Kunihiko Toumura
Kaz Ashimura
Robert Warren
Noriaki Matsumura
Yohei Sonobe
Philip Tronstad
David Ezell

Remote:
Daniel Peintner
Tomoaki Mizushima
Ben Francis
Tetsushi Matsuda (ECHONET)
Christian Glomb
Michael Koter
Cristiano Aguzzi

Guests from JSON-LD:
Benjamin Young
Niklas Lindstroem

Chair: Sebastian, Kaz, Michael

### Visit from the AB to collect feedback on the process document (Angel Li)
Scribe: Robert

Angel asking for feedback about process, culture and anything else. 

Dave (DSR) speaks about the notion of registry and how the groups' view differs from W3C.

Sebatien (SK) asks whether the bindings are registry items or recommendations or notes. There are too many documents that need to be published often but that are normative. Angel you are asking for a lightweight normative documents.  

EK: it has taken two years to get here.

SK: REgistries are already creating their own process documents. Review of charter is taking issue with the normative items innotes. We need a new process.

EK: REgistry has benn added recently, but has no data about how to handle registry entry. We are struggling with using the note to document the registry.

KA: In short, the description about Registry Track within the W3C Process Document is still vague and unclear for WGs who're using it
... specifically, how to deal with the description for each registry entry referred to from the main Registry Track document is unclear
... (I personally think we should define "Registry Entry Document" as well as the "Registry Track Document")
 
 Angel: is this a comment.
 
 Ege: Yes, this is comment.
 
 Angel: Can I please have a link? 
@@@

EGE: I want action on this issue.

Angle: I will bring this back and report back to sebastian.

###: WoT Roadmap I / II (Sebastian/Ege)
Scribe: Kaz

-> slides @@@

sk: (shows the timeline from the new Charter)
[[
    
June 2026: First teleconference
July 2026: Initial contributions for Binding Registry entries
October 2026: First face-to-face meeting (TPAC 2026, Dublin, Ireland)
Q4 2026: FPWD of WoT Thing Protocol
Q4 2026: Publication of HTTP Binding as a Note
Q4 2026: Publication of MQTT Binding as a Note
Q4 2026: Publication of Modbus Binding as a Note
Q4 2026: Publication of BACnet Binding as a Note
Q4 2026: Publication of CoAP Binding as a Note
Q4 2026: Publication of PROFINET Binding as a Note
Q4 2026: Publication of LoRaWAN Binding as a Note
Q1 2027: WD of Thing Description 2.0
Q1 2027: Publication of Binding Registry as a Registry Draft
Q2 2027: Candidate Registry Transition of Binding Registry
Q3 2027: W3C Registry Transition of Binding Registry
Q3 2027: Updated publication of Scripting API as a Note
Q3 2027: Updated publication of Use Cases and Requirements as a Note
Q4 2027: Publication of Primer and Best Practice as a Note
Q4 2027: CR Transition for Thing Description 2.0
Q1 2028: Updated publication of Security and Privacy Guidelines as a Note
June 2028: REC Transition for Thing Description 2.0
]]

sk: (updates the schedule based on the TF Leads' reports)

bf: Q4 2026 => Q2 2027 for FPWD of WoT Thing Protocol

sk: Q4 2026 => Q4 2026 HTTP Binding as a Note

sk: what about MQTT BInding as a Note?

mn: toolchain to be included in December

sk: would publish the bindings shortly...
... let's see the TD publication then

ek: need to see an Issue
--> https://github.com/w3c/wot/issues/1334 Issue 1334

sk: Q1 2027 => Q1 2027; so ontrack

sk: what about Binding Registry?

ek: Q1 2027 => Q2 2027
... Q2 2027 => Q3 2027 CR for Binding Registry
... Q3 => 2027 => Q4 2027 W3C Registry for Binding Registry

dp: Q3 2027 => Q1 2027 updated Note for Scrpting API

sk: use case?

tm: Q1 / Q2 2027?

ka: do we have a dedicated UC TF for the WoT WG???

ek: yeah... should have but not active

sk: at least listed on the Charter

ka: before talking about the schedule, we need to relaunch the UC TF...

sk: Primer and BP?
... Q4 2027 => Q1 2028

ek: maybe we don't need to put timeline to some of the docs

ka: that's possible but we still need to put all the documents on the table

sk: who would like to work on the Primer document?

rw: can help though not 100% sure about the procedure

sk: let's see the Binding Notes
... MQTT: Q4 2026 => Q1 2027
... Modbus: Q4 2026 => Q4 2026
... BAnet: Q4 2026 => Q4 2026
... CoAP: Q4 2026 => Q4 2026
... PROFINET: Q4 2026 => Q1 2027
... LoRAWAN: Q4 2026 => Q4 2026
... let's put controbutors names to each doc as well
... (adds another column to the timeline table, and adds contributors names)

ka: maybe we should rivisit the contributors column later today

sk: right, since we're getting out of time now

### Liaisons (all)
Scribe: Robert

#### Latest status on OPC UA (Sebastian, Erich)
skipped

#### Latest status on Smart City (Michael/Kaz)
-> https://www.w3.org/2026/10/28-smart-cities-minutes.html minutes from the Smart Cities 
B/O

KAZ: Had a good dicussion with related SDOs like RP1, ITU-T, SBCO and ECHONET about their work
KAZ:There will be an IG call in the next calll next month.
KAZ:Getting contributions from them to update the landscape document.
EGE: What is the plan about the deliverable
KAZ: finalize the Landscape document
... need to send the new charter to the AC Review as well

#### Latest status on ECHONET (Matsuda)
-> Slides (TBD)

MAT: Participated in the plugfest. We developed the API and the standard and will discuss the web api.
The update since 2025. Name changes from "Echonet Lite Web API" to "Echonet Web API". New devices descriptions have been created, A study process on the application of AI to Echonet API.
Device descriptions are serialized with JSON, basic data model is proterty, action and event.
Only HTTP protocol binding. Devices can be groups. 
Only devices that implemet actions execute actions on groups; no scripting specification.  
MAT: Current system does not support historical data access.

[Break till 11:30]

### Spatial Data on the Web and WoT (Rob Warren)
Scribe: Dave
[slides by Rob Warren]

Rob describes his background, including the factoid that he lives on a farm.

Keeping an eye on things in his farm is challenging on account of its size. It takes a long time to reach some parts. 

More generally, there is a vast amount of data to deal with. I am enthusiastic about semantic approaches to describine sensors and their context, e.g. location.  He then talked about the Spatial Data on the Web group which is co-run by W3C and OGC.  Lists some of the main work items and their status.

SOSA (semantic sensor ontology) 2023 edition about to be released. Alignment with WoT underway. No notion of wire protocol.  Mapping to Product Information Sheet (PROV/ GS1). Extensive suite of examples.

Some sensors have a lag in the values they measure, is this covered by SOSA?  [Yes, at least in part]

Talks about OWL Time, Mahda asks about recent changes to the ontology. You can cite year without the date.

Talks about GeoSPARQL.  Locations can be described symbolically without an explcit binding to a location. A given location may have different names for different users.

Some older locations have changed e.g. due to continental drift (4m for parts of Australia). GeoSPARQL includes support for uncertain descriptions, e.g. terms that don't have a precisely agreed definition.

Rob Smith talks about WebVMT (web video map tracks format).  Support for synchronisation and interpolation. The editor's draft is a live document, unlike the static group note.

SPARQL allows for queries using partial information.  He talks about historical artefacts in museums. Rob prefers full ontologies to limited vocabularies,  along with the need for precision and accuracy. He emphasises the need to keep the original strings for numbers as this avoids loss of precision cues.

Datasets with billions of datums become tricky to search, you need to know what you are looking for. We need to consider how we manage and support large datasets.

Sebastian: For the farm, couldn't you use drones to view remote sensors.
Rob: that defeats the real purpose.
Ege: mobile scanners (e.g. drones, dogs) can bring passive devices online in a sense.

Rob: now is a good time to demand extensions to the specs.
Kaz: I am involved with work on smart buildings, where standards need improving.

Mahda asks about where to find alignments between ontologies. [GitHub]

Log trails are helpful to track which versions of data you're using.

Role of negation as failure to find a match.

Discussion on context attributes, e.g. water temperature at a given depth and location.

Talk about a registry for such attributes as a basis for shared understanding.

Rob Smith: question of how specific the attributes are. This is open to misuse.

Dave: need for metadata on who defined a given attribute.

https://github.com/w3c/wot-thing-description/issues/1001 
https://github.com/w3c/wot-thing-description/issues/1002


### Thing Description (II / II) (Ege / Michael / Mahda)

Ege we don't have time to cover everything I want today.

Rob Warren: I would like to know who is responsible for what.

Slide with things that need to be done. Plenty of items with no one yet responsible.

The Toolchain is in good shape.

Asks for volunteers to unassigned items.

Kaz can work on security and possibly [inaudible]

Rob Warren offers to work on historical data.

Erich asks Kaz about Mitsubishi ...

ACTION: Kaz to look into Mitsubishi PLC a bit more

Sebastian: put me down for publication of protocol bindings.

We need experts for reliable bindings.

Erich talks about the queries that are most popular in different sectors.  A vendor neutral solution is frequently asked for.

Ege: help with security and scripting would be much appreciated

#### Data Mapping (Christian Glomb)
-> https://github.com/w3c/wot-thing-description/blob/main/planning/work-items/analysis/data-mapping/analysis-data-mapping-summary.md Data Mapping analysis document

This relates to the mapping from device data to what's needed by applications.
Scale & offset, packed structures, protocol specific codes, etc.

Some partical solutions are available. Related terms exist but live on different layers.

How can we bridge this gap in thing descriptions?

Problem of rounding  and truncating issues during conversion

Asks what if fixed primitives are not enough, suggesting the need for representing a formula or algorithm.

(Dave wonders about the Latex strings widely used in scientific and engineering papers via markdown).

Kaz: please clarify terminology.
Ege: the wire format is what we get via the protocol binding.

Christian presents an example with many boolean flags that describe how to extract values from the data stream.  There are a lot of extra terms we could introduce, but probably doesn't make sense to include them in the TD core.

Johann: not obvious where the responsibility lies for maintaining the related ontology and registries.

Daniel asks question about a specific example.

Kaz we can think about the details later ...

> https://github.com/w3c/wot/blob/main/PRESENTATIONS/2026-10-tpac/2026-10-29-WoT-TPAC-Glomb-Data-Mapping-Analysis.pdf

[Lunch till 14:00]

### Joint meeting with JSON-LD WG ( Benjamin Young / Nicholas Lindstrom)

Scribe: benfrancis

sebastian: We have a guest Benjamin, Chair of the JSON-LD WG.
We would be very interested in the latest status, e.g. CBOR-LD. Potential relationship to Thing Description, which is based on JSON-LD. Also insights regarding Verified Credentials.

Nicholas Lindstrom - JSON-LD.

Benjamin: The JSON-LD Working Group was re-charteded in January for two years so already half way through but planning on extending it because there's a lot going on. Five deliverables. yaml-ld 1.0, cbor-ld 1.0, JSON-LD syntax, API and framing. Last two have 2 versions we want to ship. 1.2 Errata bugfix release, internationalisation built on work from RDF WG. Then JSON-LD 1.3/2.0 which will bring in the rest of RDF 4.2, leading to ratification etc. YAML-LD is exactly what it sounds like, JSON is a backwards subset of YAML. Technically every JSON-LD document is also a YAML-LD document if you squint. Have to use a YAML parser to avoid "Norway problem". 1.2 fixes this. Goal was initially human redability but now agent readability - agents love Markdown and YAML. Small context frames, words that are close together. Fully expanded RDF is bad for agents, putting it through a JSON-LD context file you get smaller words. YAML-LD allows using the same plumbing. People already using it for these use cases. JSON doesn't have comments, YAML does.

Mahda: Converting between the two is easy?

Benjamin: Yes, balloon YAML at parse time and then converted into JSON-LD. Hydration happens before it hits the JSON-LD parser.

ege: multi-doc?

Benjamin: For 1.0 YAML-LD we don't handle multi-doc.
YAML-LD going to CR by the end of the year.

CBOR package is just a bunch of numbers, long URLs become numbers rather than short strings. Semantic compression in CBOR-LD, can take any JSON-LD context file and compress it down exponentially more than just converting to JSON-LD. If you have a constrained thing like a TD you can add even tigher compression for known patterns, so could be a good fit for constrained devices. Immutable contexts, identifier for contexts permanent. Take it into CBOR-LD implementation forever. E.g. verifiable barcodes - need context file and CBOR registry, don't want that to change for security reasons. If you need to change what's in the credentnial you want to fix it in time with different identifiers. Has been a problem with JSON-LD for a while. schema.org just has schema.org and it never changes.

Ege: First version of the TD spec, we say you shouldn't fetch context files. Almost an attack vector.

Benjamin: Yes that has been claimed, attack vector, but obvious thing is to download it once and keep it. We're fixing that in the spec to make it more obvious because implementations were doing it wrong. Shouldn't fetch the contexts in a production environment.

Nicholas: JSON-LD applicable to lots of different use cases and contexts. We would like to make sure hashing(?) is more explicit. With schema.org the consumers are basically the same people writing the context which is a bit different.

Good to know that JSON-LD is an RDF syntax. Has a compositional logic background, usable in a symbolic logic space.

[shares slides]
-> https://niklasl.github.io/rdf-docs/presentations/TPAC2026/RDF12-JSON-LD/ Slides

Shows example of RDF and JSON-LD documents which mean the same thing.
JSON-LD.

JSON-LD 1.2 and JSON-LD 1.3 new features.

Mahda: Language tags, we need that.

Nicholas: Thanks to Gregg Kellogg and Pierre-Antoine Champin for their work.

RDF 1.2 has a @direction feature like the HTML dir attribute.

RDF annotation.

Property graphs can have two edges with the same label, not representable in the triple substrate of RDF. This design the blue arrow [in the diagram] is a predicate. If you merge data from different data sources with different models...

JSON-LD aspect [shows RDF triple and representation in JSON-LD]. Can also define aliases for @id, JSON-LD is shrinkable in that way.

Annotation sugar - @annotation keyword allows for different design choices. In various JSON APIs there is no specification for data structure, this design is not as common as you might expect.

Mahda: This is for when you have a node, refers to a blank node, this node refers to another node, design an annotation on it, right?

Nicholas: Yes, the blank node is an annotation. Can also name the annotation.

Reifiers & triple terms in JSON-LD 1.3. The file structure needs to refer to the triple itself. Proposal to add two new keywords: @reifies and @triple which introduces a separate node type. Low level mechanism, not expected to be used much. Another is one keyword @quote used as key in reifiers and @type value (using existing @value node design). Third proposal to re-use @graph and @quote.

Triples are defined recursively, can have a triple within a triple. Would like only allowed as objects because literals are not allowed. From the logical perspective there is no reason not to allow symmetric (?) RDF. Have seen strange mixes.

sebastian: Very interesting about YAML, relevant for us.

Mahda: Is there any tooling in JSON-LD WG to check quality of JSON-LD files, for most optimal case? Checking for quality and round-tripping.

Nicholas: Good question...

Mahda: When map is empty, when round trip it it gets converted into a list. Last open issue.

Benjamin: There are idiosynchratic versions, the playground should do a better job. What we don't offer is things without context analysis. E.g. Thing Description, does it match this schema? If a context designer, that's when it gets hard. There are choices to make.

Mahda: Ontology vs. JSON-LD context. We have some terms with are language strings you can provide in the context file, what do we do? RDF literal. Can be plain string or language string. Compatible to say RDF literal to keep it generic or is there a more detailed way?

Nicholas: Could do it in a more detailed fashion like in OWL. XSD string and RDF lang string and dir lang string. RDF literal is fine.

Mahda: We can do it that way because our SHACL shapes can then use it as well.


### Joint meeting with VC WG (Benjamin Young)
-> https://www.w3.org/groups/wg/vc/ VCWG page

Benjamin: Verifiable WG chartered for another year or so. 2028. Continuing on from exploration that goes on 20 years. JSON-LD and RDFa born out of solving these problems, trying to do micropayments in HTML. Landed on an expresion of what they originally intended to do - verifiable credentials, now talking about payments.

Bistring Status List v1.1 - simple bit toggling way to revoke a credential once it is issued.

-> https://www.w3.org/TR/vcalm-1.0/ VCALM v1.0
VCALM v1.0 - The VC API, expanded to include lifecycle management. Not just issuing and verifying, also workflows. E.g. someone will ask for passport before visa. Ask for two proof of address, validate those then issue driving license. Just issuing and verifying means can not be reviewed or validated. VCALM lets that happen. Currently under TAG review.

-> https://www.w3.org/TR/vc-render-method/ Verifiable Credential Rendering Methods v1.0
Verifiable Credential Rendering Methods v1.0 - Take a credential and display it. Show it to a human being, or NFC tap. Something auditory or tactile. When you show my credential, make it do these things.

-> https://www.w3.org/TR/vc-data-integrity/ Verifiable Credential Data Integrity 1.0
Verifiable Credential Data Integrity 1.1. - important to this group. An expression of a certain shape of JSON, what a subject is, proof space (extensible), cyrptographic suites, canonicalised RDF. Take JSON-LD, turn it into a graph, sign across the graph, take output hash and put it into the JSON. Signature suite knows not to include the proof. Lots of data integrity suites, some allow selective disclosure. Can sign each individual statement in RDF and just disclose last name or address for example. E.g. age verification without having to hand over whole driving lesson. Selected disclosure.

-> https://www.w3.org/TR/vc-di-ecdsa/ Data Integrity ECDSA Cryptosuites v1.0
ECDSA Cryptosuites v1.1

-> https://www.w3.org/TR/vc-recognized-entities-1.0/ Recognized Entities v1.0
Recognised Entities v1.0 - what is colloquially called trust lists. Here's a list expressed as a verifiable credential, people I am recognising for certain actions. E.g. social graph, stores you shop at. These are the groups we trust to do certain things. Can interrogate who issued credential against recognised entities list and validate. Can revoke credentials and issue a new one.

-> https://www.w3.org/TR/vc-forgery-defense-1.0/ Verifiable Credential Forgery Defense v1.0
Verifiable Credential Forgery Defense v1.0 - If you mess with JSON, invalidates the graph and invalidates the proof. Can't just change stuff or the proof breaks.

-> https://www.w3.org/TR/vc-barcodes-1.0/ Verifiable Credential Barcodes v1.0
Verifiable Credential Barcodes v1.0 - PDF417 barcode contains entirety of digital credential which encodes not only a number but the data that should be on the front of the card. Cryptographically validateable credential without needing ID. Used on all new driving licenses in California - millions of people. Major feature.

?: Limitation to size of barcode?

Just limited to how close you want to be to the barcode and how long you want to take to scan it. Some use cases have to scan 70 barcodes a minute so has to be fast. For a drivers license it has to be fast enough for border crossing etc. Physical space and lighting constraints.

-> https://www.w3.org/TR/vc-data-model-2.1/ Verifiable Credentials Data Model v2.1
Verifiable Credentials Data Model v2.1 - The data model itself has been around for a while. Validation ranges, tiem and space. 2.0 is what's in the California credential and we are pushing to deploy in most cases.

Verifiable Credential itself builds on top of cryptography and data integrity and JSON-LD on top of that.

The way the WG functions we have 8 task forces, mostly mapped to one deliverable, sometimes two.

Ege: What is the difference beteen "editors" and "authors"?

Benjamin: Basically editors help edit language, authors came up with the ideas - I think.

Question about how the WG works...

Main WG is once a week for one hour - ends up just being updates. Need a way for group to health check. Proposal to do a two hour meeting every two weeks. 118 participants. JSON-LD WG much smaller.

### Scripting API (cont.) (Cristiano / Daniel)

Cris: Yesterday we talked about improvements in interaction and error handling.

Thing Description 1.1 parity - getting very close. Missing part about how to handle all or multiple operations. Have some solutions in mind. Could be the result of an operation, get back just a stream of bytes and the application has to know how to parse it. E.g. might be JSON or something else. In principle that would allow us to support these operations, but scripts will lose the abstraction.

Publication timeline - Settled for closing current draft for end of November, 2 week review period, publication within 2026. Last publication was three years ago.

Next charter topics - keep APIs aligned with future TDs, e.g. common definitions. Somehow support fleet management through directories or a group of things.

Ege: ECHONET mentioned web API can do requests to multiple thigns with a single request. Guessing you want multiple Things to be a fleet. Not through TD which is for a single Thing.

Cris: We can experiment a bit. Side benefit is we could optimise network interactions, e.g. send a bunch of messages on the same connection. Can bake this into scripting API. Also have the ability to program multiple devices in one Scripting API operation. Keep consistency without doing loops.

Kaz: ECHONET is grouping devices.

Ege: Means the same as a fleet.

Cris: Have seen systems with fleets, but also dynamic tagging, also used for software updates.

New TD toolchain - experiment by Daniel.

[Mahda sneaks out of the room... ✈️]

Mahda: I will attend the next Scripting API call.

Cris: API implementations. node-wot recently got some updates. Christian talked about experiment with data mapping. I'm working on upgrades. Trying to re-use connections as much as possible, work better with WoT Thing Protocol. One WebSocket per endpoint rather than one per Thing.

sebastian: Erich has developed UA-Edge translator tool. Are they also following the API.

Cris: I don't think so, never mentioned using node-wot and not sure if following Scripting API specification.

Calling for help because lacking contributors. Steady increase in downloads of node-wot, represents increasing interest in WoT and scripting API.

Daniel: Good sign of interest. Good to check if implementable.

Cris: Trying to design how the Scripting API could help in LLM work by providing a sandbox. Maybe not going to be a browser API but could be imported in a sandbox that LLMs can use. Abstraction of WoT instead of raw network operations. Add semantic checks that Ege and Mahda showed yesterday.

sebastian: Thank you for your hard work on the task force. Doubled node-wot downloads since last year.


[Break till 16:00]

### Joint meeting with WoT CG (Ege / Cristiano)
* possibly collaboration between WG and CG, IG replacement

Scribe: Sebastian

EK: I would like to talk about subprotocol, it would be good to have Erich and Mahda here

EK: Christiano and myself are currently the CG chairs

... what do we see the CG can do to contribute to the WG

... CG was created 2016

... CG have 267 participants and representing 94 organizations

... removing the people that not with the company anymore, still over 200 participants are active

... at the CG webpage, there is an activity page that shows the recent events (meetings, presentations, etc)

... CG do different things: 
    
...  everything is available on github 

-> https://github.com/w3c-cg/wot-cg

...  we have the meetup sessions

... all those session are available on youtube

... providing tutorials

... tutorials giving detail guideline in different programming language

Kaz: we can think about publishing CG's technical reports for our Binding Registry entry document :)

EK: will come to this later.

EK: we are also on Discord. There are 207 members

CA: The meetups are great to see, what people do with WoT

EK: as you can see, in the CG community there is much more happening than in the WG

EK: the WoT webpage also lists also known papers publish in the context WoT

... for the articles, we have a policy to decide it it be linked at the webpage

EK: we have also a developer space with all available known tools

EK: the video provided from the meetups have also directs links to specific topics

EK: we have also liaisons to the WoT CG

... to the WG, we take care of facilitating a low entry barrier, outreach, bindings, PlugFests

... that are mainly the oppertunites

... on the PlugFest we need to clearify to work together

EK: regarding the bindings, there are dicussions if the binding can be published as a CG technical report

SK: we do not inventing something new. We just explain how existing protocol are used in a TD, a REC is not needed for that. 

CA: Web Thing Protocol is a good example where different document (REC) is needed, since it is a kind of a new protpocol. For existing protocols that would not be needed.

SK: what happen, if the CG organize a PlugFest? 200 people would join?

EK: good question, there is the question of travel costs. Better to have this co-located

BF: @@@

EK: are there more topics?

DR: would like to see more online demos

EK: I can share some marketing numbers

-> https://w3c.github.io/wot-analytics/ WoT Analytics Dashboard

EK: numbers shows, it is an international standard (US, Germany, Japan, Russia, Brazil, ...)

... numbers are already filtered (no robods, crawler, etc)



### Closing (Sebastian)

[adjourned]
