# WoT TD Calls

Agenda: https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf#April_15%2C_16_2026

## Slot 1 - 15 April 2026

### Meeting Information

#### Attendees

1. Ege Korkan
2. Kunihiko Toumura
3. Tomoaki Mizushima
4. Mahda Noura
5. Michael Koster
6. Cristiano Aguzzi

- Scribe: Michael

- Regrets:

### Minutes

#### Minutes review from March 19, 25, 26
Ege: (review minutes)
... any feedback?
... Approved

#### Good first issue review
Ege: do these make sense?
Mahda: should these be easy tasks?
... can there be more guidance on what the criteria for completion are?
Ege: not many tasks have known outcomes

#### List of issues to be closed
Ege: are we ready to close these issues?
... no issues noted, closing the list of issues

#### Architecture assertions
Ege: PR #2198
... URI assertions for case sensitivity, link relation types
Mahda: are there dependencies in the tooling?
Ege: there may be a type for a case-insensitive string
Mahda: maybe it can be a checklist or wizard
Ege: not really validation
... other comments?
... merging
... PR #2151 already merged
... next step is to update the architecture document, TD is done
... (creates issue)
... Thank you, Toumura-san

#### Errata in regex for TM placeholder
eg: not detecting double curly brackets
... deferred to TD 2.0
... limited impact and has workarounds
... PR #2199 fixes this
... (walks through PR)
... also fixes an edge case
... any opinions, need more review time?
... have not changed the validation
... no objections, will merge

#### Binding Registry PR #67
Ege: duplicate assertion ID and text clarification
... (walks through diff)
... any discussion?
... merging

#### HTML Beautification
Ege: for example, splitting tags across line breaks
... (closing bracket on a separate line, like brackets in source code)
... found a linting tool called "pretty" that fixes these
Cris: how well known is this library?
Ege: it's well used but not updated
Cris: what if we skip the beautification step entirely?
Ege: prettier doesn't give you separate control
Cris: it seems to be working OK in Angular
Ege: should we keep looking?
Cris: maybe this is OK
Ege: we can merge this after resolving conflicts
... closing PR #59, #60

#### Other discussion?
Ege: any other discussion?
Cris: Modbus binding issue

#### Modbus binding has empty table
Cris: when did the table of defaults disappear?
Ege: (checking earlier commit diffs)
.... it was removed in PR #445
Cris: looks like a mistake
Ege: (scans SHACL files)
Cris: "function" is inconsistently capitalized
... will create a PR

#### Adjourned



## Slot 2 - 16 April 2026

### Meeting Information

#### Attendees

1. Ege Korkan
2. Mahda Noura
3. Daniel Peintner
4. Michael Koster
5. Kunihiko Toumura
6. Tomoaki Mizushima

- Scribe: Ege Korkan

- Regrets:

### Minutes

#### LoRaWAN Binding

https://github.com/w3c/wot-binding-templates/pull/458

Ege: I did some work today
Ege: there were open topics as mentioned https://github.com/w3c/wot-binding-templates/pull/458#issuecomment-4090793932
Daniel: different schemes for device and router are needed?
Ege: yes, as far as I understand, but need more details
Ege: I force-pushed the co-authorship
Ege: I have addressed the concerns in different commits
Ege: so the URI scheme is now an ABNF. Anyone with experience to check?
Mahda: I can do something
Daniel: I have found some tools
Ege: OK, we have failures. Should be investigated.
Daniel: also inconsistent capitalization and underscore usage
Mahda: it would be good to have rules in the registry
Michael: like in a linter warning
Ege: two tables are also there. The first one is in a binding, though.
Ege: now to the security
Ege: (shows the new way with API key security)
Ege: Michael, this works, right?
Michael: yes, that is what I had in mind
Ege: we can give more time for review
Ege: also, we need more work on the introduction and the diagram to explain it

#### Streaming

Ege: do we mean data or media streaming?
Kunihiko: media. Data is already covered with events in TD.
Ege: let's see if there are some issues
Ege: (adds relevant issues)
Kunihiko: OK, I will work on an analysis document

#### Data Mapping

Ege: (shows issue 2034)
Michael: we should look into specific examples. It is part of a workflow. In LoRaWAN, it is obvious. There are multiple steps.
Ege: (notes the steps in the comment)
Daniel: the scaling also makes sense for non–low-level PDUs too
Ege: the discussion result is available at https://github.com/w3c/wot-thing-description/issues/2034#issuecomment-4260667948

