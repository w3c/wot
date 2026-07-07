# WoT TD Calls

https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf#July_01,_02_2026

## Slot 1 - 01 July 2026

### Meeting Information

**Attendees:**
* Cristiano Aguzzi
* Kaz Ashimura
* Ege Korkan
* Kunihiko Toumura
* Daniel Peintner
* Christian Glomb
* Michael Koster
* Cristiano Aguzzi

**Scribe:** Daniel

**Regrets:** 

### Minutes

#### Minutes Review
-> https://pad.w3.org/p/2026-07-0102-wot-td-minutes

Ege: <walks over minutes>
... Any objections or things to change?
-> None -> minutes approved

#### Simple PRs 

##### PR 2207
-> https://github.com/w3c/wot-thing-description/pull/2207 Respec Reference Fixes

Ege: Detected ReSpec issues.

Daniel: Shall we report back to ReSpec?

Ege: We used a different citation notation as is suggested now.
Ege: We are not consistent and should use bracket notation everywhere.
... Anyhow, will open an issue on ReSpec side.
... Will keep the PR open until we know.

##### PR 2205
-> https://github.com/w3c/wot-thing-description/pull/2205 Fixes to JSON Schema to allow a single URI for the context value

Ege: We had a regression.
... Toolchain repo should contain tests.

Daniel: Should we add a test?

Ege: I think we disabled some tests, and JSON schema is not tested.

Cristiano: Yes, there were some issues, and therefore we disabled them.

Daniel: Can we enable the basic ones again to catch such problems?

Cristiano: Yes, we can.

Ege: Okay, let us split the tests.
... Mahda has tests in place for the new toolchain.
... Anyhow, toolchain might take a bit of time, and we should fix it also here.
... There are some other problems; will check re-enabling tests later offline, see issue 2210.

Ege: PR can be merged, right?
-> Yes, merging PR 2205.

##### PR 2208
-> https://github.com/w3c/wot-thing-description/pull/2208 Delete static.html

Ege: Static HTML not needed.

Michael: Add it to gitignore?

Ege: It is never generated.

Kaz: static.html was used for publication preparation and is not needed here.

Kaz/Ege: Maybe not really needed in publication folder either (we can revisit publication workflow later).
-> Merging PR 2208.

#### Schedule 
-> https://github.com/w3c/wot/blob/main/planning/wg-schedule.md

Ege: Charter has date now.
... End date is June 2028.

Michael: Depends on "when" charter starts (2 years).

Ege: Alright, once we know the date, we can fix the dates.

Kaz: Chicken and egg problem. We can think about estimation.
... Can be put in Section 3.1.

Ege/Kaz: We might want to check with Sebastian.

Kunihiko: The W3C Process has changed, and there is no PR phase anymore; we should remove this phase.

Daniel: Ben mentioned that already.

Ege: Hmm, I remember that discussion, but maybe it was forgotten.
... Will fix it right now.
-> https://github.com/w3c/wot/pull/1303 wot PR 1303 - Remove PR transition step from TD Schedule

#### Data Mapping 
-> https://github.com/w3c/wot-thing-description/pull/2201

Christian: Will update the PR.
... I am looking into how CSV data can be described in a TD.
... There are, for example, weather stations that use CSV.
... Will have something to show tomorrow.

#### Bindings

##### Bindings Readme
-> https://github.com/w3c/wot-binding-templates/pull/467 Links to LoRaWAN and OPC UA Bindings

Ege: We still use the word "template."
... Updates links.
-> No objections -> merging PR 467.

##### Readability Registry
-> https://github.com/w3c/wot-binding-registry/pull/70 Readability Improvements

Ege: We merged a big PR (PR 70).
... Anyhow, there are remaining issues and problems.
... For example, https://github.com/w3c/wot-binding-registry/issues/76 URI Scheme compliance clarifications.
... We are not specific enough.
... Any opinion?
... Should we be strict or more permissive?

Michael: What is the impact of conflicts?
... Maybe registered at IANA and conflicting with the registry.

Ege: SNMP has such a conflict already.
... If we use Sebastian's proposal, I think...
... The ABNF differs.
... Maybe no real conflict, but a subset.

Cristiano: Subset is fine, but declare registered syntax.
... Just mention this term is not used or supported.
... In case of BACnet, it is different; might stay "initial" forever.

Ege: Initial state might be enough.

