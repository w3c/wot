# WoT PlugFest  Minutes 27 October 2026

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
1. Rob Smith (Away Team)
1. Kaz Ashimura (Nagasaki University)
1. Mateusz Jaworski (DNV)
1. Sean Mann (RP1)
1. Yinch Yeap (RP1)
1. Neil Trevett (NVIDIA)
1. Henrique Xavier (NIC.br - Brazil Networking Information Center; just observing)

Chair: Sebastian

Scribe: Sebastian

## Agenda:
https://www.w3.org/WoT/IG/wiki/Wiki_for_TPAC_2026_planning#WoT_PlugFest_Set_up%3A_Sunday%2C_Oct_25%2C_14%3A00-17%3A00_GMT

### Logistics
WIFI: W3C-TPAC2026 Psw: dublin2026
-> https://www.w3.org/WoT/IG/wiki/Wiki_for_TPAC_2026_planning#Participants_2 Plugfest wiki
-> https://github.com/w3c/wot-testing/blob/main/events/2026.10.Dublin/Readme.md GitHub repo for Plugfest

## Introduction

### Mateusz Jaworski (DNV)

MJ: I'm from DNV and we have a WoT demo

... like to show it later

## Prepearation for the Live Demo tomorrow

### proposed agenda:
    
    1. Welcome
    2. Insight into WoT (Sebastian; 10min)
    3. PlugFest Demos from different companies / institutes (50min)
•Rem Collier (University of Dublin)
• Discovery usecasewith AI 
•Yohei Sonobe and Tao Xin (ECHONET) 
• Remote connection to devices in Japan
• Kunihiko Toumura (Hitachi)
• Media stream use case 
• ErichBarnstedt (Microsoft)
• Edge Translator and connectionstodifferent devices (e.g., PLCs)
• Mahda Noura (Siemens)
• Physical AI, connecting Sentron PAC and devices from Hitachi
• Mateusz Jaworski (DNV)
• WoT Maritime Artifact Factory


Each presentation should have maximum 10min.

Please use the PPTX template for your presentation: https://github.com/w3c/wot/blob/main/PRESENTATIONS/2026-10-tpac/Template-2026-10-DD-WoT-TPAC-Session-Presenter.pptx

## Presentation

### Extending the Web for Spatial Computing (RP1, NVIDIA)

SM: thanks for allowing me to show our approach

... the web was built for pages

... humans and machines both need to connect to the real and virtual workd

... no singe app or plattform can serve every device 

... millions spatial services will run across the Mataverse: Airports, Manufacturing, Energy, Smart City and Education

<showing a video about spatial browsing; seemless service integration; real-time spatial co-presence across devices>

SM: spatial browsing moves spatial interaction and scene-graph rendering into the browser engine

YY: I'm now showing the sneeze engine. It can be embedded in chrome or somewhere else

<showing spatial data fabric as JSON code>

YY: WASM is used for the sandboxing

<showing live airplanes postions of the Dalles airport>

YY: we added 3 different spatial data fabric into the scene

SM: humans can interact to hertrogenous devices

EB: Battery consumption is an issue of the VR glasses

NT: this is now taken serios 

CG: the WASM sandboxing can act as an gateway to WoT

EB: WoT and AI can be used to solve the onbaording problem

RS: Where does the information of the airport come from? Usually there is always the question of where does the 3D models come from.

KA: I see a relation to Smart City WG. Please join tomorrows breakout session and give the smame presentation.

SM: where do get implementations from WoT

EB: there is UA Translator from Microsoft or node-wot, both open source


### mams-wot (University College Dublin)

RC: my work is based on agents

... you see here a dashboard of varios simulated devices

... you can manage policy for your house with AI

<shows how to use the policy use case: "i want the bedroom to be 23 celsius all day"; it generates an Agent>

RC: code is open source

--> https://gitlab.com/mams-ucd/mams-wot

RC: there is also a scanner which shows the Thing Descriptions

### WoT WoT Maritime Artifact Factory Artifact Factory (DNV)

PL: for maritime we see WoT thinkg to go

< MJ shows the  WoT Maritime Artifact Factory application; Factory Assistent is based on AI>

... enter some input to create our work

PL: we develope a  Maritime ontology

MJ: we can explore the ontology

... we can also include differen sources and repos

... we can manage our context

... we can create an event when the alarm to high

### ECHNOET (Nagasaki University)

KA: showing the remote devices. The overview is giving here:
    
-> https://github.com/w3c/wot-testing/tree/main/events/2026.10.Dublin/TDs/ECHONET


### WoT Physical AI Agent (Siemens)

MN: I have a python tool, WoT AI Agent 

... can discover for WoT Thing Descriptions

... LLM has access to the servients

... I want to show it does not matter, to which servient are you talkikng with

... I can ask the agent, e.g., I want to have the values in kW instead in W

... If Im asking "the room is too cold"

... it finds the devices in Japan, an air conditionr






### UA Translator (Microsoft)

EB: Im showing how to create WoT from UA companion specs

... I can do drag-and-drop mapping

... it extends the TD with the mapping information




