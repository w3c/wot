# WoT Main Minutes 3 June 2026

## Attendees

Present:

    Ege Korkan

    Dave Raggett

    Michael Koster

    Kunihiko Toumura

    David Ezell

    Kaz Ashimura

    Tetsushi Matsuda

    Daniel Peintner



Regrets:
    Sebastian Kaebisch


Chair: Koster

Scribe: Kaz, Daniel

## Agenda:
 https://www.w3.org/WoT/IG/wiki/Main_WoT_WebConf#03_June_2026
 
 ## Minutes 
 ### Guests
 none
 
 ### Previous Minutes
 -> https://pad.w3.org/p/2026-05-27-wot 27 May 2026
 
 mjk: (goes through the minutes)
 ... any changes/updates?
 ... objections to publish the minutes?
 (none)
 
 approved
 
 ### New Charter Discussion
 
 #### Security review
 -> https://github.com/w3c/strategy/issues/509#issuecomment-4591296709 Simone's comment on security
 -> https://github.com/w3c/strategy/issues/509#issuecomment-4605982821 Nick's comment on security
   
 MK: we got the security review. right?
 
 DR: also another one recently
 ... first one is security review comment from Simone
 ... organizing a bi-weekly threat model calls
 ... we might want to invite him to our call
 ... still ongoing work on threat modelling
 
 mjk: a lot of discussion lately
 
 dsr: extract from Simone Onofri's invite to WGs and IGs to collaborate on threat modelling:
     
Threat Modeling Plenary session - RDF & SPARQL In Progress Confirmed
   02 June 2026, 08:00 -09:50 America/Los_Angeles
   Event is recurring Every other week on Tuesday, starting from 24 March 2026, until 12 February 2027

  RDF & SPARQL Working GroupThreat Modeling Community Group

  A session for joint Threat Modeling: whether you are a WG/IG working on a Threat Model or want to propose   your own, we will work on it or comment on it together.
  We will also discuss Threat Modeling.
  To propose an agenda, you can open an issue here:
  https://github.com/w3c-cg/threat-modeling/issues
  
  kaz: ok with maintaining the Security/Privacy Note
  ... but we should think about an updated concept for that work
  ... given WoT is expected as the platform for Web-based IoT world working with the other SDOs' standards
  ... and various implementations
    
  MK: Feels like it should be some updates involved and people to step up doing some work w.r.t. security
  
  EK: Security assertions from Architecture have been moved to TD
  ... no-one doing actual work
  ... not the man power at the moment to do some work
  
  MK: We have consensus doing some work.
  ... Update charter also?
  
  Kaz: Simone/Nick talks about maintaining security work. Adding one line about security..
  
  MK: Doing so would mean we make a commitment
  
  Kaz: One line for "informative" note updating security
  ... we need to talk who is doing work and what kind of work
  ... collaboration with other SDO's requires updating security anyway
  ... I am interested in that kind of work
  
  -> https://www.w3.org/2023/10/wot-wg-2023.html#scope Current Charter's Scope section including "Improve Security and Privacy"
  -> https://www.w3.org/2023/10/wot-wg-2023.html#ig-other-deliverables Also the "Other Deliverables" section includes "Security and Privacy Guidelines (to be published as a W3C Note)
  
  DR: Note about maintaining/updating deliverable makes sense
  
  EK: Maybe put it as a tentative deliverable
  
  MK: Makes sense. Collaboration to ECHONET and others makes sense also.
  ... should we record a resolution?
  ... talk to Sebastian about it next week.
  
  DR: BTW, security threat from AI has been going up a lot and quantum computing provides a further threat

  (Some more discussion about whether we should mention the possible collaboration with the Security Group about that explicitly within the new Charter, but we can make decision based on the response from Simone and Nick.)
    
  RESOLUTION: We would like to work on maintaining the Security and Privacy Guidelines as a Group Note

  EK: "would" was criticized before. We should not add it to the charter with this word.
  
  MK: Okay, adding the intent makes sense. We consider that item adopted.

-> https://w3c.github.io/wot/charters/wot-wg-2025-draft.html#other-deliverables "3.5 Other Deliverables" section of the new Charter should have that additional informative deliverable
  
  #### Waiting for the accessibility review 
  
  DR: No response yet, and will chase on that
  ... after that we can launch AC review
  
  MK: What about "Marketing plan"?
  
  DR: Not required by process, but timeline issue
  
  ### Quick Items
  
  #### Siemens released TDs for Powercenter devices
  -> https://support.industry.siemens.com/cs/document/109973540/modbus-registers-wot-device-models-for-sentron-com-system?dti=0&lc=en-IT Siemens' Product Page
   
  EK: Official place where a customer can download information of a product
  ... first time officially on page
  (free account might be needed)
  ... low power devices
  
MK: Cool. Should use it in our promotion.
... first product line Siemens offers support for WoT?

EK: First time publicly available. There are other products with TDs but their TDs are not publicly available
... more to come
... Siemens has many more of these "fix function" devices

  #### New WoT webpage
-> https://www.w3.org/WoT/ updated WoT Landing Page

EK: Work merged last week
... text might be still changed/updated
... wanted to make page more attractive to newcomers
... documentation contains links to explainers
... video page did not change at all
... IG section has been removed

MK: Yes, real entry point was missing

EK: Another PR will change underlying framework (faster and easier to maintain)
... navigation bar will change as well
... if you have other feedback, please speak up

Kaz: Thank you Ege and marketing team
... update reminds of interest group charter
... IG has been closed recently
... maybe the W3C Team can send out a "closing" message. Dave, could you check within the Team?
-> https://www.w3.org/2024/04/wot-ig-2024.html WoT IG Charter ended on May 19

DR: will do
... Ege asked me about analytics
... did try to get feedback, no response yet

EK: Yes, updates w.t.r. would be great
... BTW, in the past "Documentation" page got more hits than entry page

EK: New topics may pop-up (like post quantum cryptography) and should be added as well

MK: OK, great!

  #### PlugFest 
  
  DR: Alexandra asked me for feedback
  
  MK: 2 weeks from now
  ... any topics?
  
  Kaz: I think we should have PlugFest at next TPAC in Dublin
 
 DR: Offering demonstration?
 
 Kaz: We should mention our intention to have a PlugFest again
 ... details can follow
 
 MK: 2 PlugFests in the end
 - one hosted by Huawei
 - another one at TPAC

Kaz: the one in China has been cancelled, so we need to restart the discussion from scratch

MK: Correct, good point

  #### Main Call discussions
  
  MK: Talked about main call frequency etc?
  ... no news... we will wait for Sebastian
  ... during some certain calls will be cancelled anyway
  ... opening calls to the public?
 
 Kaz: We should have Sebastian in the call for that topic
 
[adjourned]
  
  
  
  
  
