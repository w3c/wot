# WoT TD Calls

https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf

## Slot 1 - 19 August 2026

### Meeting Information

**Attendees:**

* Ege Korkan

* Michael Koster

* Christian Glomb

* Kazuyuki Ashimura

* Kunihiko Toumura

* Tomoaki Mizushima

* Mahda Noura

**Scribe:** Kazuyuki Ashimura

**Regrets:** Cris Aguzzi

### Minutes

#### Agenda for Today

**Ege:** (skims the basic agenda items on the TD wiki)

#### Minutes Review

-> https://github.com/w3c/wot/pull/1311 PR 1311

**Ege:** (goes through the minutes)

... (no objections)

... (approved & merged)

#### Spec Schedule

-> https://github.com/w3c/wot/pull/1310 PR 1310

-> https://github.com/w3c/wot/blob/2f3e2a8a261f56488d3dcaacf0428c4bae1c7a40/planning/wg-schedule.md Proposed schedule (Rendered MD)

**Ege:** (goes through the proposed schedule above)

... placeholder schedule with "MONTH DAY, YEAR" as the tentative information with

... publication milestones

... (describes the items within "Individual Binding Templates"

... for each protocol:

... Note publication, ...

**Kaz:** the "note" for each document should be "Note" :)

**Ege:** let me fix it

... (fixes it on the PR)

... (and commit the fix to the PR 1310)

... any other comments?

(none)

(merged)

#### Interaction Semantics

**Ege:** the discussion was much more confusing than I expected

... so trying to describe the whole ideas

-> https://github.com/w3c/wot-thing-description/pull/2206 TD PR 2206 - Interaction Semantics Section

**Ege:** (shows the section "5.3.4.2 Form")

-> https://pr-preview.s3.amazonaws.com/w3c/wot-thing-description/2206/18b7ca0...d08c695.html#form 5.3.4.2 Form

**Ege:** (then "5.3.4.3 ExpectedResponse")

-> https://pr-preview.s3.amazonaws.com/w3c/wot-thing-description/2206/18b7ca0...d08c695.html#expectedresponse 5.3.4.3 ExpectedResponse

**Ege:** (then "9.3 Interaction Semantics")

-> https://pr-preview.s3.amazonaws.com/w3c/wot-thing-description/2206/18b7ca0...d08c695.html#interaction-semantics 9.3 Interaction Semantics

**Kaz:** question about how to proceed

... should we review the resulted HTML based on this PR?

**Ege:** right

... (then shows the MD about readOnly/writeOnly also)

-> @@@readOnly-writeOnly.md

**Kaz:** technically, it would be nicer if we could express the atomic unit for this purpose

... and then think about how to combine the units for expected use cases

**Ege:** (shows the example sequence of transitions)

**Kaz:** it's technically serialized state transitions...

**Michael:** SDF has input/output for events and actions, not for properties

**Ege:** the default for properties can be simple but should not have readOnly/writeOnly any more

... always have use case to handle a specific resource with different status

... we need to think about some mechanism to handle it

**Kaz:** that's true

... but don't think it should be part of the TD capability itself

... anyway, this kind of discussion is very important for actual IoT systems

**Ege:** right

#### Data Mapping

-> https://github.com/w3c/wot-thing-description/pull/2201 TD PR 2201 - Data Mapping Analysis Extension

**Ege:** (goes through the comments on the PR)

... it's kind of stable

... what do you think, Christian?

**Christian:** (gives comments)

**Ege:** mapping to non-JSON payloads

... related issues there

-> https://github.com/w3c/wot-thing-description/issues/2169 TD Issue 2169 - Basic Operations on Data

**Ege:** (adds a comment to Issue 2169 about PR 2201)

-> https://github.com/w3c/wot-thing-description/issues/2169#issuecomment-5343590819 Ege's comment

**Ege:** (and then creates a new issue about "non-Json payloads")

-> https://github.com/w3c/wot-thing-description/issues/2214 TD Issue 2214 - Non-JSON Payloads

**Ege:** there is a requirement for "3. Basic Mathematical Operations" as well within analysis-data-mapping.md

**Kaz:** what do you mean by "Mathematical Operations"?

**Ege:** (describes the section)

**Kaz:** do you mean the TD itself should have the calculation capability?

... personally think it would be overkill to add calculation capability into TD

**Ege:** yeah...

**Michael:** also wondering about that

... maybe there is some other way for that purpose instead of extending TD itself

**Christian:** which protocol below?

**Michael:** Zigbee uses application layer protocols

... Matter has something similar

... their own protocols

... but can see message passing

... don't really separate the state transition layer

**Christian:** also thinking about how to solve the requirement

**Michael:** if you create a CoAP bridge for Matter...

... there is no clear separation

... would be kind of special

... you could still use QUDT as the basis

**Ege:** may not be a standard, though

**Michael:** didn't support data mapping so far

**Ege:** with Modbus, it's not available inside TD

... need to put that somewhere

... so far we just have TD for everything...

**Michael:** maybe need some standard data mapping mechanism also

... may or may not some W3C standard could be applied

**Ege:** whole processing language on the top of existing standards

