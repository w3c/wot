# WoT TD Calls

https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf

## Slot 1 - 30 September 2026

### Meeting Information

**Attendees:**
* Ege Korkan
* Daniel Peintner
* Mahda Noura
* Tomoaki Mizushima
* Kunihiko Toumura
* Christian Glomb
* Kazuyuki Ashimura
* Michael Koster

**Scribe:** Mahda Noura

**Regrets:** None

### Minutes
-> https://pad.w3.org/p/2026-09-24-wot-td-minutes 24 Sep 2026

**Ege:** last week we had one session on 24th September, the minutes are for that date only.
https://github.com/w3c/wot/pull/1325
(approved)

#### Agenda for Today
**Ege:** (skims the basic agenda items on the TD wiki)

**Ege:** is there any item you would like to add to the agenda?
(None)

#### Minutes Review
https://github.com/w3c/wot/pull/1325 16-17 Sep 2026

**Ege:** any feedback on the minutes?
(none; approved)

## TPAC Planning

**Ege:** any topic ideas for the TPAC 2026?

**Ege:** The PlugFest agenda has grown. It can be found in the Wiki. 

**Ege:** There is a question open for Mahda regarding the physical AI and WoT topic. Do you want to drive this?

**Mahda:** yes

**Ege:** We have yet another wiki for the agenda for the TPAC 2026 planning.
... for practical reasons it is nice to have it for other people to track.
... any other submissions that we should write here? 
... Kazuyuki, maybe you want to add the smart city?

**Kazuyuki:** yes, given there will be participation from Japan and other regions, it would be nice to have the smart city breakout session organized in the morning.

**Ege:** for Thursday and Friday meetings there will be two TD calls. I will go ahead and change the schedule to match this agenda. I am guessing everybody interested will join one or both. One thing is to make a summary of the work to help newcomers get up to speed. We have invited experts who should know where and how they can contribute.
... I think the OPC Foundation part is also included. I will propose that we do the summary of the TD work, new bindings and changes, binding registry. 
... Media session I think can go to Media Streaming.

**Kazuyuki:** My suggestion is that having separate breakout sessions in the early morning, we can have a 1-hour discussion with the MEIG.

**Daniel:** I have a suggestion regarding the timing. Maybe we can reduce the scripting API call to 30 minutes. 

**Ege:** the media streaming will be part of a breakout session.

**Ege:** are you fine with this plan of the media streaming being part of the breakout session?

**Kunihiko:** I currently do not have a preference for this, both alternatives would be fine.

(Ege adapts the corresponding planning in the wiki page.)

**Ege:** Geolocation topic, we may make a breakout session to see whether there are other groups who are interested in the topic.

**Kazuyuki:** I thought Sebastian was talking with the Spatial and Robotic Working Group, maybe we would like to talk with the chairs. It could be handled with the media breakout session at the same time. We might want to ask about robotics as part of the Spatial Working Group. 

(Ege moves this to the agenda too)

## Subprotocol Discussion

**Ege:** I am not done yet with the subprotocol collection. I talked with Klaus Hartke from Siemens, he was commenting before regarding the URI scheme. Now we have an issue with the subprotocols e.g. coap+ws. Some cases you don't need a subprotocol, but sometimes this is the case. I want to provide a list of these protocols. 

... In the TD call around two weeks ago we discussed this topic. Last week we were talking with Michael Koster about LWM2M, they always use the same URI scheme, which is quite interesting. However, even though it is built on top of CoAP, you need to use a specific library. 

... my suggestion is that we use an additional term like binding or driver. We could have for instance coap+ws, MQTT, or so on. In this way we avoid the problem of IANA or IETF rules. Some may say that we are not solving the problem, but in the implementation part we are solving this. 

... the protocol space is really messy. Does anyone have any opinions on this?

**Michael:** we realized in the discussions that we have our URI schemes. 

**Ege:** this is governed by our own registry. It also avoids the problem that for HTTP binding you should look for HTTP and HTTPS. 

... I do not find a solution that does not break a rule somewhere. In the scripting API I do not see a big problem.

... I will complete the list and write some TD instances.

## Data Mapping

**Ege:** Christian has made a list and a PR #2234.

**Christian:** I started with CSV mapping a month ago and presented an implementation already. The decision was to move to the next user story. We had an agreement for defining new terms for the mathematical operations. Based on the feedback I got is to leave some core terms and leave other terms as payload bindings. This summary I have put here in the GitHub repo discusses this. For the CSV payload binding I already have an implementation that I put in the node-wot branch. 

**Ege:** We have some terms for extracting bits, in TD we don't have any information on payload binding. Terms like bitCompose, bitExtract... to declare the exact terms. The alternative would be to put media type bindings, that we currently do not do. That will make the TD longer. 

**Christian:** We would have then XML, would be better to separate this.

**Ege:** I like this because this reduces the decoupling.

**Mahda:** are we trying to map the data source too like CSV, JSON, XML... i.e. where the data comes from?

**Ege:** yes.

**Mahda:** have you looked at YARRRML and RML which focus on lifting CSV and TSV to RDF, maybe here we need a similar mechanism.

**Daniel:** What do we currently miss in the registry is the payload binding.

