# WoT TD Calls

## Slot 1 - 18 February 2026

### Meeting Information

#### Attendees

- Ege Korkan  
- Marc Riedlinger  
- Mahda Noura  
- Kunihiko Toumura  
- Tomoaki Mizushima  
- Cristiano Aguzzi  
- Michael Koster  
- Mahda Noura  

- Scribe: Marc Riedlinger  
- Regrets:  

#### Agenda
* WoT Resources  
* Toolchain Updates  
* Organization of Issues  

### Minutes
Ege: Minutes of the last meeting have been merged.  
.. There is a problem with wot-resources: https://www.w3.org/2019/wot/.htaccess  
.. There are missing items that have not been merged yet, though they should have been years ago.  
.. Some errors (404) are still occurring with certain resource links.

Mahda: I have been working on a PR related to generating schemas in the spec.  
https://github.com/w3c/wot-thing-description-toolchain-tmp/pull/49  
.. I tried generating diagrams with the LinkML Mermaid generator (which allows customization).  
.. However, the contents of tables cannot be customized → semantics cannot be added.  
.. This is not really usable for our case → we need to write a custom generator script (`visualization_generator.py`).  
.. Still, it is difficult to customize, e.g., due to auto‑layouting.  
.. Resolving overlapping figure components is difficult.

Mahda: There is an error with the `Thing.id` property — it is mandatory in the diagram but not in the table further down in the spec. There are also styling inconsistencies.  
With the Affordance classes, some properties are not shared (e.g., `safe` is missing within `PropertyAffordance`).  
.. `ActionAffordance` also misses the `synchronous` property.

Ege: I might have introduced the issue somewhere.  
.. I will share links to the affected files:  
auto‑generated: https://w3c.github.io/wot-thing-description/#sec-vocabulary-definition  
1.1: https://www.w3.org/TR/2023/REC-wot-thing-description11-20231205/#sec-vocabulary-definition  
2.0: https://www.w3.org/TR/2025/WD-wot-thing-description-2.0-20251104/#sec-vocabulary-definition

Mahda: There is also inconsistency with `InteractionAffordance`. I have an idea how to fix it.  
.. `MultiLanguage` is also a corner case because LinkML does not support it.

Ege: We currently do not define what `MultiLanguage` is.

Mahda: I would expect it to have a key and a language tag.

Ege: This is still much better than what we currently get. It reduces manual effort a lot.

Cris: We are creating new code that has to be maintained. It would be better if things worked out of the box with the shipped generator.

Mahda: I also do not favor the option of having custom code (writing extra code around LinkML).  
.. I hope we can use the benefits of LinkML for other generators in the future.  
.. But it is not working for the document.

Ege: You have not merged it yet?

Mahda: Not yet. I will merge it, but `MultiLanguage` needs to be fixed first.

Ege: The 1.1 diagrams are correct. The 2.0 versions contain errors, though. I have no idea how that happened.  
.. Since we are transitioning to something else, this is fine for now.  
.. Next topic: Organization of Issues.  
.. I went through 200 issues and assigned them to the correct categories.  
.. There were many outdated issues.  
.. Ten resolved issues will be closed tomorrow:  
https://github.com/w3c/wot-thing-description/issues?q=is%3Aissue%20state%3Aopen%20label%3A%22Propose%20closing%22  
.. Mahda will work more on the semantics side; other responsibilities still need to be decided.  
.. Larger issues need dedicated ownership (1–2 topics max per person).  
.. I will take over Common Definitions, Overall Organization, and Registry.  
.. I identified some smaller sub‑steps to help structure some epics.

Cris: I agree that there should be a one‑to‑one mapping (person to epic).

Ege: The workflow is to pick from the categorized list, assign it to yourself, and move it to “in progress” when actively working on it.

Mahda: Why don’t you identify smaller topics first, so people can get involved more easily?

Ege: Good idea, but we do not have a label for that yet (like “good first issue”).

Mahda: We can take some inspiration from LinkML (I will send the link to Ege).

Ege: A good first topic should be solvable on its own in a couple of hours.  
.. The most interesting topics are in “new features”.

Cris: I can take over Affordance Uniformity, but I won’t take the whole epic.

Michael: This is just about having someone responsible for each topic to push it forward. It does not mean you have to tackle everything alone.  
.. You can assign Data Mapping to me.  
.. I do not know how epics are handled in GitHub, but we should figure it out.

Ege: I will take a look.

#### Minutes Review

## Slot 2 - 19 February 2026

Cancelled

### Meeting Information

#### Attendees

- Ege Korkan  
- Michael Koster  
- Kunihiko Toumura  
- Tomoaki Mizushima  

- Scribe:  
- Regrets: Marc Riedlinger

#### Agenda

### Minutes