**Kaz:** probably we should discuss our expected mechanism to implement our requirements also

... for example, my own strawman idea at the moment is callback capability from Binding for existing program languages outside TD like Python

**Ege:** yeah, kind of hooking mechanism for external programming languages

**Christian:** what do you mean by "hooking"?

**Ege:** some mechanism to call external programming language to execute expected calculation

... (adds a comment to Issue 2169)

... we can come up with a concrete language proposal or indicate the operation to be implemented outside TD

... (shows an example of possible calculation for unit conversion)

**Kaz:** can understand what you mean

... but it implies that we might need to have something like Shell Script's 'expr' command

... which would be complicated...

**Ege:** right, but would be nicer to have it inside from the security viewpoint

**Michael:** good to have this kind of brainstorming

... this is basically data transform

... need to think about our requirements

... for input and output

... quantization is needed

**Kaz:** had some more comments but given it's already 3 mins past the hour, let's simply close the call today

... and then continue the discussion next time

... I can't join the call tomorrow, though...

**Ege:** ok

... what about the PR 2201 itself?

... can we merge it?

(no objections but the work is not done yet)

[adjourned]

## Slot 2 - 20 August 2026

### Meeting Information

**Attendees:**

* Ege Korkan

* Christian Glomb

* Kunihiko Toumura

* Tomoaki Mizushima

* Mahda Noura

* Michael Koster

* Daniel Peintner

**Scribe:** Michael Koster

**Regrets:** Kazuyuki Ashimura, Cris Aguzzi

### Minutes

#### Agenda review

#### Registry issues review 

**Ege:** the newer ones are at the bottom because they have been transferred

#### PR #2222

https://github.com/w3c/wot-thing-description/pull/2222

**Ege:** fixed bug with collapsed example sections

**Daniel:** we always used the same identifier (identifier overloading?)

... this also happens in the published version

**Ege:** since TD 1.0 probably

**Ege:** checking other documents

**Ege:** create issue to link to PR for errata for TD 1.1

**Ege:** verified that the issue is not affecting other examples

**Mahda:** what is the actual problem?

**Ege:** the class names were conflicting

**Mahda:** see if there is a toolchain change

#### PR #2206 - Interaction semantics

**Ege:** there was a missing link from a design problem, fixed the actual problem

**Ege:** no further discussion, merging

#### Resources PR #30 Problem with JSON Schema

**Ege:** $id field needs links to be updated with the correct document URI

https://github.com/w3c/wot-binding-templates/pull/471

#### LoRaWAN binding

https://github.com/eclipse-thingweb/td-tools/pull/96

**Ege:** big updates coming in September

**Ege:** Change properties to events

... a lot of vocabulary changes

... for the upcoming demo we will use PR#96 as the reference

... reviews vocabulary changes

#### Data Mapping

PR #2211

**Christian:** focus on user story 3, basic math operations

... multiply, add, round, clamp

... additional vocab terms proposed 

... are there other ontologies, vocabularies?

... we already have a unit vocabulary

... QUDT might be more precise

... looking at FnO

... also can use terms from JSON Schema

... additional terms are still needed, e.g. to/from

... example 3.A review 

**Daniel:** I would not use the term "map", the meaning is not clear vs. JSON Object type map

... maybe "transform" or "process"

**Ege:** in the information model part of TD we already use the term "map"

**Ege:** it's mostly Modbus and LoRaWAN devices

... we can still review these examples 

**Christian:** need to use TD instead of TM examples? 

... why is there a ValueMapping construct in addition to map?

... we might need to describe both directions

**Ege:** there is another extra level inside the map for fromwire/towire

... maybe we can remove the prefix if we put these into the context

... it's good for now to focus the discussion

**Daniel:** fromwire/towire could be collapsed because they are exact inverse factors

**Christian:** it would not work for enum mapping, also there could be an issue with rounding

**Ege:** should the unit prefix be QUDT?

**Christian:** we already have "unit" in the TD vocab

**Christian:** also documented which terms are used in which bindings

**Ege:** we should add the MIRED example as well

... we should add user story 3 to this document and add a summary

... We are starting to use this for Modbus even though it's not in the spec yet

... will look for some open source examples and work on it in the plugfest

... any other points?

#### PR #468 Modbus addressing

**Ege:** investigating the address range convention 10001-19999 programmed as 00001-09999

... there is a text qualifier in the document "usually" to indicate it's a convention and not part of the standard

... We are going to require explicit addresses

... corrected many variables C types that are not integer, rather unsigned, but are not range-constrained

... need to wait for Cris to review

**Mahda:** there was a Modicon convention 

**Ege:** not clear if the table in the spec is zero-based or offset by 30000

**Mahda:** it could be that there are different conventions being followed by different vendors

https://cache.industry.siemens.com/dl/files/595/34261595/att_951630/v1/manual_pac4200_en-US_en-US.pdf

**Ege:** also issue #187 about zero-based addressing, the conclusion was to be explicit

... we can deprecate zero based addressing and always use the real address

#### Wrap up

**Ege:** next week we can further discuss the bindings

... any other remarks or business?

... adjourned

