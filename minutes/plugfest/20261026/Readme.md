# WoT PlugFest  Minutes 26 October 2026

## Attendees

Present:
1. Sebastian Kaebisch (Siemens)
1. Mahda Noura (Siemens)
1. Christian Glomb (Siemens)
1. Kunihiko Toumura (Hitachi)
1. Robert Warren (Glengarry Agriculture)
1. Noriaki Matsumura (Nagasaki University)
1. Yohei Sonobe (Nagasaki University)
1. Phillip Larsen Tronstad (DNV)
1. Erich Barnstedt (Microsoft)
1. Daniel Peintner (remotly)
1. Rem Collier (University College Dublin)
1. Ege Korkan (Siemens)
1. Sean Mann (RP1)
1. Rob Smith (Away Team)
1. Quintin Balsdon (Evinced Inc.; just observing)
1. Kaz Ashimura (Nagasaki University)

Chair: Sebastian

Scribe: Sebastian

## Agenda:
https://www.w3.org/WoT/IG/wiki/Wiki_for_TPAC_2026_planning#WoT_PlugFest_Set_up%3A_Sunday%2C_Oct_25%2C_14%3A00-17%3A00_GMT

### Logistics
WIFI: W3C-TPAC2026 Psw: dublin2026
-> https://www.w3.org/WoT/IG/wiki/Wiki_for_TPAC_2026_planning#Participants_2 Plugfest wiki
-> https://github.com/w3c/wot-testing/blob/main/events/2026.10.Dublin/Readme.md GitHub repo for Plugfest

## Round of introduction

### Erich Barnstedt (Microsoft)

EB: Working with MS since over 20years. Working on industry standards (OPC UA)

... I'm here to test more devices, more protocol devices

... test connections to the southbound

... I have Siemens S7, Rockwell PLC, Sentron PAC, LoRaWAN temperature devices

### Mahda Noura (Siemens)

MN: working together with Christian and Sebastian

... working on the toolchain in WoT TD

... working with AI and data mapping based topics

... work on a PDF to TD generator

... have no devices with me

... however, I want to use TDs here in the PlugFest

... I want to apply the ThingCityX project 

... working on AI agents. 

 ### Christian Glomb (Siemens)
 
 CG: together here with my colleques
 
 ... involved in WoT since a while
 
 ... working on the data mapping topic
 
 ### Robert Warren (Glengarry Agriculture)
 
 RW: working for a small company
 
 ... still invited guest
 
 ... member of the Spatio-temporal Data on the Web group 
 
 ... interest in how to bring new sensor to the WoT, e.g. , LoRaWAN devices 
 
 ### Kunihiko Toumura (Hitachi)
 
 KT: initereseted in media streaming use cases
 
 ... I have two devices (camera on RasPi and speaker)
 
 ... TDs already available online
 
 ... WebCam can be connected via WebRPC
 
 ### Sebastian Kaebisch (Siemens)
 
 SK: Im working on the new OPC UA Binding 1.1
 
 ... I have robot arm simulation based on OPC UA
 
 ### Ege Korkan (Siemens)
 
 EK: I'm coming from the building space
 
 ... I have couple of devices
 
...such as LoRaWAN

### Phillip Larsen Tronstad (DNV)

PT: Im from DNV

... we need to work on interoperabliy

... WoT looks promosing

... I don't have devices here

... we will demonstrate a demo on Friday

... I also working on a public transportation domain project

... there we also use WoT there and do exploring it

### Yohei Sonobe (Nagasaki Univeristy)

YS: currently IE

... working together with Kaz

... I have Echonet use cases 

### Noriaki Matsumura (Nagasaki Univeristy)

NM: just arrived this morning

... focusing on security management

... I'm also active in ISO/IEC standardization

... Kaz  invited me to join 

### Rem Collier (University College Dublin)

RC: I'm local from the univeristy

... I'm intersted in AI agent and WoT

... also jouined the PlugFest in Munich 2 years ago

... I have a small simulation of a building

... using semantic web

... I try to publish some TDs which you can use to connect

### Sean Mann (RP1)

SM: Im board member of the metaverse standards forum

... I'm founder and CEO of RP1

...working on open spatial internet

... working also with NVIDEA

... we can show a demo 

... I will can give you also a book for free

### Rob Smith (Away Team)

RS: Im IE expert in WoT

... Im looking on video stream use cases

... I have a Rasbrry PI without camera; will simulate it


## Presentations

### UA-Edge Translator

EB: I like to present the UA-Edgetranslator

--> https://github.com/opcfoundation/ua-edgetranslator

EB: just talked with Apple colleques, asking for Matter

... yes, UA-Edgetranslator also supports Matter

... we need an official WoT Binding for it

... there are more bindings possible:
    
... BACnet, Beckhoff, LoRaWAN, S7, Rockwell, ...

... there are many TD samples provided

... e.g., AqaraSensor, Redfish, etc.

--> https://github.com/OPCFoundation/UA-EdgeTranslator/tree/main/Samples

EB: you can run this in a docker container

... if you are sucessful, a black dashbord is showing up

...there is a UA node based on WoT Connectivity companion standard

... using this, you can easy asset onboarding

... it also do the data mapping

... also allows to discover devices, as long it possible

... UA translator is a high efficient, allows auto onboarding and mapping, that what the industry likes

... you can import the WoT TD files and load it

... I can also side load TD files

... there is also an overview which assets are loaded

... address spaces shows the runtime data

... Mondelez joining on Wednesday to see the demo

... I can read and write the data

... everyone is welcome to use the devices

 ### OPC UA Binding 1.1
 
 SK: showcasing the robort arm simulation
 
 ... TD is available on github in the Siemens directory
 
 ... found some issues with the 1.1 spec on UA Binding
 
 ... provided to the OPC UA WoT WG
 
 
 ### ThingWeb
 
 EK: There is a ThingWeb dashboard
 
 ... all devices are onboarded
 
 ... e.g., leak sensor
 
 ... also shows history of the runtime data in nice diagramms
 
 ... all TDs are on github