Cristiano: Does "initial" guarantee interoperability? Does it offer community acceptance?

Kaz: W3C specs define mediaTypes and are registered with IANA.
... We should follow the same approach.
... Hence, the scheme should be registered at IANA also.

Ege: Decisions summary:
... 1) Protocol spec defines the URI scheme but does not register to IANA -> stay in initial.
... 2) Initial submission has a URI scheme that does not comply with the one registered in IANA -> accepted if subset but encourage to use official scheme.
... 3) Transition to current for 2) --> Tend to say we "cannot."

Ege: Any other business?

[Adjourned]


## Slot 2 - 02 July 2026


### Meeting Information

**Attendees:**
* Ege Korkan
* Kaz Ashimura
* Erich Barnstedt
* Michael Koster
* Kunihiko Toumura
* Christian Glomb
* Daniel Peintner

**Scribe:** 
Kaz

**Regrets:** 

### Minutes

#### TD
##### Data Mapping Analysis Extension
-> https://github.com/w3c/wot-thing-description/pull/2201 PR 2201

Ege: (goes through the PR)
... Note 3 around JSON Schema.
... Understandable format for implementers.
... Note 4 around transformation.

--> https://github.com/wiresio/wot-thing-description/blob/d08c971343302ab2fcdec7a047016cc521523c95/planning/work-items/analysis/analysis-data-mapping.md#summarized-challenges Data Mapping Analysis

Christian: (goes through the document)
... (problems with his PC browser and needs to reboot it)

Kaz: We should add some more text about the introduction and abstract at the top
.... of the document, given it is getting bigger and bigger.

Ege: Yeah, can do that.

Christian: (browser rebooted)
... (resume his description)
... (describes the "Exercise 1")
[[
"TOA5","CR1000","CR1000","12345","CR1000.Std.32.07","CPU:weather.CR1X","1234","Weather"
"TIMESTAMP","RECORD","AirTemp_C","RH","WindSpeed_ms"
"TS","RN","Deg C","%","m/s"
"","","Avg","Avg","Avg"
"2026-06-25 10:00:00",1,23.4,56.2,4.8
]]

Christian: This is how the payload looks like.
... (shows the "toa5-weather.td.json", "toa5-weather-separate.td.json" and "toa5-weather-readall.td.json")

Cristiano: CSV columns show different data.
... One single row or multiple rows?
... How to handle the timestamps?

Christian: That is an additional challenge we have.
... Can try multiple rows.
... But not sure about the data schema at the moment.

Kaz: Thanks.
... By the way, where is the example data available?

Christian: Currently just on my local PC.
... But can put it on the node-wot repository.

Kaz: Would be great if you could put that on the node-wot repo.

Ege: Experimental feature for multiple features and Things.
... Something specific to CSV.
... Also, endian issue has delimiter problem.
... That is something I am thinking about where to belong.
... We could think about putting the data in the form, for example, for LoRaWAN.

Christian: (shows toa5-weather-separate.td.json example)

Ege: Mapping around "nw:propertyMappings."
... Basically, should analyze the time series.
... CSVs on different endpoints.
... A single resource could have multiple properties.
... For example, byte stream and property values.
... Do not know if we have a good way to handle that.
... Reading multiple registers at once.
... Payloads to be mapped with multiple properties.
... People might be reading multiple resources at once.

Cristiano: Yes, possibly multiple registers could be the target.

Kaz: We need to think about the granularity and the unit for the interaction in that case.

Ege: Right.
... (shows the node-wot/packages/binding-modbus document)
-> https://github.com/eclipse-thingweb/node-wot/tree/master/packages/binding-modbus#combination binding-modbus#combination

Ege: The gateway would expose the data.
... What if the gateway wants to handle it in a different way of the affordance?

Christian: Array of objects and time series available?

Ege: Could have two forms at once.
... Just one weather versus history of weather.

Kaz: So we need to redefine what kind of "chunk" to be handled as an "object" at once.
... That is kind of similar to the topic of grouping and history management from ECHONET.

Ege: Right.
... So probably we need to redefine a new handling method.
... But need to have more discussion.

Ege: Any other points for today?

Christian: No.

##### Tooling
-> https://github.com/w3c/wot-thing-description/issues/2209 PR 2209

Ege: Would like to talk about the transition to the new tooling.
... But need Mahda.
... So let us discuss that next time.

[Adjourned]
