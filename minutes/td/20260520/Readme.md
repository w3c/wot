# WoT TD Calls

<https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf#May_20_2026>

## Slot 1 - 20 May 2026

### Meeting Information

#### Attendees

*   Ege Korkan

*   Mahda Noura

*   Cristiano Aguzzi

*   Daniel Peintner

*   Michael Koster

*   Kunihiko Toumura

*   Scribe: Cristiano

*   Regrets:

### Minutes

**Minutes from 13 May**

Ege: it was a single meeting last week (as this week). Any remarks?

Ege: hearing none, merged.

### Toolchain updates

Mahda: I'm showing what I did regarding the spec generation. All the diagrams are generated from LinkML; sizing is difficult to get right. Smaller diagrams are rendered better.

Ege: for the Editor’s Draft, it is OK, but for the final version we can beautify it.

Cris: how is the beautification process?

Ege: I use an SVG editor.

Mahda: tables are correctly generated. We can add IDs to LinkML annotations.

Cris: how are newlines handled in the LinkML file?

Mahda: Markdown is rendered by Bikeshed; newlines are taken 1:1.

Ege: how can I use IDs in the Markdown sections?

Daniel: once we finish, I’d like to have a final review of the whole process. We used to have `index.template.html`; is it still the case?

Mahda: yes.

Ege: back to the previous question, how can I make an assertion inside a Markdown annotation?

Mahda: you can use a paragraph type and add an ID only to the section needed. There is also an enum that renders a table with all the values.

Ege: there were also some updates in LinkML that allowed us to remove some custom workarounds we had made.

Mahda: correct. Also, I evaluated the JSON Schema generation, and it seems to be 1:1 with the manual schema we created. However, the generated JSON Schema is not exactly identical to the manual schema.

Ege: we should also check TypeScript generation. OK, next week we will show how to use the new tooling.

Daniel: is Bikeshed just for tooling, or would it be better if we move completely to it?

Mahda: I didn’t do a complete migration; it is too much work for now. We can consider it in the future, even if I don’t think it’s worth the effort.

### Bindings

Ege: there was confusion in the rechartering process, where the binding document has a conformance section even though the latest decisions were toward having them as Notes. Having them as Recommendations would also force us to duplicate some assertions between TD and binding documents.

Cris: the Scripting API had this problem too for a while. Last time we chose to keep it, as it was allowed to have normative statements in Notes.

Ege: yes, but this is now removed.

Cris: OK, then we should also bring this issue to the Scripting API.

### Readable, writable, and observable

Ege: people should never look too much inside forms.

Daniel: what I don’t like about the current situation is that we could have conflicting information. How can we get rid of this conflict? To me, reading forms is not that bad.

Ege: people should only look at the affordance level. I agree there should be no conflict.

Cris: what about changing forms to a map, so that it is easier to read also for humans?

Ege: let’s discuss this also next week.

Ege: AOB?
