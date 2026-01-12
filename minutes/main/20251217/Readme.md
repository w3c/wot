# WoT Main Minutes 17.12.2025

## Attendees

    Kaz Ashimura

    Dave Raggett

    Michael Koster

    Kunihiko Toumura

    Erich Barnstedt

    Ben Francis

    Sebastian Kaebisch

    Tetsushi Matsuda

    Tomoaki Mizushima

    Ege Korkan


Regrets

    David Ezell

    Daniel Peintner


Agenda: https://www.w3.org/WoT/IG/wiki/Main_WoT_WebConf#17_December_2025

Chair: Michael Koster
Scribe: Kaz
    
## Agenda:

1 Welcome

2 Guests, New Members, and Invited Experts

3 Minutes review 

4 Quick Items and Notices (status Use Case Note publication)

5 Holidays and Upcoming Events

6 Charter discussions for WoT 2.0


## Minutes

### Guests, New Members, and Invited Experts

mjk: Kaz is now an official IE for the IG as well
... also co-Chair for the Smart Cities IG

### Minutes review 
[10 Dec 2025](https://pad.w3.org/p/2025-12-10-wot)

mjk: any comments?
... (goes through the minutes)
... any objections?
(none)
(approved)

### Quick Items and Notices (status Use Case Note publication)

mjk: anything?
(none)

mjk: updates on the UC publication?

sk: neither Tomoaki or McCool here
... need to postopone this to the next year...

mjk: ok

### Holidays and Upcoming Events

mjk: this would be the last meeting in 2025

[Holidays and Events](https://www.w3.org/WoT/IG/wiki/Main_WoT_WebConf#Holidays_and_Upcoming_Events)

sk: Chrismas break upcoming
(no WoT calls on 22 Dec-6 Jan)

### Charter discussions for WoT 2.0

mjk: Sebastian?

sk: would start discussion on the new Charter

mjk: people can think about the draft Charter during the break

-->https://github.com/w3c/wot/pull/1256 PR 1256 - WoT 2.0 Charter Draft

sk: (goes through the proposed deliveralbes)
[[

    Thing Description 2.0 REC

    WoT X Bindings Note

    publish HTTP / MQTT / Modbus / BACnet / CoAP etc

    new Binding: 6LowPAN

    WoT Registry

    WoT Scripting API Note

    WoT and AI Agents Note

    describes scenarios

    interplay with AI agents and MCP Servers

    Under discussion:

    WoT: Use Cases and Requirements Note

    only maintenance?

    as part of TD 2.0?

    WoT Profile 2.0 REC

    is there support by active WG members?

]]

#### Bindings

sk: MS is interested in new bindings

eb: 6LoWPan

sk: let me add that to the list
... heavily used for contollers at Siemens too
... (add 6LoWPan to PR 1256)
... PROFINET as well?

eb: yes
... ODVA as well
... but 6LoWPan is higher priority

sk: should we add them to the list within the draft Charter?
... the question is no standard link for that
... can refer to the Web page, though
... would handle LoRaWAN and EtherNet/IP too?

eb: yeah

kaz: maybe we might want to ask everybody to think about their possible bindings
... in their mind from their countries/regions

sk: yeah
... but there are many possible targets

kaz: so we could mention "this list is not exhaustive" :)

sk: right

#### Registry

bf: wanted to mention similar things
... CG may have some ideas also
... a couple questions of mine were around registry
... registry itself is not a normative deliverable. right?

mjk: Registry Track is different from the REC Track

kaz: right

dsr: correct

bf: registry entries for TD 1.1 until we've finished the TD 2.0?

sk: good question

ek: first of all, Registry is different from REC
... then for each Registry entry, people should describe which version of TD to be applied to, 1.1 or 2.0

bf: ok

kaz: the point here is that REC Track doc speicifies how to implement software
... while Registry Track doc specifies what kind of resources to be applied/combined to the implementation
... so those documents have different mechanism and to be combined with each other

sk: (changes the section around "Profile Next" to Binding Registry)

kaz: you should change the HTML id also :)

