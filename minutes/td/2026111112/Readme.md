# WoT TD Calls
https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf
## Slot 1 - 11 October 2026
### Meeting Information
**Attendees:**
1. Ege Korkan
2. Kunihiko Toumura
3. Kazuyuki Ashimura
4. Christian Glomb
5. Tomoaki Mizushima
6. Daniel Peintner
7. Michael Koster
**Scribe:** Kaz
**Regrets:**
#### Agenda for Today
Ege: Any topics to update?
- **None**
Ege is not available tomorrow (Nov 12).
#### Minutes Review
https://github.com/w3c/wot/pull/1338 Oct 21-22
Ege: TD minutes before TPAC.
... (goes through the minutes)
... Any objections?
(none)
(merged)
#### Publication
Ege: Got a small issue about REC publication.
... (shows TD 1.1 REC)
... (goes through the examples, 65, etc.)
-> https://www.w3.org/TR/2023/REC-wot-thing-description11-20231205/ TD 1.1 REC
Ege: (also shows the Errata)
-> https://w3c.github.io/wot-thing-description/errata11.html Errata for TD 1.1
[[
2026-08-26: As explained originally in issue 2212, choosing one tab in a tabbed example was causing other examples with the same feature to be hidden. This is fixed for the REC version in Pull Request 2225.
]]
Ege: Are we OK with keeping the REC with the Errata,
... or should we publish an updated, fixed version?
Daniel: It would be more confusing to publish an updated REC.
Kaz: I agree.
... It's 1.1, and we're already working on 2.0.
... The problem has been fixed for 2.0.
Ege: Right.
... However, we should update the text within the Errata.
PROPOSED RESOLUTION: The group agrees not to make a new TD 1.1 Recommendation publication with an editorial change. The errata11.html will be updated to reflect this decision.
Ege: Any remarks?
(none)
RESOLUTION: The group agrees not to make a new TD 1.1 Recommendation publication with an editorial change. The errata11.html will be updated to reflect this decision.
Ege: I'll propose a PR for the Errata update now.
... (adds some edits and creates a PR for the Errata, errata11.html)
... People should reload the file once the examples are collapsed.
Kaz: That's a possible option, but people can also click the tab to see the other examples.
Ege: Ah, right.
... (fixes the description a bit)
... (creates a PR)
https://github.com/w3c/wot-thing-description/pull/2246
Ege: We can merge that next time.
#### Toolchain
https://github.com/w3c/wot/issues/1334
Ege: We've created an Issue about the TD Publication Schedule on the wot repo.
... However, Mahda is busy with a workshop this week and next.
... (updated the schedule plan a bit)
[[
1. Mid-November => Start of December
2. Mid-December => Mid-January
3. End of January => End of February
]]
Ege: Any comments?
... Mahda will be back next week.
(none)
(comments posted)
#### Data Mapping
https://github.com/wiresio/wot-thing-description/blob/glc-datamapping-us2/planning/work-items/analysis/data-mapping/US2345-summary.md
Christian: Currently on my repo.
- The proposal is defining certain vocabulary.
Ege: The payload is transformed for the data schema.
- It's already happening.
- So we should clarify that we're not inventing something new here, around the diagram.
- The map core pipeline is not happening yet, though.
Christian: OK.
- But we still need to define new terms for the map core pipeline.
- Bitmap extraction can already be done by the binding.
- More guidelines are needed.
Kaz: I agree with Ege.
- Maybe this initial proposal itself is OK.
- But we should apply some gap analysis and clarify which parts are already available,
- and which parts should be improved and updated, e.g., payload binding vs. map core handling.
Ege: Right.
Christian: OK, got it.
- We should not make people confused.
- (Continues to explain the basic proposal)
- 1. "map" Core Terms
  - 1.1 Pipeline and operation dispatch
    - Term vs. Purpose
      - map:valueMappingForm: Level container for a directional mapping pipeline.
      - map:fromWireOrdered: Operations applied when reading (protocol to application).
      - map:toWireOrdered: Operations applied when writing (application to protocol). A writable form without map:toWire must fail unless an unambiguous inverse is explicitly defined.
      - map:proc: Identifies the operation performed by one pipeline step.
      - map:onError: Per-operation runtime failure policy. "error" is the default; "skip" passes the unchanged input to the next operation.
