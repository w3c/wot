# WoT Main Call Minutes 25 November 2026

## Attendees

Present:
1. Kaz Ashimura
1. Dave Raggett
1. Michael Koster
1. Mahda Noura
1. Tomoaki Mizushima
1. Robert Warren
1. Kunihiko Toumura
1. Daniel Peintner
1. Sebastian Kaebisch
1. David Ezell

Regrets:
1. Ege Korkan

Chair: Koster

Scribe: Sebastian

## Agenda:
https://www.w3.org/WoT/IG/wiki/Main_WoT_WebConf#25_November_2026

## Minutes

### Guests, New Members, and Invited Experts

MK: are there any news about new IEs?

Kaz: I'll send another reminder to the W3C team

DR: Currently there is some work on IE policy to be more strict in the future

### Minutes

-> https://github.com/w3c/wot/pull/1352

MK: any objections

Kaz: there are some problems<br>
... actually we do not really do markdown syntax<br>
... I applied a convertion tool to fix the problems

MK: In TD we use a LLM prompt <br>
... works quite well

Kaz: so far we did not take care on the markdown syntax in the past

DP: Just to mention that we use LLM for the TD call

MK: any objections regarding the minutes?

<no objecetions; minutes approved>

### Quick Items and Notices

MK: we are still waiting for disposition of the URL

#### Nagasaki

Kaz: there is a high interest in my lecture to join the event in next year<br>
... we need to find a another location to host the event but we can use the Nagasaki Univ. facility for that purpose<br>
... will update the Nagasaki wiki with the updates


#### China

SK: already provided information last week<br>
... no special updates this week<br>
... the agenda will be published shortly<br>
... please get registered with the registration site if you join the event

MK: great

#### Princeton

SK:  US Team from Siemens are inviting us again<br>
... we once had a meeting there

#### AOB?

RW: there was discussion about WoT Registry during TPAC<br>
... wondering about how to reuse the existing Ontologies like SOSA<br>
... would give information about temperature unit, etc.

-> https://www.w3.org/TR/vocab-ssn/ Semantic Sensor Network Ontology (SOSA)

MK: what about the scope of our Charter?

Kaz: if our expected new work is a REC, we need to re-charter<br>
... if not, we can publish our results on Ontology Landscape as a Note

DE: I'm not sure what is the relation to schema.org to it?

RW: There may also SOSA used.

MN: Supporting the idea of register properties

RW: sometimes no ontology is needed, just a registry 

MK: I worked with Dan Brickly on iot.schema.org

Kaz: two possibilities here, I think<br>
... WoT-WG can research vocabulary definitions for TD as part of TD TF or another separate TF<br>
... on the other hand, smart city IG can also research vocabulary definitions for smart city purposes<br>
... each group can work on its own needed area

MK: we have last mile issue 

### TPAC Follow-up

Kaz: we can quicky scan the list

#### Use Cases

MK: first point is Use Case<br>
... maybe we don't need a separate UC work but can handle it within the TD TF<br>
... any specific discussion during TPAC?

SK: no concrete discussion during TPAC

Kaz: given TD is the only one REC-Track spec for this Charter period, TD TF can handle the use cases in the future<br>
... but we need some more discussion during the TD call with Ege<br>
... on the other hand, we should ask the people in the group for opinions as well

MK: what is the position of the Use Case document?

Kaz: technical we should publish use cases as justification to introduce new features<br>
... W3C asking this

#### Security

Kaz: A colleque from Nagasaki University is happy to help<br>
... we need to clearify first the security topics in TD<br>
... we should also think about data protection mechanism for TD


#### VC

MK: how we follow-up?

SK: We had a joint meeting with them during TPAC<br>
... was very useful<br>
... impressive they were working on a huge set of RECs<br>
... some question about the digital product passport (DPP)<br>
... there is a regulation and VC would be relevant<br>
... but still very early stage about that viewpoint<br>
... that's what I remember<br>
... any other points?

Kaz: VC can be used to handle credentials<br>
... and device certification<br>
... e.g., a sticker can be copied and added to a device

RW: yes, this is an issue<br>
... it would be good that devices gives the data directly and if it can be compared to the sticker on the devices as verification

#### Registry

Kaz: we had a visit from W3C Advisory Board<br>
... we gave some inputs about the WoT binding registry situation<br>
... e.g., what kind of deliverable type can be an entry of the registry<br>
... in addition, we might want to think about how to refer to the existing registries and ontologies as well

#### JSON-LD

SK: had joint discussion with the JSON-LD WG<br>
... how to deal with YAML was a question<br>
... also how to deal with CBOR<br>
... those are 2 topics I remember

MK: no big impact to TD itself?<br>
... since we can deal with them using the Media Type mechanism

SK: there was some information about new JSON-LD features as well

MN: problems about "@context"<br>
... found issues while I was fixing the toolchain<br>
... round trip wouldn't work in some cases

MK: OK. Thanks!

#### Media

MK: what about media handling for WoT during TPAC

Kaz: Toumura-san and Komatsu-san gave presentations about their proposals<br>
... Toumura-san has been already talking about his idea suring the TD calls<br>
... maybe we can ask Komatsu-san to join the TD call at some point as well

MK: ok<br>
... Any other points from TPAC?<br>
... (none)<br>
... ok. let's adjourn the call for today then

[adjourned]
