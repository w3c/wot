# WoT TD Calls

https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf

## Slot 1 - 25 November 2026

Cancelled

## Slot 2 - 26 November 2026

### Meeting Information

**Attendees:**
* Ege Korkan
* Christian Glomb
* Kazuyuki Ashimura
* Mahda Noura
* Kunihiko Toumura
* Tomoaki Mizushima
* Daniel Peintner

**Scribe:** Mahda Noura

**Regrets:**
* Michael Koster

#### Agenda for Today

## Minutes

-> https://github.com/w3c/wot/pull/1351 TD November 11 and 12 Minutes

Minutes from 11th and 12th November (above) approved.

-> https://github.com/w3c/wot/pull/1353 TD Minutes 18 19 November

Minutes from 18th and 19th November (above) also approved.

(Ege will add editorial changes so that the Markdown will be rendered properly.)

## Toolchain Progress

**Ege:** Let's see what the changes are now. We will ideally transition next week.

-> https://github.com/w3c/wot-thing-description-toolchain-tmp/blob/main/wot-toolchain.yaml wot-toolchain.yaml

**Mahda:** I had done some experiments before. I did some changes locally and now they are getting reflected in the main branch. You will see lots of small changes or PRs soon.

... the toolchain behaves a bit like the STTL tooling. We want to use the same tooling for bindings and TD as well.

... so a config file will be needed to adapt to each repo.

... TD repo will have one config. One per binding as well.

... I had to do some refactoring as well since some stuff was in the code.

... input and output need to be defined, along with other config for generators.

... we also have a GitHub Pages deployment now. 

... all the resources are now published as well.

... Also now we have documentation to teach how to use the toolchain.

**Ege:** thank you very much for everything. Documentation is a really nice surprise as well. Also it is called wot toolchain now?

**Mahda:** yes the package name is also now different. wot-toolchain is the name now.

... 15th of December for index.html, json schema, assertions should be ready.

... we can make a transition with a PR. There will be a time to test.

**Ege:** I think we don't need to commit each generated file to the main branch.

**Mahda:** yes that is the case in the toolchain repository already.

**Ege:** We will merge before Xmas and people will have even more time to test stuff around and won't break anybody's work.

## Errata11 Update on Tabbed Examples

-> https://github.com/w3c/wot-thing-description/pull/2246 Errata on snippets

## Pull Request for Basic Authentication and CoAP Observe Reference

We have received a PR from an external in 

-> https://github.com/w3c/wot-thing-description/pull/2244 Correct the Basic authentication and CoAP Observe references

**Ege:** how do we handle such PRs? 

**Kazuyuki:** We can check the optional setting configuration of the repository of how we deal with the external PR contributions, i.e., Repository Manager.

**Daniel:** Mahda needs to do the changes in the toolchain transitions otherwise they will get lost.

**Ege:** How are you doing it with the toolchain currently?

**Mahda:** I have updated it until a while ago, from three months ago.

... Some of the changes that are in the index.template.html do not have any effect and can be updated. Snippets changes though need to be carried over to the toolchain. 

**Mahda:** In the json schema there are two cases in the `@context` and the `@type` where we have an empty array `[ ]`, the toolchain does a minItems = 1 on these and is more strict in accepting them. 

**Ege:** does anybody have any issue with us being more strict? We also have this case in properties, actions, and events where some provide empty maps. 

[adjourned]