- Christian describes another table on Term, Used by, and Purpose.
- 1.3 Enum operations (user story 4)
- 1.4 Collection and type operations (shared)
- 1.5 Combination with protocol binding terms
- 2.1 JSON payload binding (jsonv)
  - Proposal on JSON Pointer
- 2.2 Octet-stream payload binding (octv)
- 2.3 CSV payload binding (csvv, reusing CSVW)
  - Not sure about the writing direction
- 3. Open Questions
  - "map" core
  - Protocol binding coexistence
  - Payload bindings and registry
  - CSV
- If you have any questions, please make a GitHub Issue.
Ege: Questions?
(none)
Ege: We need to go step by step here.
... Payload binding is already working.
... JSON is one of the most popular payload formats.
... JSON should work with the octet-stream option.
Christian: Do we need a special IKEA binding,
... or can we work on the CoAP binding with the Data Mapping option?
Ege: Yeah.
... That's the question about ECHONET as well.
... The ECHONET Web API Binding is basically the HTTP protocol with some Data Mapping.
Kaz: This is really a good question:
- Industry-specific binding for protocol + payload,
- or protocol binding + data mapping?
Ege: Yeah.
... We can publish a TD draft with the Data Mapping capability, though.
... We can still keep the Data Mapping capability as a proposal document for the moment.
Christian: OK.
... Anyway, everything is available under the proposal area (planning/work-items/analysis/data-mapping).
... It can be implemented within node-wot.
Ege: OK.
... Any further questions?
(none)
Kaz: Note that ECHONET has extended their Device Description based on their own requirements,
- e.g., grouping of devices and historical data.
- I'm working with them on the possible ECHONET Binding, so I would like to talk with them about their intention.
Christian: That would be helpful.
- I will work on updates using PRs.
Ege: I will look at those new PRs,
- e.g., around the mapping vocabulary.
#### Tomorrow
Ege: I can't make the TD Slot 2 call.
Kaz: David Ezell will join the call tomorrow,
- so Michael can handle the Binding discussion there.
Michael: Yes.
... See you tomorrow!
[Slot 1 call adjourned]
## Slot 2 - 12 October 2026
### Meeting Information
**Attendees:**
1. Kaz Ashimura
2. Michael Koster
3. Marc-Andre Schier
4. Christian Glomb
5. Kunihiko Toumura
6. Daniel Peintner
7. Tomoaki Mizushima
**Scribe:** Christian Glomb
**Regrets:** Ege
#### Agenda for Today
##### General
Kaz: We can ask Marc-Andre to give a quick intro as well :)
Marc-Andre:
- Working with Erich Bahrstedt at Microsoft, active in the WoT binding for OPC-UA.
- W3C attendance clarified from the Microsoft side.
##### Projections
Marc-Andre:
- The goal is to map the OPC-UA information model losslessly into WoT.
- A draft is available on the OPC-UA side.
- A projection is a selector over existing TDs.
- Starting point: the device is already modelled, but how do we navigate inside it?
  - E.g., the Robotics companion spec is quite complex, but the user only wants to operate the robot.
