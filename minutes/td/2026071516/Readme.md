# WoT TD Calls

https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf

## Slot 1 - 15 July 2026

### Meeting Information

**Attendees:**
1. Kaz Ashimura
2. Michael Koster
3. Christian Glomb
4. Tomoaki Mizushima
5. Kunihiko Toumura
6. Daniel Peintner
7. Christiano Aguzzi

**Scribe:**
Daniel
Christian

**Regrets:** Ege

### Minutes

#### Minutes Review
-> https://github.com/w3c/wot/pull/1306 PR 1306 - TD Minutes July 8, 9
-> https://github.com/w3c/wot/blob/e71bbb0e8f7b962cc9432382ccaa7efde1f836e3/minutes/td/2026070809/Readme.md  Rendered MD
((approved)

#### Data Mapping
--> https://github.com/w3c/wot-thing-description/blob/main/planning/work-items/analysis/analysis-data-mapping.md DataMapping Analysis

Christian: Mathematical mapping fromWire and toWire, for example multiplying a value

Daniel: One could manage with one multiplier as well

Kaz: I wonder whether the examples you show are located somewhere. Not yet pushed?

Christian: Yes, correct
... will push it
... next time I will do it beforehand

Christian: Another example/addition is enums
... 0 mapped to closed
... 1 mapped to open
... etc.
... another more complex example is mapping ranges to enums

Christian: I am working on more examples
... Anyhow, we should settle on the first examples

Christian: Use Case 5, Structured and Simple Data Mismatch, is up next
... maybe I will have something to show tomorrow

Kaz: We need to think about mapping capabilities or binding templates

Christian: Yes, correct

Michael: <showing example with multipleOf>
... conversion works between the electrical side and the physical side

Michael: Showing a custom TD doing conversion based on input and output limits
Fixed point system with integers, calibration factors
Will make an alternate proposal when Christian does a pull request - updated PR is here: https://github.com/w3c/wot-thing-description/pull/2211/changes/6b0a7e5a15b1ad6df48eba1e22d416fae6b547a0
Really specific example not yet made public

Kaz: This is rather a TM than a TD, a bit confusing; a comment to the PR would be better
In any case, we need to think about how to deal with the mapping between (1) the abstract device description by TD and (2) the concrete device definition by industry standards, and then how to deal with that using the WoT Binding mechanism

Adjourned

## Slot 2- 16 July 2026

### Meeting Information

**Attendees:**
Kaz Ashimura
Michael Koster
Christian Glomb
Tomoaki Mizushima
Kunihiko Toumura
Mahda Noura
Daniel Peintner
Erich Barnstedt

**Scribe:** 
Christian

**Regrets:** 
Ege

### Minutes

#### LoRaWAN BInding
-> https://w3c.github.io/wot-binding-templates/bindings/protocols/lorawan/ LoRaWAN BInding draft

Erich: Working on a demo of the LoRaWAN proposal
... TD as a source of truth for data decoding
... Vendors need to register decoders
... JSON document for auto-generating the decoder from YAML to JavaScript (interpreted on the fly)
... The WoT TD should be this JSON document
... Haoyu Ren (Siemens) showed a corresponding demo illustrating the WoT TD + binding
... Great progress, consensus for building end-to-end, probably open-source contributed by Siemens
... Binding template to be finalized, then published

Kaz: Thanks a lot for your contribution!
... Just to make sure, we're talking about the LoRaWAN Binding. Right?

Erich: yes

Kaz: (adds the section title of "LoRaWAN Binding" to the minutes)
... next, regarding the demo resources, are you planning to submit them to the W3C WoT repo?

Erich: not decided yet, but we're planning to do so

Kaz: thanks a lot!

Michael: Governance of LoRaWAN spec, ThingNetwork?

Erich: Do not know.

Michael: Looking forward to using the LoRaWAN binding. Have lots of such devices.

#### Data Mapping (revisited from yesterday's discussion)

Christian: (shows the resources around "analysis-data-mapping-operations.md"
... mapping rules about the label and the value
... (then shows an example about TD/TM)
... (also TD Form)
https://github.com/w3c/wot-thing-description/pull/2211/changes/b40e8873a26f259aaa9c4a404e56e5d52b9a8571

Kaz: thanks for describing those additional examples!
... but please note that my main point from yesterday's discussion was simply
... putting those resources on the wot-thing-description repo before the meeting
... so that we can refer to the resources :)

Christian: ah, ok
... in any case, I've created PR 2211 as above for that purpose

Mahda: Use @type instead of "ex:concept" and "ind:mapsToConcept", i.e., instead of custom vocabulary
... Also check for existing vocabulary, e.g., with respect to enums

Michael: another point Kaz pointed out yesterday (while Michael was describing his example on TM)
... was that it would be nicer to have an example of a concrete TD description in addition to the TM

#### Toolchain
-> https://github.com/w3c/wot-thing-description-toolchain-tmp Toolchain repo

Mahda: Hired a working student to work on the Toolchain
... Will be ready in a couple of weeks; the link should be published such that it is ready for testing and feedback
... Then rollout for what the current toolchain does and then extend to new formats

Michael: Have our own toolchains and looking forward to the WoT toolchain
... Own toolchain based on agentic frameworks

Mahda: What is Michael interested in specifically?

Michael: Added lots of semantic annotations to our TDs. How to align with open-source tools?

Kaz: Thanks a lot for your hard work!
... Given that the toolchain resources are getting completed, how should we deal with the resources?
... specifically, the repository name is currently "wot-thing-description-toolchain-tmp"
... do we want to move that to "wot-thing-description-toolchain"?
... or maybe could we install the resources under the "wot-thing-description" repo directly?

Mahda: Good question. Replace or along with the existing toolchain? Should be discussed.

Daniel: The idea was to move the toolchain to the TD repo. But let's wait for Ege.

#### Publication Schedule
-> https://github.com/w3c/wot/blob/main/planning/wg-schedule.md WG Schedule

Michael: One small item: Updating the WoT schedule. Waiting for input from Sebastian Käbisch.
... Also need help from Ege and maybe Kaz.

[adjourned]
