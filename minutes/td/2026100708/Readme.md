# WoT TD Calls

https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf

## Slot 1 - 07 October 2026

Cancelled

## Slot 2 - 8 October 2026

### Meeting Information

**Attendees:**
* Ege Korkan
* Kunihiko Toumura
* Erich Barnstedt
* Tomoaki Mizushima
* Michael Koster
* Kazuyuki Ashimura
* Cristiano Aguzzi

**Scribe:** Ege Korkan

**Regrets:** None

### Minutes

#### Agenda for Today
**Ege:** (skims the basic agenda items on the TD wiki)

#### Minutes Review
https://github.com/w3c/wot/pull/1329

**Ege:** No remarks, merging.

#### Registry

https://github.com/w3c/wot-binding-registry/pull/82 PR 82 - HTTP to HTTPS fixes

**Ege:** Very straightforward and no implementation impact. Any objections?
... different topic for individual bindings and TD spec.

**Kazuyuki:** it is not about giving instructions to install certificates, right?

**Ege:** no, no, very simple.

#### CSV

**Ege:** https://github.com/eclipse-thingweb/node-wot/pull/1576 can be used to see the OSS work on CSV usage in WoT.

**Ege:** we will continue on this when Christian Glomb joins again.

#### Subprotocol and Binding Identification

> https://github.com/w3c/wot-thing-description/issues/2217 Issue 2217 - Explain how to specify a subprotocol

> https://github.com/w3c/wot-thing-description/issues/2069 Issue 2069 - URI Scheme Decision

> https://github.com/w3c/wot-thing-description/issues/2217#issuecomment-6039594098 is the analysis

**Erich:** in my implementation, I have used `ocpp://` as URI scheme. Version is managed via the WebSocket server.

**Cristiano:** You should look into NATS as well. It is an orthogonal issue to the binding versioning as well.

**Ege:** Also messy for BACnet.

**Ege:** we will need to discuss whether we should stick to IANA or let bindings define their own.

**Cristiano:** We strictly use URIs but let the bindings define their own scheme. Implementation can strip away parts of the URI that they don't need.

**Kazuyuki:** Thank you for the work. I am teaching web tech to my students these days. I see some web applications like Google Maps mixing multiple protocols, like HTTP/3, SSE, and WS at the same time.

**Ege:** I think we would have a separate protocol for each using separate forms.

**Kazuyuki:** In the near future, we should look into the browser as an advanced Consumer. Maybe Toumura-san's plugfest work would be a good starting point for this.

#### Bindings
-> https://github.com/w3c/wot-binding-templates/pull/490 PR 490 - Draft S7Comm protocol binding

**Ege:** I cannot get a review of the S7 binding, but working on it.

**Kazuyuki:** Same problem can happen for other standards, like ISO standards too. Maybe there are workarounds? 
... for example, there are W3C versions of ISO standards.

**Ege:** It will be the same for protocols from Mitsubishi PLCs.

**Kazuyuki:** Maybe Matsuda-san can help or provide insights.

**Ege:** it would be good indeed. Getting a spec for the Mitsubishi PLC protocol. Apparently, it is called MC Protocol. I cannot find open source information on it.

##### EtherNet/IP

> https://github.com/w3c/wot-binding-templates/pull/489 PR 489 - Draft EtherNet/IP protocol binding

**Ege:** XML Schema mappings are removed. Anything changed?

**Erich:** I did all the feedback. It should be good to go. Received feedback from Rockwell as well.

**Ege:** Any concerns?

**Kazuyuki:** Any usage of the "eip" prefix?

**Ege:** Not sure, but it is a bubble.

**Erich:** we should go ahead with such bindings. We are getting good speed.

**Kazuyuki:** young engineers in Japan are also trying to get their own IoT handling implementations with AI tools, etc.

**Erich:** it took me a while to convince people. Now they ask for specs :)

**Ege:** adjourned
