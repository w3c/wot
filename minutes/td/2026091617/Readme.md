# WoT TD Calls

https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf

## Slot 1 - 16 September 2026

### Meeting Information

**Attendees:**
* Ege Korkan
* Kunihiko Toumura
* Christian Glomb
* Tomoaki Mizushima
* Cristiano Aguzzi
* Kazuyuki Ashimura
* Daniel Peintner
* Michael Koster

**Scribe:** Cristiano Aguzzi

**Regrets:** None

### Minutes

#### Agenda for Today
**Ege:** (skims the basic agenda items on the TD wiki)

**Ege:** 3 main topics: Resource, Subprotocol, and Data Mapping. Tomorrow we will also talk about a new Protocol Binding for Ethernet/IP

**Ege:** Topics for TPAC will be discussed in plugfest calls

#### Minutes Review
https://github.com/w3c/wot/pull/1319

**Ege:** Any remarks? 
--None--

**Ege:** Ok approved. 

#### WoT Resources
##### Pull Request 34
-> https://github.com/w3c/wot-resources/pull/34 wot-resources PR 34 - wotsec fix

**Ege:** Any objection with the changes in the wotsec.ttl? 
--None--

**Ege:** merged

##### Pull Request 35
-> https://github.com/w3c/wot-resources/pull/35 wot-resources PR 35 - Git attributes

**Ege:** Basic PR for formatting rules. Any objections?
--None--

##### Pull Request 36
-> https://github.com/w3c/wot-resources/pull/36 wot-resources PR 36 - Create w3c.json

**Ege:** adding w3c.json file. It should be there, but it wasn't added. 

... not sure what is the purpose of this file. It seems okay, but I have some doubts about the "repo-type" and contacts files

**Kazuyuki:** I can provide the link to the documentation about the w3c.json

-> https://www.w3.org/guide/github/w3c.json.html w3c.json manual

**Ege:** "repo-type" is not correct; it is not a tool. I would probably categorize it as tests.

**Kazuyuki:** What about "others"?

**Cristiano:** +1

#### TD
##### Subprotocol 
-> https://github.com/w3c/wot-thing-description/issues/2217 wot-thing-description Issue 2217 - subprotocol

**Ege:** Last time we discussed it in the context of Server-Sent Events.

**Ege:** We don't have an agreement here. "Subprotocol" is well known in the context of WebSockets. Current approach is confusing, as there might be misunderstandings of the roles of the subprotocol keyword and uri notations. 

**Cristiano:** here are my opinions from last week discussing with Ege. In developer community, `+` sign is used for signifying the transport. subprotocol is fine websocket. Implementations need to understand two terms. There is a bit of a philosophical discussion here too. In the end, the Consumer needs to identify the protocol and configure their driver.

**Kazuyuki:** we clearly need to define what we mean by subprotocol and URI '+' or '.' syntax. 

**Ege:** we are explaining the subprotocol keyword, but I'm not sure that clarifies the interpretation. Probably we need a longer explanation in the binding section. Plus, these mechanisms are heavily linked to the protocol binding that defines them. 

**Ege:** Ben thinks that sub-protocol is not really commonly used in the HTTP communities. He also suggests that SSE is not really a subprotocol and the examples need revisiting. 

... it is also relevant to the new charter topic about WoT Thing Protocol

**Kazuyuki:** media handling over QUIC would be yet another example to take care of in this discussion. 

**Ege:** In theory, the client and server would negotiate the correct protocol. 

**Kazuyuki:** What kind of variations should be supported by the "subprotocol" feature? 
... technically there could be tremendous combinations
... but probably we should list a reasonable set of those combinations first

**Cristiano:** another thing to understand is if "longpolling" is a subprotocol or rather a binding configuration. 

<Cristiano needs to drop>

#### Data Mapping

-> https://github.com/w3c/wot-thing-description/pull/2233 wot-thing-description PR 2233 - Add data mapping user story 4 analysis
-> https://github.com/wiresio/wot-thing-description/blob/3052310a2075a6e826de740379e6285810976170/planning/work-items/analysis/data-mapping/US4-details.md US4-details.md

**Ege:** Christian has added the BACnet and Profinet examples. 

**Christian:** Yes for bacnet it works nicely but for profinet it needs more details and cannot simplify enough.

**Ege:** Michael, what do you think?

**Michael:** it makes sense but I need to review

**Daniel:** How can we get a schema for the data on the wire? How do I know that 1,2,3,4 are the only values?

**Christian:** not sure how we can do that.

**Michael:** We should not tell how to build the whole driver implementation. 

