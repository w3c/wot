# WoT TD Calls

https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf

## Slot 1 - 14 October 2026

### Meeting Information

**Attendees:**
* Ege Korkan
* Daniel Peintner
* Tomoaki Mizushima
* Kunihiko Toumura
* Christian Glomb
* Mahda Noura
* Kazuyuki Ashimura
* Cristiano Aguzzi

**Scribe:** Daniel Peintner

**Regrets:** None

### Minutes

#### Agenda for Today
**Ege:** (skims the basic agenda items on the TD wiki)

**Kazuyuki:** We should review publication planning.

**Ege:** Would wait for new toolchain, Mahda?

**Mahda:** Can show status, timeline, and plan.

#### Minutes Review
https://github.com/w3c/wot/pull/1330

**Ege:** One call on Thursday only.
... objections/feedback -> no -> minutes approved.

#### Schedule
**Ege:** Where can we put the plan?
... wot repo?
... let's create an issue.
https://github.com/w3c/wot/issues/1334
... publication will be with the new toolchain.
... new tooling is discussed in the following issue: https://github.com/w3c/wot-thing-description/issues/2209

**Mahda:** We did a lot of testing.
... about JSON schema and index.html.
... in the past we had to do a lot of manual comparison.
... now we have tests in place.
... index.html and JSON schema look good now.
... some feedback from Daniel w.r.t. JSON schema which is used in Scripting task force.
... also tested TypeScript generation (without JSON schema intermediate).
... however, the result does not look good.
... now I am working also on the generation of ontologies and JSON-LD context.
... hope to get it done by TPAC.
... additional processing on schema view is necessary.
... there was also an update on LinkML recently which brings language tags also.

**Ege:** JSON Schema testing against instances?

**Mahda:** Yes, exactly.
... valid and invalid instances.
... structural similarities to the old schema are not always given.
... TD snippets are also handled and JSON schema validated.
... assertions with IDs are also generated (-> assertions.csv).
... table IDs are now stable.

**Daniel:** I just wanted to comment on structural JSON schema similarity... maybe we can work around it on the Scripting side.

**Cristiano:** Reviewed Daniel's issue quickly.
... the current form numbers are fine... maybe even better.
... even if it means a breaking change.

**Ege:** CI/CD pipeline could create a website.

**Mahda:** It is not a website, but in the GitHub Actions sections it produces artifacts.
... but no GitHub page yet.

**Ege:** What I meant is GitHub Pages hosting.

**Mahda:** When I tried last time there was a write issue.

**Ege:** I see, artifacts are there.. maybe Dave Raggett needs to enable something.
... will contact Dave.

**Ege:** Looking at the HTML file. What is missing?

**Mahda:** I think cross-references might cause problems.
... worked on reference consistency.
... testing has snapshots also.

**Daniel:** Rendered HTML still shows warnings/errors.

**Mahda:** Noticed it today as well.
... will look into it.

**Ege:** I think example 4 has some quote issue in the ID.
... I think we are ready to do the transition.

**Daniel:** I agree, time to swap.

**Ege:** Resources will have a `wot-next` prefix and they are not published either.

**Mahda:** Yes, resources/artifacts need some more work.
... binding documents should be handled as well.

**Ege:** Seems people write plain HTML + JSON schema.
... not as many changes as the TD document.
... Hence, TD for now is fine.

**Daniel:** Could use W3C HTML diff as well... got better recently.

**Ege:** Good point.

**Ege:** Overall timeline.
... Mid-November: transition to new toolchain (after TPAC).
... Mid-December: adding common definitions feature.
... End of January: Publication of next (second) Working Draft.

**Kazuyuki:** The automatic publication system Echidna could be used.
... need to talk with Dave.

**Ege:** Good point.

**Ege:** Timeline after Jan 2027.
... Registry Publication.
... Individual Binding Publications.
... Data mapping is another big topic.
... Subprotocols could cause a new publication also.

**Kazuyuki:** Should use milestone calculator as well, see https://w3c.github.io/spec-releases/milestones/

**Ege:** Yes, backtrack from Sep 2028 (end of charter).
... TD publications will be based on new features or big changes.

**Kazuyuki:** Splitting data mapping capability from main spec, with a note or draft is for example one possibility.

**Ege:** Offloading some part to bindings seems sensible.

[adjourned]

## Slot 2 - 15 October 2026

Cancelled
