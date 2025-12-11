# TD Call Minutes

## 11 December 2025

### Meeting Information

Scribe: Cris

Attendees:
- Ege Korkan
- Michael Koster
- Tomoaki Mizushima
- Daniel Peintner
- Kunihiko Toumura
- Cristiano Aguzzi
- Mahda Noura

### Agenda
Ege: The minutes should be public all the time. We should do the PR immediately.

### Minutes Review

Ege: https://github.com/w3c/wot/pull/1254 minutes from 3 and 5 December

Ege: Does anyone have any concerns about the minutes? 

Ege: Merged

Ege: Same as before, we have minutes of October. No comments in the PR. Any concerns about not merging?

Ege: none. Merged. 

Ege: now all the minutes are here: https://github.com/w3c/wot/tree/main/minutes/td

### Pull requests

#### PR [2170](https://github.com/w3c/wot-thing-description/pull/2170/)

Ege: Two assertions coming from architecture to TD. Quite straightforward.  Any comments on the changes? Both of them will be manual assertions (i.e., they cannot be tested automatically) 

Ege: Merged.

#### PR [2171](https://github.com/w3c/wot-thing-description/pull/2171)

Ege: I also cover my assertions, here it is a (preview)[https://pr-preview.s3.amazonaws.com/w3c/wot-thing-description/2171/da19c04...fefc943.html]

Ege: Three assertions were imported. I did not move point 20. item to the TD. It is in the informative section, probably we don't need to add anything more. 

Toumura: index.html does not have the same amount of updates

Ege: they are automatically generated. 

Daniel: if we are changing ttl files how can we migrate to the new tooling? 

Mahda: maybe we should freeze document changes for a while, otherwise I need to always sync manually. 

Ege: difficult, but at least we are not updating the information model. It should be easy to copy them, in the end it is just the text. 

Ege: if we are indeed changing something handled by the new tooling, we should create a new issue in the tooling repository. Obviously we need to keep this kind of changes to minimum. 

Ege: I leave it for review

### Tooling Updates

Mahda: I finished doing the core vocabulary definitions. I also implemented a mechanism to opt-out cross referencing. Now same concepts can have a more specific description if they are used in other places. You can also define notes. 

Ege: ActionAffordance should be a cross referencing. 

Mahda: data schema table is now ready a part of the assignment of default types. 

Cris: can you make an example?

Mahda: for example the readOnly has a default. Only in spec but not in jsonschema. Now I'm in security vocabulary defintions. I'm currently evaluating if the generated text matches the current spec. 

Daniel: how do we cross check? In the end, what should do? is there a plan to make a good automated test? 

Mahda: HTML diff could be a good start. But currently, I'm manually reviewing it. 

Ege: copied text would never be wrong. 

Mahda: formatting can be different . It should take not that much. Probably ready before xmas time. 

Ege: what about the diagrams?

Mahda: they will be the final feature to add (I already have the code partially ready). 

Ege: we need to generate the Ids of each assertions (it needs to be static). 

Mahda: I'll look into this. 

### Manageable affordances and Data mapping

Cris: I quickly reviewed before the call. Probably the variables mechanism need to be reviewed. 

Ege: it would be good to still document this examples

Ege: there are some people that is doing mathematical operations using custom keywords. 

### Registry 

#### PR [45](https://github.com/w3c/wot-binding-registry/pull/45)

Ege:  Changed the text to be more assertive, if you don't submit the context file it will break RDF conversion. 

#### PR [46](https://github.com/w3c/wot-binding-registry/pull/46)

Ege: MAY NOT is not a valid assertion, I changed to MAY follow.

Ege: can we merge it? 

#### PR [47](https://github.com/w3c/wot-binding-registry/pull/47)

Ege: created the issue template for new bindings. I turned the requirements in the Entry format table to an issue template. But there are two fields that cannot be put inside the issue template. One is a document with a structure how to do it?

Cris: I think it should be in the same issue template. 
