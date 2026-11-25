# WoT TD Calls

https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf

## Slot 1 - 18 October 2026

### Meeting Information

**Attendees:**
* Mahda Noura
* Kunihiko Toumura
* Kazuyuki Ashimura
* Christian Glomb
* Tomoaki Mizushima
* Daniel Peintner
* Michael Koster
* Sebastian Käbisch

**Scribe:** Sebastian Käbisch, Michael Koster

**Regrets:** Ege Korkan

#### Agenda for Today

**Sebastian:** I can report about the Modbus binding publication.

**Christian:** today there is no update on the data mapping topic.

**Michael:** we can pick any topic from the wiki.
... ok, no preference, let's start with the Modbus binding.

#### Modbus Binding
-> https://github.com/w3c/wot-binding-templates/pull/508 PR 508 - Modbus Binding 1.0 Publication
-> https://deploy-preview-508--wot-binding-templates.netlify.app/bindings/protocols/modbus/ Preview

**Sebastian:** we have many bindings in the editorial process.
... started with the Modbus binding.
... some spelling problems and inconsistencies.

-> https://deploy-preview-508--wot-binding-templates.netlify.app/bindings/protocols/modbus/#full-td Example 8

**Sebastian:** (explains namespace substitution)
... enum values are not identified as coming from the namespace.
... the values could be mapped directly in the `@context` (but aren't).
... this needs to be changed.

**Daniel:** we should use the latest TD version.

**Sebastian:** agree.
**Sebastian:** (displays the TD section in JSON-LD Playground)
... there is no value mapping in the example, it's just a string.

**Mahda:** there should be a link in the context.

**Sebastian:** we can fix this if we include the definitions in the Modbus context file.
**Sebastian:** (shows the definitions in the file) but it doesn't resolve yet.

**Mahda:** it should resolve now. 
... It's mapped in the context file without the prefix.

**Sebastian:** could we use the prefix here also, to make it clear that it's from `modv` and avoid potential name conflicts?

**Daniel:** this is important for the Scripting API to be able to call the function without semantic knowledge.

**Mahda:** we could add the prefix but might need to use the vocabulary term `modv:hasFunction` instead of `function`.

**Daniel:** we could use alias terms. 

**Sebastian:** we could use the namespace prefix but with underscore, e.g., `modv_function`.

**Mahda:** we could use `modv:hasFunction` but still need `type:vocab`.
... `@type` may cause a problem due to overuse.
... there could be a local context to override the mapping.

**Sebastian:** why is "type" mapping to the hypermedia ontology?

**Mahda:** there is a scoped context inside the form definition.

**Sebastian:** we shouldn't alias "type" at all.
... let's think about a proposal and follow up next time.

**Michael:** topics for tomorrow?

**Sebastian:** Microsoft discussing projections.

**Michael:** AOB?
... adjourned.

## Slot 2 - 19 October 2026

### Meeting Information

**Attendees:**
* Kazuyuki Ashimura
* Michael Koster
* Erich Barnstedt
* Kunihiko Toumura
* Christian Glomb
* Marc-André Schier
* Daniel Peintner
* Sebastian Käbisch
* Tomoaki Mizushima

**Scribe:** Daniel Peintner

**Regrets:** Ege Korkan

#### Agenda for Today

**Michael:** Marc-André talking about projection?

**Marc-André:** Working on the next level, no update yet.

**Erich:** Talking about OPC Classic protocol bindings.

**Michael:** Sounds good.

#### OPC Classic Protocol Bindings

-> https://github.com/w3c/wot-binding-templates/pull/509

**Erich:** 3 new protocol bindings.
... OPC Classic has different pieces (Data Access, Historical Data Access, Alarms & Events).
... 20 years old but very common in industry.
... UA or wrapper needed.

**Sebastian:** Does it make sense to be published in OPC?

**Erich:** I believe it is better on the W3C side.
... specific use case for WoT.
... leverage existing mapping specifications.

**Kazuyuki:** OPC Classic I/F is popular and important like ECHONET's Classic I/F, and should be considered one of the possible bindings.
... on the other hand, a possible question is who should have the authorship and the IP rights for the original specs.
... classic I/F binding is important, but we need to think about that kind of logistics as well.

**Erich:** I talked to Hitachi as well (have OPC Classic protocol).
... want to do conversion to UA.
... classic and UA specifications are freely available.
... alternative mappings can be added later.
... HTML points to references.
... avoid DCOM (problematic with firewalls).
... most people use COM (running on the same Windows machine).
... I am aware of this limitation.
... different types of alarms/events.
... described in Introduction.
... URI schema is localhost only.
... afterwards is class ID.
... `opcae` prefix (used in Edge Translator also).
... vocabulary is relatively simple.
... operational mappings.
... there is subscription. 
... basic example with tank level high.
... uses OPC Classic terminology.
... we talk about alarms and conditions.
... Section about implementation notes.
... JSON Schema is defined also.
... Data Access is simpler but shares a lot with the others (like alarms and events).

**Daniel:** Can we combine the 3?

**Erich:** used to be separate servers.
... could be together, but better not to confuse the 3 parts.
... prefer to keep it separate.
... DataAccess needs fewer fields in forms (compared to Alarm & Events).
... examples with array data.
... implementation note section and JSON schema.

**Erich:** Next is Historical Data Access.
... has an additional timestamp parameter.
... vocabulary is similar.
... `updateInterval` configures how often to read data.
... time series reading from.
... one can specify a time window (`startTime` and `endTime`).
... one can limit the maximum number of values to get back.
... JSON Schema is similar and has `startTime` and `endTime`.

**Erich:** I suggest to merge to get the rendered version.

**Sebastian:** Makes sense.

**Michael:** +1
... any objections?

**Sebastian:** No.

**Erich:** Merging.
... rendered version mentions "work in progress".
... please take a look and open GitHub issues if you find problems.

-> https://w3c.github.io/wot-binding-templates/bindings/protocols/opcda/index.html WoT OPC DA Binding

**Erich:** Next on the list for me is backoff protocol.
... Kazuyuki working on Mitsubishi Electric protocol?

**Kazuyuki:** Can talk with Matsuda-san about that during the ECHONET liaison call next week.

**Erich:** Mitsubishi has a lot of market share.
... Mitsubishi reference implementation on UA Edge Translator.

-> https://github.com/OPCFoundation/UA-EdgeTranslator/tree/main/ProtocolDrivers/Mitsubishi UA-Edge Translator for Mitsubishi

**Erich:** from a configuration perspective similar to EtherNet/IP.

**Kazuyuki:** Mitsubishi is a big company. We might need more time.

**Erich:** Just a review from the Mitsubishi side would be good.

**Michael:** Customers start adopting would be good.
... like a WebAPI.

**Erich:** Azure IT operations support OPC UA WoT-Connectivity.
... SPS trade fair next week in Nuremberg.

**Kazuyuki:** I can talk with Mitsubishi again.

**Erich:** I think Mitsubishi is on the board of OPC UA.

**Marc-André:** We contributed WoT mapping to XRegistry at Microsoft.
https://github.com/xregistry/spec/blob/main/workingdrafts/models/wot/README.md

**Marc-André:** Next time I can share more information.

**Michael:** Out of time.
... any other quick item?

[adjourned]
