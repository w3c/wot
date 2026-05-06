# WoT TD Calls

<https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf#April_22%2C_23_2026>

## Slot 1 - 29 April 2026

### Meeting Information

#### Attendees

*   Ege Korkan

*   Daniel Peintner

*   Kunihiko Toumura

*   Tomoaki Mizushima

*   Mahda Noura

*   Cristiano Aguzzi

*   Scribe: Cris

*   Regrets:

### Minutes

### Agenda

Ege: Mostly about data mapping. We will try to see how to move on.

### <https://github.com/w3c/wot/pull/1289/changes>

Ege: Any remarks?

Ege: OK, merging. Michael Koster experimented with an AI note-taking tool, but I don't find it very precise or useful after all. In the future, we might find something better at W3C, and others are actively working on this topic.

### PR 1290 - housekeeping

Ege: Inside the WoT repo, I removed the content of a folder called `td-next-work-items`, as it was moved to the TD repository.

### Data mapping

Ege: I did initial work on the analysis. The current analysis is getting outdated; I used it as a reference. The issue list will be removed in favor of labels. For this work item, the requirements are coming from the bindings, but in the TD we can create a generic mechanism. This is the difficult point.

Ege: Today, I want to establish a common vocabulary to ease future updates and discussions.

Ege: First of all, there is this *side channel* definition. Examples are HTTP headers, BACnet priority.

Cris: There is also MQTT and maybe CoAP headers?

Ege: Not sure if CoAP has headers like HTTP. We need to check.

Cris: Also, we can link my proposal about *Manageable Affordances* as another related issue/PR.

Ege: I'll cite it as a solution.

Ege: So everybody agrees with the side channel definition?

People agree.

Ege: Next is the concept of non-JSON payloads.

Cris: That would include images too (or even video).

Ege: Yeah, we could find a better name.

Cris: For now, we can just exclude images and video.

Daniel: I noticed that there are statements in the section that are only applicable to XML.

Michael K.: We need a way to describe the PDU (payload over the network). We are on the right track, but we need something more complex than JSON.

Ege: We can extend JSON Schema with other, more complex keywords.

Michael K.: Yes, we need to extend it, and if we find useful things that OpenAPI is doing, we can import the same features.

Cris: Are we talking about transformation of payloads or just validation?

Ege: I am thinking about transformation.

Michael K.: Yes, both are important.

Ege: This discussion makes me think that we need a better name for this concept.

Cris: Transformation might lead to performance issues. For example, CSVs might be mapped as simple arrays with the first entry being just the header row, or as an array of objects that represent the rows (e.g., `{temperature: 1, id: 32}`).

Ege: The next topic is operations on data. Last week we discussed this topic. You get the value, but you need to apply some basic mathematical operations. This is widespread in Modbus.

Michael K.: Rounding is a common operation on fixed-point numbers, but also truncation. Probably rounding is more correct.

Cris: Do you think we should support strings too?

Ege: Never seen in the industry.

Cris: What about type conversion or casting?

Ege: Yes.

Cris: Next up is more IoT (or low-level) types, for example `uint` or bytes.

Michael K.: I'm not sure that could be covered by JSON Schema.

Daniel: With maximum and minimum, or a multiplier, you can get close to supporting 32-bit or 16-bit numbers.

Ege: Going back to type conversion, the concrete example is when you have a bunch of low-level values (numbers), and we need higher-level information, e.g., *healthy*, *stop*, *cancelled*.

Ege: AOB?

\[adjourned]

## Slot 2 - 30 April 2026

### Meeting Information

#### Attendees

*   Ege Korkan

*   Kunihiko Toumura

*   Daniel Peintner

*   Mahda Noura

*   Tomoaki Mizushima

*   Cristiano Aguzzi

*   Scribe: Ege (or Michael Koster if he joins)

*   Regrets:

### Minutes

Ege: So, binding registry first and then data mapping.

#### Registry Improvements

<https://github.com/w3c/wot-binding-registry/pull/70/changes#top>

Ege: It clusters information together to make it easier to read.

Ege: It is difficult to look into the diff and understand.

Ege: The uniqueness— is it understandable?

Ege: This provides the overview needed.

Daniel: It would be better to link instead of giving text numbers.

Ege: (provides further explanations)

Ege: The normative rules we agreed upon did not change, just overview text and moving sections around.

Ege: (shows side-by-side view of the ToC)

Daniel: The transition list is too long, no?

Mahda: Maybe another word than *transition* is needed, like *phase*.

Mahda: Too many levels, and “lonely” levels like the review organization under transition to current.

Ege: Transitions are what I thought of from the state machine perspective.

Mahda: We are instructing people, not machines. So a document goes through different phases.

Ege: (explains the lifecycle and transitions section)

Daniel: Maybe a more interactive option would be nicer. For example, you only see the transition you are interested in.

Michael: Also, uniqueness is not clear. Could you explain?

Ege: (notes the feedback in the issue)

#### Data Mapping

Ege: Mahda has shared a vocabulary for CSV that we can use for potential CSV mapping: <https://www.w3.org/ns/csvw>

Mahda: He was active in the semantic web community.

Ege: I am not sure if this belongs to a working group.

Mahda: We can build on top of it too.

Ege: Also a small update on the data mapping topic: <https://github.com/w3c/wot-thing-description/issues/2202> is actually about URI templating.

Mahda: We can create new properties for each, but that would explode in complexity.

Ege: In a way, the TD becomes too big to understand with way too many affordances.

#### RML

Mahda: RML is used for converting data sources to RDF.

Ege: So we would need something similar, but for the output we would need JSON.

> <https://rml.io/specs/rml/>

> RML is defined as a superset of the W3C-standardized mapping language \[R2RML], aiming to extend its applicability and broaden its scope, adding support for data in other structured formats. \[R2RML] is the W3C standard to express customized mappings from relational databases to RDF.

Mahda: I will have a further look.

Ege: Maybe we can use some concepts and vocabularies they have defined.

Mahda: Yes, it would be good to reuse them.
