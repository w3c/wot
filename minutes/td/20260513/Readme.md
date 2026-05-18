# WoT TD Calls

<https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf#May_13_2026>

## Slot 1 - 13 May 2026

### Meeting Information

#### Attendees

*   Ege Korkan

*   Daniel Peintner

*   Michael Koster

*   Kunihiko Toumura

*   Mahda Noura

*   Scribe: Mahda

*   Regrets:

### Minutes

Minutes from 6–7 May

Topic: <https://github.com/w3c/wot/pull/1294/changes>

### Streaming analysis

PR <https://github.com/w3c/wot-thing-description/pull/2203>  
PR from Toumura-san. The analysis is about additional TD vocabulary for streaming-related affordances and bindings.  
This is a good topic to show that this is generic, to see which aspects belong to TD and which to protocol bindings.

Daniel: what would be the use case for large text files or HTML files? Would it fall into the same category?  
Ege: that would be in the chunking category, I guess, if you need to send a big JSON payload  
... for the CoAP binding there was a discussion about this chunking

Cris: I think a better name would be a media analysis. I see these as similar issues, like chunking a large file  
... HTTP is similar; users don’t see it. I would rename it simply

Ege: is that fine for you, Toumura-san, to rename?  
Kunihiko: yes

Ege: there are some open questions mentioned in the analysis  
... also some related issues to streams of data

... do you want to add something, Toumura-san?  
Kunihiko: yes

We will merge the PR asynchronously, but keep the draft title inside the document and also do the renaming.

### Bringing back writable and readable

Issue <https://github.com/w3c/wot-thing-description/issues/1541>

Ege: some years ago we had these terms. We use them on the JSON Schema level. Back in the day, there were some issues about writeOnly not always meaning observable, and when we use writeOnly it becomes restrictive  
... Ege has provided a use case for why this came back again. In cases like MQTT and LoRaWAN, there is no way to force the device to send the latest value. I believe the device should send an event. People associate these with properties. What happens in gateway implementations is that this gets cached  
... turning an event affordance into observable. In real implementations, reserve these events for alarms and so on  
... how can we get only observable-only, which we cannot express at the moment? Currently we express this with both readProperty and writeProperty set to true

Daniel: I am not totally sure why we changed writable and readable. I think the main idea was to align with JSON Schema. What would it mean to add those terms? You could have both and have conflicting statements. Or do we want to deprecate the existing terms?

Ege: my personal idea was to replace them; it is open for discussion

Daniel: I would also advocate for replacing them. If we do that, we should make it more visible in the title of the issue

Cris: I think the existing mechanism with MQTT still makes sense and is fine. I would not force people not to do this

Ege: you would get the value that was published a month ago  
Cris: you have to read the current value  
Ege: you assume that it is the latest value. In the case of HTTP and CoAP, you will get the current value. For me, it is semantically not the same thing

Cris: it depends on how much you poll and on the nuances of the device and its properties. I don’t know if we want to force our semantics on people

Cris: the second comment is, if you want to bring back readable and writable, do we want to remove them or keep both?

Ege: I think putting readable in JSON Schema would be kind of fine. There are different solutions:

*   not allow readability annotations for data schemas, which means no readability in action and event schemas
*   allow readable/writable in data schemas, which means the same behavior as now but with other keywords
*   allow readable/writable at the property level and readOnly/writeOnly in data schemas

In JSON Schema, implementation is not even enforced. I looked at the AsyncAPI spec. The only way they have it is that it is possible, but they don’t say what it really means.

Cris: I don’t know when, but I heard it mentioned that JSON Schema was born to validate JSON. If it is payload, it doesn’t make sense to have readOnly and writeOnly

Ege: Ege tries to check this on the OpenAPI website

Cris: we should think about our own business logic. Right now we miss this observability. We need to think about whether we want to drop these everywhere because they will cause confusion

Ege: there is no need for readOnly and writeOnly in data schemas

Cris: I think they don’t fit well there

Cris: my final comment is that this is a shortcut for knowing from the forms whether this is a read operation or a write operation. What if we just don’t write anything and the user deduces this from the forms? Should node-wot, if you try to write a property, look at the forms or refuse to do so if you declare it?

Ege: for me, that is a validation and linting problem  
Ege: I will try to ask for more implementation feedback and inputs on this—whether people felt weird about this or not

### Default values

Issue 1298

Ege: Michael had raised concerns about this some time ago

Mahda: I am not sure how they should be interpreted in the toolchain implementation

Mahda: when you say “with default”, doesn’t it mean they have a default?

Ege: maybe another column with “default value”

Mahda: but that is not so common, right? At the Thing level, there are none, for example

Daniel: I wonder why we need these default values. It could be split into the part that is needed  
... what if, when it is with default, we mention what those keywords are?

Ege: with `op` it is tricky because it is conditional  
Ege: we can maybe combine it with the description

Mahda: but that would change the meaning of the description

Ege: can this be expressed in LinkML, the default values?  
Mahda: I need to check this

I think a separate section is good to have to explain the with-defaults.

### Toolchain Updates

Mahda: worked on showcasing the with-default values in the table  
... the `assertions.csv` is also generated and tested based on the current assertions; they match  
... now working on the PR that focuses on validating TD snippets in the spec

... you write one TD that is used within multiple snippets

Daniel: we can have full-fledged TDs, snippet start and snippet end, and then validate the full one  
Ege: we don’t have to do it on the full examples

Ege: you can have a JavaScript file, and in there you put some keywords indicating where

Mahda: also, the placeholder for the snippets in the `index.template.html` needs to be defined
