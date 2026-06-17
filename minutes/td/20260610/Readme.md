# WoT TD Calls

<https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf#June_10,_11_2026>

## Slot 1 - 10 June 2026

### Meeting Information

**Attendees:**

* Kaz Ashimura
* Kunihiko Toumura
* Daniel Peintner
* Michael Koster
* Ege Korkan
* Mahda Noura

**Scribe:** Kaz

**Regrets:**

### Minutes

#### Previous Minutes

<https://github.com/w3c/wot/pull/1299>
-> <https://github.com/w3c/wot/blob/53a0879590270e38edfee493158c6026bbb274b0/minutes/td/20260603/Readme.md> Rendered MD

mjk: any comments?
... any objections to PR 1299?
... heard none, merged

#### Toolchain Tutorial

\=> <https://github.com/w3c/wot-thing-description-toolchain-tmp> Toolchain repository

Mahda: (shares her screen)
... (shows the WoTIS (Web of Things Integrated Schemas) page above)
... automate the generation of:
... 1. WoT resources: SHACL Shapes, JSON Schema, JSON-LD context, RDF, and Mermaid diagrams
... and 2. Documentation: TD specification and ontology specifications
... using LinkML for modeling TD
-> <https://linkml.io/linkml/intro/tutorial.html> LinkML Tutorial

Mahda: step 1 is WoT resource generation
... then step 2 is WoT spec generation

Daniel: do we need output 1 itself to get the spec?

Mahda: no
... that's an extra result
(or intermediate information to get the final spec)

Mahda: to contribute or test
... see the "Quick Start" section
\[\[
git clone <https://github.com/w3c/wot-thing-description-toolchain-tmp.git>
cd wot-thing-description-toolchain-tmp
uv sync
]]

Mahda: to use uv, you need to have Python
.... then
\[\[
uv run whotis
]]

Mahda: see the "Usage" section for how to use it
-> <https://github.com/w3c/wot-thing-description-toolchain-tmp#usage> Usage

Mahda: (describes the options of the "wotis" command)
... use the "--assertions-csv" option for wotis to specify the path to store the assertions
... questions?

Ege: it would be good to show the Schema as well

Daniel: what happens after the LinkML procedure?

Mahda: there is post-processing
... a generator for documents in general
... for diagrams, etc.

Mahda: for example, "extra\_slots" is now merged into the LinkML part

Mahda: schemas are written in YAML
-> <https://github.com/w3c/wot-thing-description-toolchain-tmp/tree/main/resources/schemas> Schemas written in YAML

Daniel: what about the "annotation" section (line 315 from extra\_slots)?
-> <https://github.com/w3c/wot-thing-description-toolchain-tmp/blob/main/resources/schemas/thing_description.yaml> line 314 of "thing\_description.yaml"

Mahda: if we want to have this in some ontology

Ege: all the annotations are automatically generated (based on the Schema definition)
... depending purely on the structure
... Mahda has been working on generating the HTML spec based on that
... we can also add an additional section manually

Mahda: Editors' Notes can also be included

(some more discussion around the "annotations" section of the Schema)

Mahda: we should avoid updating the pattern

#### LinkML Tutorial part 1

Mahda: let's look at LinkML itself
-> <https://linkml.io/linkml/intro/tutorial01.html> LinkML Documentation - Part 1: Creating your first LinkML schema

Mahda: (goes through the LinkML documentation page above)
.... (starting with "Your first schema")
.... (visits the "classes" section)
... attributes like id, full\_name, etc.

Daniel: if you scroll down to the "Converting to JSON Schema" section...

Mahda: it's a conversion from YAML to JSON Schema
... then creating and validating the data using data.yaml

#### LinkML Tutorial part 2

-> <https://linkml.io/linkml/intro/tutorial02.html> Part 2: Adding a container object

Mahda: (describes the "Nesting lists of objects" section)

#### LinkML Tutorial part 3

-> <https://linkml.io/linkml/intro/tutorial03.html> Part 3: Adding constraints and performing validation

Daniel: question about the results
... how much difference is there between the current JSON Schema-based approach and this LinkML-based approach?

Mahda: checking what has been converted to LinkML
... there is a section called "Example data" including "bad-data.yaml" and "better-data.yaml"
... "@context" from the basic-td-invalid.jsonld can be TD ver 1.0 or 1.1

Mahda: we should also have the TypeScript generator

Daniel: maybe it could be part of the Toolchain

Mahda: will work on testing from June onward
... any questions for today?
(none)

Mahda: in that case, we should schedule another tutorial session
... (shows example 73 from the TD 2.0 draft)
-> <https://www.w3.org/TR/wot-thing-description-2.0/#example-73> Example 73 from WoT Thing Description 2.0 spec

Mahda: let's discuss "snippets" during another call
-> <https://github.com/w3c/wot-thing-description-toolchain-tmp/tree/main/resources/snippets> snippets directory

Mahda: let's continue the discussion tomorrow on June 11

mjk: great
... anything for today?
(none)