sk: good point :)

#### AI Agents Note

bf: wondering about who from the active participants would be interested [in the Scripting API]
... don't think TD to be used to describe AI Agents' capabilities

sk: what can be done and/or possible scenarios could be still described
... need to ask Daniel as well about his opinions
... maybe Toumura-san from Hitachi too

kt: contents of the Plugfest demo from Hitachi could be a possible scenarios

kaz: kind of skeptical also
... anyway, we need to talk with the recently created AI IG

[Web & AI IG](https://www.w3.org/groups/ig/webai/)

sk: should add them to the collaboration list
... (adds the IG to the collab list)

#### Scripting API

sk: let's talk about this next time when Daniel is available

#### Use Cases

sk: should be discussed when McCool and Tomoaki  is available

#### Profile 2.0

sk: supports from the W3C Members?

bf: would be interested in hearing from Conexxus
... without the Profile mechanism, not capable to describe necessary points for WoT applications
... can't overcome the fragmentations already existing
... think removing "WoT Profile 2.0 REC" from the new Charter would be a mistake from my viewpoint
... but agree we need necessary people for the work

[Ben's statement in full]:
[[
On behalf of Krellian Ltd. the company and the WebThings open source project I just want to say that without Profiles, the Web of Things is not fit for purpose for our use cases. Thing Descriptions and bindings alone are objectively incapable of describing the full set of WoT operations using simple REST APIs. In my opinion the Thing Description specification alone does not fulfil the WoT Working Group's mission of countering fragmentation on the Internet of Things, it just cements the fragmentation that already exists.

I want to make sure people are aware that if Profiles is removed as a deliverable, not only does that mean that we won't be able to work on a WoT Profiles 2.0 specification in the coming years, but that WoT Profiles 1.0 will be stuck at the Working Draft stage, and may eventually have to be marked as a Discontinued Draft. That will leave the Web of Things without a solution to out-of-the-box interoperability altogether.

I think that removing Profiles from the Working Group Charter would be a mistake, but if there are not multiple Working Group members able to actively contribute to it as a deliverable then it may have to be removed. WebThings as an open source community will then need to continue to pursue our vision of the Web of Things as a unifying application layer for the Internet of Things using a different approach through the Web Thing Protocol Community Group, and we welcome anyone who is interested to join us.
]]

ek: 2 points
... 1. think Conexxus mentioned their interest during TPAC
... 2. still wondring about the abstract model layer for multiple edge services
... but difficult to push IoT vendors to use one specific mechanism
... e.g., some smart home platforms use YAML-based model
... possibly 10 different YAML models there

bf: can understand that
... descriptive approach vs prescribed approach
... recently some of the key participants have left, and the descriptive approach is dominant these days...

ek: depends on "What to be described by the Web", I think
... technically, you can use OPC UA over HTTP, and Web developers can handle after that

bf: just to be clear, I'm not suggesting all the IoT platforms need to use HTTP :)
... that would be terrible
... just would suggest the prescriptive approach would be useful for some cases

ek: think HTTP would work well even without the Profile mechanism
... there is kind of no solution as good befit

kaz: sounds like we need some more discussion about this point
... so would suggest we continue the discussion next time given we have only a few more minutes today
... on the other hand, this discussion reminded me of the discussion on "WoT and Browsers"
... is that point included in the draft Charter?
(to be checked next time)

sk: regarding the "WoT Profile 2.0" itself
... don't think we need "WoT Profile" for interoperability

mjk: we should do the time check for today...
... would like to propose we continue the discussion about the need for WoT Profile
... for out-of-the-box interoperability
... should keep discussing that
... (closing the call for today)

sk: thank you very much for the fantastic year!
... thank you for all your contributions
... let's see what comes next :)

mjk: ok
... thanks

eb: tx!
... see you soon!

[adjourned]