- The OPC-UA concept of a view also needs to be modelled in WoT.
- PubSub is important for emitting messages to, e.g., an MQTT broker.
- Current workaround: hand-write a new TD with the relevant information.
- Projection plan: a set of TDs + a plan + new TDs, which are then constructed.
Christian: Is mapping the same as projection?
Marc-Andre:
- One projection use case can be mapping from Southbound to Northbound.
- Several scenarios exist, e.g., asset management.
Christian: The scenario looks like an application.
Marc-Andre:
- Yes, it can be. E.g., projecting energy meters into Energy Management.
- Not necessarily an application, more a business view.
- A projection is a TD or TM with @type "projection".
- It has an ordered list with references.
Michael: Is the TD delivered to the consumer with an extra projection plan?
Marc-Andre:
- Yes, then the consumer derives a "resolved" TD from it to be consumed.
Kaz: Why do we need to extend TD / TM? What is the expected model and data flow?
Marc-Andre:
- This is a proposal.
- We need some source TDs.
- Flow: projections describe a deployment strategy; the goal is to keep applications stable.
- Bridges with devices on the Southbound side.
Michael:
- Experimenting with TDs that have two forms:
  - connect to a device and a simulation framework (Modbus API), then filter the forms.
- Can a projection help here?
Marc-Andre:
- Yes, e.g., select each affordance except the ones used for onboarding.
- Concept of "select all".
Michael: We might need some additional vocabulary.
Kaz:
- Michael's onboarding scenario is understandable.
- However, I still have problems understanding this projection proposal itself, and would like to hear about your pain points and requirements based on your use cases in more detail.
Marc-Andre:
- No pain points about TD.
- How do we generalize mapping from datasets to, e.g., a view?
- We do not want to restrict it to OPC-UA only.
Michael via chat: This feature supports platform-based design. It might even make TD/TM the hub of a platform-based IoT design. PBD is simply the reuse of components in a platform to support multiple use cases, applications, or domains.
https://www.sciencedirect.com/science/article/pii/S0306261923013193
Kaz:
- Actually, WoT is a data model. It looks like the projection mixes up the controller part and the view part from MVC.
Marc-Andre: The view is different from the model.
Kaz:
- We have also been thinking about the controller part and the view part, but we are considering a separate document, a developer guide or primer. You can join that discussion as well.
- From my viewpoint, the question is how to resolve the requirements for the controller and view parts for WoT-based applications.
Christian: We already lift things up to an abstract level. What is missing?
Marc-Andre:
- OPC-UA to WoT can be automated, but how to use it in a certain setup is the question.
Michael: This can also be considered a sort of semantic binding.
Marc-Andre:
- How does a server, e.g., know about a sampling rate?
- This might not be enough.
- Resolved TD -> Plan -> Original TD.
- This can also be done with TMs, which have a "loss of type system".
Kaz: The intention is to generate a "resolved TD" based on the projection setting on the left side.
Marc-Andre: Yes.
Kaz:
- This reminds me of the TD recipe, which could be included in the current toolchain.
Michael:
- A candidate for a type of block for TM: how is a TD generated out of a set of TMs?
Marc-Andre:
- Yes, TM to TD is a perfect projection model.
- A tool can annotate TDs and add forms.
- Projection allows mixing multiple devices into composite devices.
Kaz:
- If your intention is to generate a concrete TD from a TM plus a projection setting, it is similar to what ETSI/FIWARE would like to do for NGSI-LD, I think.
- So we should look into this approach from that viewpoint as well.
Marc-Andre:
- Security ownership (just a detail).
- Cloud registries, e.g., CloudEvents attributes.
Kaz:
- The W3C approach starts with use case definitions, then requirements, then gap analysis, and then proposing resolutions.
- We need to do the first things first.
Marc-Andre: All of this is described in the PR.
Michael:
- Model composability is a gap. The PR is a good start; let's continue the discussion in upcoming meetings.
Marc-Andre: Thanks for your time.
-> https://github.com/w3c/wot-thing-description/pull/2243 TD PR 2243 - Propose experimental projection vocabulary
Kaz: The PR you mentioned is the above PR 2243, right?
Marc-Andre: Right.
Michael:
- Examples would be great.
Marc-Andre:
- We have a lot of examples, mostly in the context of OPC-UA.
Michael: Adjourn.