**Kazuyuki:** btw, why there is a sub section saying "multistate1" right below "properties"?
... it implies we could choose more than one state from "on", "off", "auto" and "manual" at once

**Christian:** it's imported from the original BACnet example
... could fix both the examples (WoT side and BACnet side) if needed.

**Kazuyuki:** not sure if we need to fix it, but thanks for your clarification

[adjourned]


## Slot 2 - 17 September 2026

### Meeting Information

**Attendees:**
* Ege Korkan
* Kunihiko Toumura
* Christian Glomb
* Tomoaki Mizushima
* Kazuyuki Ashimura
* Erich Barnstedt
* Cristiano Aguzzi
* Daniel Peintner
* Michael Koster
* Mahda Noura

**Scribe:** Christian Glomb

**Regrets:** None

### Minutes

#### Bindings
##### LoRaWAN Updates

**Ege:**
    Haoyu Ren from Siemens added some details and got added as code owner along with Erich Barnstedt
    Binding template in a rather stable state, will be shown at the "The Things" conference next week
    Devices will also be brought to TPAC to test LoRaWAN

**Erich:**
    Demo in the LoRaWAN working group yesterday with Edge translator
    Discussion about possible OPC UA companion spec, missing piece with WoT protocol binding, so maybe no extra companion spec needed
    Number of supported devices increasing ~90%, remaining 10% not worth the effort
    Edge translator code base also updated
    Maybe additional participation in the TPAC plugfest from LoRaWAN people
    Aim: increase test coverage
    Thing description can be generated from the Things Network device repository, TDs syntactically correct but do TDs work with devices?
    Let's advertise this!
    
https://www.thethingsnetwork.org/
https://github.com/TheThingsNetwork/lorawan-devices is the set of the devices or https://www.thethingsnetwork.org/device-repository/

**Ege:** Technical work done, now make it public

##### Ethernet/IP Binding

**Ege:**
    Pull request prepared by Erich
    Name Ethernet/IP might be confusing
    
**Erich:**
    Ethernet/IP is the ODVA consortium standard, is CIP (Common Industrial Protocol) over TCP/IP; CIP implemented by Edge translator
    Rockwell Automation sells such devices
    
**Kazuyuki:**
    Should clarify the name as "EtherNet/IP" ("N" from "net" to be capitalized) as a specific IoT protocol

-> https://deploy-preview-484--wot-binding-templates.netlify.app/bindings/protocols/ethernetip/ Preview

**Ege:**
    Binding spec: Classic intro and structure
    
**Erich:**
    Binding spec: Main work to map user defined types (which represent machines or machine parts)

**Ege:**
    Client read and writes tags along with type information to know about data
    
**Cristiano:**
    Can CIP be transported over other protocols other than TCP/IP -> complex protocols type schemes needed?
    
**Erich:**
    EIP = CIP over TCP/IP, so EIP is always over TCP
    
**Ege:**
    Usual URI scheme
    Resources addressed by tags not addresses/registers
    "Bracket" and "colon" characters need to be escaped (tag path examples)
    
**Erich:**
    Escape everything in the HREF?
    
**Ege:**
    Testing live in browser ....

**Daniel:**
    What is the element index in tag path about? Contradicting [?element-index] in EBNF?
    
**Ege:**
    "Route path" existing in protocol but not defined in binding spec
    Replace: "eip" tag in TD annotations by, e.g., "eipv"
    Going through spec ...
    
**Daniel:**
    xsd data types should not be capitalized, some types seem to be strange
    
**Ege:**
    Maybe some candidates for Data Mapping
    
**Erich:**
    UDT fields are "blobs" where data points have to be extracted -> Data Mapping
    Just properties and events, not sure whether EIP supports actions - leave them out for the moment
    
**Kazuyuki:**
    Echonet also didn't have "Security" but new version features it; maybe same will apply for EIP - what will happen to binding spec if Security is added later?
    
**Ege:**
    Leave "Security" open for the moment 

**Kazuyuki:**
    We have "nosec" option
    Opportunity for WoT to provide security from "outside"

See Ege's review comments in: https://github.com/w3c/wot-binding-templates/pull/484 as summary of this discussion

**Cristiano:**
    Wondering about "pollingTime" semantics, should be at the "form" level
    long polling vs. normal polling or polling on application level
    
**Ege:**   
    What happens if you poll faster?
    
**Erich:**   
    Protect the device to be polled too often
    
**Kazuyuki:**
    Should be required for small devices but is there any specific/concrete guideline within OPC UA?
    
**Erich:**
    In OPC-UA it depends on the implementation

Summary of polling discussion: https://github.com/w3c/wot-thing-description/issues/2229

[adjourned]
