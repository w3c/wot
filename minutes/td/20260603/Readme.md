# WoT TD Calls

<https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf#May_20_2026>

## Slot 1 - 03 June 2026

### Meeting Information

**Attendees:**

* Ege Korkan
* Kaz Ashimura
* Daniel Peintner
* Kunihiko Toumura
* Mahda Noura
* Cristiano Aguzzi

**Scribe:** Ege

**Regrets:**

### Minutes

#### Organizational

Ege: no meeting tomorrow on June 4: public holiday in Germany  
... next week Wednesday on June 10: toolchain tutorial

#### Previous Minutes

<https://github.com/w3c/wot/pull/1296>

Ege: any remarks?  
Ege: heard none, merging

#### PR 70 on Readability Improvements

<https://github.com/w3c/wot-binding-registry/pull/70> Readability Improvements

Ege: uniqueness, transitions, and stability—these are partly addressed  
Ege: there was also some review from Daniel; I missed that

\> shows <https://pr-preview.s3.amazonaws.com/w3c/wot-binding-registry/pull/70.html> (Preview HTML)

Ege: custodian moves to status  
Ege: there is a new term called "entry property"

Mahda: is it a column or a row?

Ege: column in the final table

Cris: it should be value, no?

Ege: in the entry format section it is a property, but good point

Cris: let's ask a native speaker

Mahda: not sure if this needs a term. It sounds generic compared to the other ones

Ege: it came from the uniqueness discussion

Mahda: it can be confusing with a TD property

Kaz: thank you for the work. I am OK with the word or another word  
... giving an example of that would be good

Ege: (adds to the comment)

Daniel: confusing with the description. It should maybe be called a characteristic

Ege: I will find a proposal. "Characteristic" sounds better  
Ege: here is the uniqueness definition  
Ege: I have improved the administrative section. Link stability and immutability are separated

Kaz: table headers need to be more visible  
Kaz: editor's notes containing MUST are unusual  
... also not sure about including normative statements in the registry

Ege: checking TTML. They have it, but not capitalized  
-> <https://www.w3.org/TR/ttml-profile-registry/> TTML Media Type Definition and Profile Registry

Kaz: W3C as a whole should clarify this

Ege: transitions and lifecycle are now merged. Otherwise, the content is the same as before

Daniel: we need better layout for the visual version. What I mentioned before with the carousel can be implemented here. It is a lot of text

Mahda: #req-tran-init-curr-review is confusingly written. It should be improved

Daniel: I think we can merge it sooner rather than later to start working on other aspects

Ege: yes, I will work on the styling options and then we can merge next week

#### readOnly / writeOnly

-> <https://github.com/w3c/wot-thing-description/issues/1541> Issue 1541 - Replacing writeOnly and readOnly with writable and readable

Ege: (summarizes the discussion)

Cris: nothing more to add. Keeping them is confusing without a radical redesign  
... if we keep them, one improvement would be to separate the data schema in the property into a `data` term. Ideally, we should remove them

Kaz: we should clarify which terms are used for which purpose and where they are used

Ege: AOB?
