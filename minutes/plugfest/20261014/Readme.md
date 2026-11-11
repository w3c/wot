# WoT PlugFest Minutes - 14 October 2026

## Attendees

**Present:**
* Ege Korkan
* Kazuyuki Ashimura
* Christian Glomb
* Tomoaki Mizushima
* Kunihiko Toumura
* Rob Smith

**Chair:** Ege Korkan

**Scribe:** Kazuyuki Ashimura

## Agenda:
https://www.w3.org/WoT/IG/wiki/PlugFest_WebConf

### Previous Minutes
-> https://github.com/w3c/wot/pull/1332 PR 1332
Approved.

### Mailing List
**Ege:** would give up on using the Plugfest mailing list this time
... would suggest people use Discord instead.

**Kazuyuki:** thought we were using Slack previously, but do you prefer Discord this time?

**Ege:** yes.

**Kazuyuki:** in that case, you can put the URL for that.
... can the channel be public?

**Ege:** yes.

**Kazuyuki:** you can put the URL here on the minutes directly then :) 
https://discord.com/channels/1081253871688622181/1559917051315757146

### VPN
-> https://github.com/w3c/wot-testing/issues/630 Toumura-san's issue on VPN

**Kunihiko:** we can provide a server for VPN.
... my only question was which we need, L2 VPN or L3 VPN.
... if we're OK with L3 VPN, we can use Headscale/Tailscale, which are much easier to use than SoftEther.

**Ege:** wondering about the ECHONET guys.

**Kazuyuki:** think they'll join Plugfest remotely.

**Ege:** only remote devices?

**Kazuyuki:** yes, I think so.

**Ege:** ok
... (just found Toumura-san's network connection diagram)
... do you need any preparation beforehand for the VPN setting?

**Kunihiko:** would like to know people's devices beforehand.
... we can use the Headscale server with the Tailscale clients.

**Ege:** would like to prioritize clarifying the remote node setting.

**Kazuyuki:** will ask ECHONET guys about their export setting.

**Ege:** ok.

**Kazuyuki:** we should ask all the other remote participants about their setting as well.

**Ege:** right
... we should check with all the potential remote participants.
... so far: Johan, Cristiano, Daniel, and ECHONET.

### Demo Scenario
-> https://github.com/w3c/wot-testing/pull/631 PR 631 - Add initial draft of Things and Consumers information for TPAC 2026 Plugfest

**Ege:** Toumura-san has created a PR for the scenario as well.

**Kunihiko:** media streaming by a Raspberry Pi.
... if there is any need for update on the vocabulary, would be helpful for media analysis.

**Ege:** would like to see possible WoT Binding for Media over QUIC.
... we need more experiments about that.

**Kazuyuki:** great work.
... by the way, do you want to include this TD notation in your proposal about Media for WoT when we discuss your idea during the joint discussion on Friday at 8:30?

**Kunihiko:** let me think.

**Ege:** (goes through the example TD a bit more)

**Rob:** looks fascinating.
... interested in the streaming side.
... video/audio and metadata.
... would see how to integrate them.

**Kunihiko:** synchronization with metadata and media stream is interesting.

**Rob:** we can put the information in the header as a new feature.

**Ege:** wondering about how to handle the metadata from TD like "title" on the browser side.

**Rob:** tensor metadata for frame-by-frame image processing.

**Ege:** event on the WoT side?

**Rob:** you can send all the information as a stream.

**Kazuyuki:** yeah, that's a great question.
... would suggest we start with a use case discussion instead of a concrete/detailed technical discussion on possible bindings.

**Rob:** right
... would organize several breakouts for that purpose as well.

**Ege:** thanks for your input, Toumura-san.
(PR merged)

### Device List
-> Add initial draft of Things and Consumers information for TPAC 2026 Plugfest Demo devices on the Plugfest repo

**Ege:** (adds Toumura-san's devices to the device list)
... (also checks devices from Siemens)
... any other updates from the others?

**Rob:** wondering about what to do for WebVMT.
... have been looking at eclipse-thingweb.

**Ege:** you mean node-wot?
-> https://github.com/eclipse-thingweb/node-wot eclipse-thingweb/node-wot

**Rob:** yes.

**Ege:** (shows "HTTP Protocol Binding of node-wot")
-> https://github.com/eclipse-thingweb/node-wot/tree/master/packages/binding-http HTTP Protocol Binding of node-wot

**Rob:** would like to start with a "Hello, World!" kind of thing :)

**Ege:** (shows tutorial page from the WoT CG page)
-> https://w3c-cg.github.io/wot-cg/tutorials/whatiswot/docs/wot/td/forms-and-bindings-in-practice WoT Tutorial

**Rob:** Thanks!

**Ege:** (shows example scripts as well)
-> https://github.com/eclipse-thingweb/node-wot/tree/master/examples/scripts example script

**Ege:** (adds devices for Robert Warren and Rob Smith)

### Technical Topics
#### Media Streaming
**Ege:** Toumura-san, you can add some more concrete description about your proposal.

**Kunihiko:** ok.

#### Security
**Ege:** any updates on ECHONET?

**Kazuyuki:** waiting for their response about the Plugfest.

#### Common Definitions
**Ege:** myself still need to work on the description.

#### Data Mapping
**Ege:** myself and Christian will work on the description.

#### Demo Scenarios
**Rob:** my name is on the page for "demo scenarios", but what is expected here?
... I'm quite new to WoT, so wondering about that.

**Ege:** we need to clarify our scenario for the demo on Wednesday.
... if you want, we can once remove your name from here.

**Rob:** ok.

**Ege:** (once removes Rob's name from the "Demo Scenarios" section)

#### Other Topics
**Ege:** (goes through the other topics)

### AOB?
**Ege:** any other business for today?

**Rob:** have created a use case description on the wot-usecases repo.
... and wondering about the next step.
-> https://github.com/w3c/wot-usecases/issues/407 PR 407 - Video use cases

**Kazuyuki:** that repo used to be used to gather use case descriptions for the WoT Use Cases and Requirements Note.
... but after our rechartering, we've not clarified how to use the repo yet.
... you can simply keep your description as an Issue there.
... and we can revisit that when appropriate, e.g., during the joint session from TPAC.

**Rob:** ok.

[Plugfest call adjourned; TD call starts 5 mins past the hour]
