# WoT TD Calls

https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf

## Slot 1 - 26 August 2026

### Meeting Information

**Attendees:**

1. Ege Korkan
2. Tomoaki Mizushima
3. Mahda Noura
4. Kunihiko Toumura
5. Daniel Peintner
6. Michael Koster

**Scribe:** Daniel Peintner

**Regrets:** 
- Christian Glomb

### Minutes

#### Agenda for Today

Ege: (skims the basic agenda items on the TD wiki)

#### Minutes Review

https://github.com/w3c/wot/pull/1312

Ege: Any feedback?

Daniel: Pending comment marked with @@@

Ege: <fixing link>
... no other feedback, minutes are approved
... merging PR1312

#### TD SpecWork

##### Tests fix

https://github.com/w3c/wot-thing-description/pull/2226

Ege: Keep PR open for now
... tests kept failing
... problems in Node.js versions
... @context URLs were wrong
... had to split some tests
... e.g., JSON schema tests only etc
... had to bump Mocha version
... please provide feedback
... will wait till next week
... the PR passes the checks now!

##### Errata Tabbed Examples

https://github.com/w3c/wot-thing-description/issues/2223
https://github.com/w3c/wot-thing-description/pull/2225

Ege: Fixed the issue mentioned last week about tabbed examples for REC versions
... we need WG resolutions 
... 9th of September is first meeting 

Daniel: PR is fine. Anyhow, Overview.html creates large diffs

Ege: I noticed that as well.. maybe related to ReSpec version
... agree, it is annoying to review
... Overview.html is done via tiny HTML
... we usually don't look into those generated files

Daniel: Noticed that we add entries in reverse order. Fine since we did that in the past as well.

##### WoT Resources fix

https://github.com/w3c/wot-resources/pull/30

Ege: Would like to merge this fix as well soon
... not sure if we need errata process in this case
... I think in the past we didn't create errata entry in similar cases

Daniel: +1

Ege: <merging PR 30>

#### Publication of Ontologies

https://github.com/w3c/wot-binding-templates/issues/474

Ege: We have ontologies, but we don't publish them
... even the schema should be published
... need to talk with system team to setup redirects
... we need to think about the versioning
... I suggest to try out the process

Mahda: Maybe we should stick to the URIs we used in the past

Ege: We point to main branch links?

Mahda: I think the ontologies have dated URIs
... some are different CoAP and MQTT has 2019, BACnet 2022
... not sure how many implementations are based on those IRIs

Ege: Maybe we should also add the proper URIs in the examples

Mahda: Correct, there are those mismatches as well

Ege: BTW, we should use https instead of http

Mahda: PROFINET misses ontology

Ege: Correct
... LoRaWAN doesn't have it either
... some recent PR has been adding it though
... we don't control HTTP ontology. However, it is published
... we still need the unstable versions ... like wot-next
... I am not sure if we can guarantee stable content 

Mahda: Yes, some changes are surely coming

Ege: Also, the mathematical stuff from Christian will come to Modbus since we can't wait till TD spec is published

Mahda: There are some implementations that we might affect
... having stable version for now
... next coming gets a different date

Ege: Maybe some version in the url

Mahda: Versioning in ontology usually uses semantic versioning 
... like major versions for breaking changes et cetera

Ege: We can speak about snapshots for now
... in the future we will have stable versions

Mahda: Extending vocabulary or adding classes are problematic and should be put as a new version

Ege: <adding conclusions to https://github.com/w3c/wot-binding-templates/issues/474>

Ege: We need to decide what goes into the version string (major.minor.patch)

Mahda: I think we have standards for that

Ege: I don't think we have that for JSON schema

Mahda: I think there are best practices for ontology versioning

Ege: I noticed BACnet doesn't have "wot" in URL... might become a problem

Mahda: Maybe we need to simply add "wot" in the case of BACnet

Ege: I will create issue, see https://github.com/w3c/wot-binding-templates/issues/477

Michael: I am not sure about impact changing the URL
... we should talk to Klaus

Ege: Will contact them

Michael: I think now is a good time to align stuff up 

[adjourned]

---

## Slot 1 - 27 August 2026

### Meeting Information

**Attendees:**

1. Ege Korkan
2. Michael Koster
3. Christian Glomb
4. Kunihiko Toumura
5. Tomoaki Mizushima
6. Kaz Ashimura
7. Daniel Peintner
8. Cristiano Aguzzi

**Scribe:** Christian Glomb

**Regrets:** 

### Minutes

#### PRs

##### for TD testing pipeline

Ege: Tests were failing, but some updates were made, should be done differently with new toolchain, TD examples are updated
https://github.com/w3c/wot-thing-description/pull/2226
Merged

##### for errata management

https://github.com/w3c/wot-thing-description/pull/2225

#### LoRaWAN updates

https://github.com/w3c/wot-binding-templates/pull/471

Ege: Haoyu Ren (Siemens) is providing context and ontology, introduction of thing-level vocabulary which is a new feature for a binding, special data mapping methods also described, also deprecated terms listed, events used in TD instead of polling, some terms overlapped with these discussed in data mapping

Daniel: There is a mixture of tables and figures in binding template description
https://github.com/w3c/wot-binding-templates/issues/478

Kaz: Copyright should be clarified for copied/pasted figures and screenshots; if publicly available we might be able to re-generate figures

Ege: Should ask LoRaWAN Alliance; for device PDFs - what to do? - is public info but belong to the company

Kaz: Ask Erich and Haoyu about their opinion around LoRaWAN Alliance, and also ask W3C staff, e.g., Francois and Philippe

Ege: Put PR on hold until clarified

Kaz: Content is great - thank you very much!

#### Data mapping

- https://github.com/w3c/wot-thing-description/pull/2211 PR 2211 - Extending Data Mapping Analysis
- https://github.com/wiresio/wot-thing-description/blob/357c3daf4c4255bae27413c36c5e4a702ff1b558/planning/work-items/analysis/analysis-data-mapping-3-summary.md Rendered MD for analysis-data-mapping-3-summary.md

Christian: How to proceed?

Ege: Overall template is missing, can formulate issues for refining, real devices now as examples, part of TD context or separately

Christian: better naming for "map"

Ege: will disappear if put to TD context

Ege: Other things to be fixed: https://github.com/w3c/wot-thing-description/issues/2034

Ege: "unit" prefix confusing

Michael: bad practice, JSON parsers are fine, should be other prefixes already out & used

Cristiano: Better alternative to "unit:DEG_C"? - maybe also remove "quantities" in the examples

Ege: Explaining example 2, but how can we get negative values?

Kaz: Why have "map" features in TD and not a separate "value conversion binding"?

Ege: Idea is to centralize some common features, discussion not just about units

Kaz: can understand your point, but we should split the Core TD style and the localized (culture, industry, usage) style

Ege: Can be part of TD section but should be a separate section for the mapping for the localization

Kaz: if you also think this localization mapping capability should be separately described from the core TD capability, that's fine :)

Cristiano: How should a client handle this new style? What does it need to support?

Ege: Can offload some functionalities to binding.

Cristiano: Small set to be supported by core

Kaz: When to publish the next working draft? this proposed mapping feature discussion is getting quite big, maybe better to publish WD with smaller changes

Ege: there is another big proposal already, and can publish it separately first
... but still need to wait for the toolchain update

Kaz: ok

Ege: (some discussion about color mapping and possible color space conversion)

[adjourned]