**Ege:** we have the place, but we don't have the content. We specifically left it out, it is not clear for some protocols whether they are platform...

**Daniel:** there is an original link for XML binding template in the registry. 

**Ege:** all of the payloads will have their own binding, and they will specifically define the value this keyword will take.

**Christian:** presents a data mapping example for the weather and storm data. First, what I do here is a CSV extraction, and the headers I want to consider and the headers I don't want to consider. The keys are derived from header rows. After that I can go to core wire mapping and that combines it with the JSON pointer and pick the first timestamp. We can also consider generating time-series data and historical data. We have also the WindSpeed, I am not sure whether JSONPath supports wildcards. 

**Christian:** I think this approach is more elegant compared to the initial one started with node-wot.

Examples presented by Christian: https://github.com/eclipse-thingweb/node-wot/blob/glc-datamapping/examples/datamapping/toa5-weather.td.json

**Daniel:** How will this object payload look like? Is the timestamp always a key?

**Christian:** yes. There are two ways, we can put it in an array or an object where we have key-value pairs.

**Daniel:** are both possible?

**Christian:** I think it is one degree of freedom in TD. 

Implementation feedback on the implementation would be good. 

## Slot 2 - 1 October 2026

### Meeting Information

**Attendees:**
* Ege Korkan
* Kazuyuki Ashimura
* Christian Glomb
* Kunihiko Toumura
* Erich Barnstedt
* Tomoaki Mizushima
* Daniel Peintner
* Michael Koster

**Scribe:** Ege Korkan

**Regrets:** None

### Minutes

#### Agenda for Today
**Ege:** (skims the basic agenda items on the TD wiki)

**Ege:** only bindings and data mapping today.

#### EtherNet/IP Binding
-> https://github.com/w3c/wot-binding-templates/pull/484 PR 484 - Draft EtherNet/IP and S7Comm protocol binding
-> https://deploy-preview-484--wot-binding-templates.netlify.app/bindings/protocols/ethernetip/ Preview

**Ege:** some updates to the EtherNet/IP right?

**Erich:** Yes, the binding got reviews from Rockwell Automation, MRIIOT (freelancer in USA).

**Erich:** Rockwell said that we should not reference the open source libplc project. We reference the official Rockwell documentation.

**Erich:** So I am happy with this. Next step would be to make the update to the open source implementation.

**Erich:** For S7, it is done purely based on open source implementation. 

**Ege:** We will talk about it too.

**Ege:** (shows the binding)

**Ege:** structure def is optional because some drivers read from PLC directly.

**Kazuyuki:** why two protocols, EtherNet/IP and S7, in the same PR 484?

**Ege:** ah yes, we can separate them. 

**Erich:** regarding the vocabulary tables, e.g., from "4.4 Primitive Data Types", we should remove the "Closest XML Schema datatype" to avoid confusion.

**Kazuyuki:** that's fine, and we can refer to their own defined ontology, i.e., eipv.
... but do they themselves refer to another standard ontology as the basis of their definition?

**Ege:** not really.
... they define all the vocabulary themselves.

**Ege:** Daniel, can you check all the bindings?
... (creates issue)
-> https://github.com/w3c/wot-binding-templates/issues/488 Issue-488 Double-checking if data types are correctly used

**Kazuyuki:** yes, very important to see if the data type definitions are correct within all the binding documents.
... but for that purpose, probably it would be better to add checkboxes for all the binding documents one by one.

**Ege:** right
... (adds checkboxes to the Issue 488)
... (also adds some comments to the PR 484)
```
    * "eipv" prefix for structured types
    * name for the operations in the protocol
```

**Ege:** will you bring the EtherNet/IP to the plugfest?

**Erich:** maybe. The Rockwell controller is huge. But S7 controller should be fine. 

**Ege:** maybe Sebastian's PLC can be also used. 

#### Data Mapping
-> https://github.com/w3c/wot-thing-description/pull/2234 PR 2234 - Data mapping user story 5

**Christian:** CSVW is indeed usable. I need to have a closer look.

**Christian:** For RML, it is a good idea but we cannot use it directly. 

**Daniel:** I will look at the implementation after the call.

#### S7 Binding
-> https://github.com/w3c/wot-binding-templates/pull/484 PR 484 (again) Draft EtherNet/IP and S7Comm protocol binding
-> https://deploy-preview-484--wot-binding-templates.netlify.app/bindings/protocols/s7comm/ Preview
-> https://deploy-preview-484--wot-binding-templates.netlify.app/bindings/protocols/s7comm/#introduction specifically, the Introduction section

**Ege:** Kazeem will have a look, but I want to get more opinions from Siemens on it too.

**Ege:** (gives a short intro)

**Ege:** not everything of the protocol is in the binding.

**Erich:** yes, somethings like uploading the program are left out. It is done between the TIA portal and the controller.

**Ege:** Also you cannot use block optimizations. 

**Erich:** That is valid for S7-1200 and S7-1500 series which come with that enabled.

**Ege:** ok, thank you. I will have a deeper review offline.

**Erich:** yes, thanks. I will update my driver accordingly too. Would be nice to have more reviews.

[adjourned]
