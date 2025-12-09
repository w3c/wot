# WoT PlugFest Minutes 12.11.2025, 5:30pm-6:30pm (Breakout session)

## Attendees
Ege Korkan, Siemens AG
Sebastian Käbisch, Siemens AG
Mahda Noura, Siemens AG
Piotr Sowinski, NEVERBLINK
Pham Van Cu, ECHONET
Kunihiko Toumura, Hitachi
Kaz Ashimura, IE/Nagasaki-U
Brian McManus, Ignite Retail Technology
Josh Thomas, Ignite Retail Technology
David Ezeli, Conexxus
Zane Darkin, Ignite Retail Technology
Denis Ioan, ARMOR SAFE TECHNOLOGIES
Michael Robinson, ARMOR SAFE TECHNOLOGIES
Tomoaki Mizushima, IRI
Junko Kamata, VOYAGER
Wolfgang Schildbach
Carlos Ibarra Lopez, Google
Matt Reynolds, Google
Chunming Hu. 
Pierre Antoine Champin, W3C
Vincet Sheib, Google
Youenv Fablot, Apple
Richard Ishida, W3C
 Kanam Sato
 Angel Li, 
 Shinobu Ura (LY Corp.)
 Hiroki Endo, NHK
 Kensaku Komaksu, NTT Business
Tetsuhiko Hirata, Hitachi
Sylna Cadena, W3C
Will Legreq
Pererac@cardiff.ac.uk
Nayef Alawadhi
Mohammad Saleem
Torumamm Hashi

Regrets: 
Chair: Sebastian
Scribe: Mahda, all

## Logistics

Zoom Link
https://w3c.zoom.us/j/83853977325?pwd=w4DZrXwqoplVWQhkStqShY1rf8ugnI.1

## Agenda:
    1. Welcome
    2. Presentation about WoT (Sebastian; 10min)

        give an overview about Kobe PlugFest

         -> PR for plugfest configuration diagram: https://github.com/w3c/wot-testing/pull/627

    3. PlugFest Demos

    - ECHONET (10min)

    short presentation about ECHONET + demo

    - Conexxus / ArmorSafe (10min)

    can show interaction with ECHONET devices

    presentation about Conexxus and what is the demo about

    - Hitachi (10min)

    presentation about the demo

    slide: https://github.com/w3c/wot-testing/blob/main/events/2025.11.Kobe/TD/Hitachi/2025-11-12-Plugfest-outcome-ktoumura.pdf

    - NTT (10min)

    will give a demo with DMX lights

    - NeverBlink (5-10min)

    just show the demo 

    can show interaction with ECHONET devices




## Minutes:
    
    
Sebastian: 
Presented slides: https://github.com/w3c/wot-testing/blob/main/events/2025.11.Kobe/2025-11-12-WoT-Breakout.pdf    
Welcome to the Plugfest, we would like to give you some results.
Agenda: short intro to web of things, iplugfest demos will be continued
Web of Things: What are we doing? What is Things? If you go into the building, city, you will always find physical devices and Things there. The question is what is the problem with Things?
I come from Siemens, and we have alot of different Things, they have to interoperate with each other,
We have applicationa like monitoring, like temperature has some threshold..
To make such applications it is very challenging, each Thing comes with their own technologies, data models, and their own security configurations, and this makes it very complicated. You have to spend a lot of money, lots of assets in place.
We have created 10 years ago the Working Group of WoT to help the onboarding and development of IoT applications.
We have building blocks: like scripting API, Bindings
We are moving to TD2.0 
If you are interested, you are welcome
The TD is a lightweight JSON-LD document which describes the interfaces of a Thing.
WoT simplifies onboarding, TD gives all the information of the capabilities and how to interaact with the device, this is a very big win for the industry
TD is analgous to the index.html
Example of a TD for an Energy meter, hide protocol specifics, hides the protocol details

Now coming to the PlugFest: we regulary do these PlugFests, usually companies bring their own devices and test the new features that we are developing in the working group. They try to build applications to show that WoT helps to onboard Things to the target application.

TPAC2025 figure shown for the PlugFest Network Configuration shown. 

We have ECHONET first. 
Presented slides: tbd
Pham Van Cu: Smart Home market is fragment. Each player has their own protocol. For myself that I just want to control the lights, I need to use 10 applications. ECHONET wants to solve this problem for Japan so that devices can work together. 
In Japan we have alot of ECHONET devices sold. ECHONET is used in smart city reference architecture. 
We use ECHONET to connect data from different brands. ECHONET LITE.

I introduce the devicees we have here at the PlugFest, light, air conditioner. We have also devices at the remote testbd: sensor, air conditioner, ... they are devices being sold in the market. I put the web camera and the participants can test their solutions. 
Message for the participants: interact with the devices, how do u feel? what could be done better?

David: Conexxus: serving the convenience store. We are chains like seven eleven. All these are device heavy. We provide standards for these. We have had different interoperability standards. Sebastian explain that WoT is an abstraction, but it is a useful abstraction. People are using the Web through the mobile devices. People shouild be able to see the devices.
We are doing an experiment here with a smart safe dvice. 

Armor makes smart safe systems. POS system by conexxus. Aim is to interact with the devices from POS system and safe system. 

Michael: We have deployed more than 50k of these devices. The question we always get is that can you connect to this and that device. We are excited to use the WoT for the connection. Michael puts a valid pin in the device. 

Josh: As you can see we are watching for events on the camera. We have TD's, we listen to events on the WebSocket connection. We have a touch screen that we use in POS system that does checkout, used in airports, trains.. 
For our interaction we had more of an integration setup. We have an airbnb rental here. We are going to pay with cash. Michael enters the cash. 
Since its not cooperating, I'm going to show you something else. We got each of the Thing Description from the other devices. We used node-wot. node-wot lets us parse the json out, we can see the properties, actions and events. For example, I could go to the camera. Josh activates some devices. 
It basically taking the TD, parses it, the TD has enough metadata, that we can take all of them and generate this UI. 

David: The WoT makes a reasonable backend for your MCP servers. 

Demo is shown with the POS. 

David: I'm going to show you about IGNITE. 


Kunihiko Toumura: how to facilitate mashups by integrating WoT-Discovery and Generative AI
Presented slides: https://github.com/w3c/wot-testing/blob/main/events/2025.11.Kobe/TD/Hitachi/2025-11-12-Plugfest-outcome-ktoumura.pdf
Device onboarding in WoT systems, our WoT WG is for interoperability platform based on TD. Automatic TD generation from device documentation. 
We proposed an MCP server. This is the configuration of our server. This server discovers the Things. 
He shows the demo video.
He shows the NodeRED flow that is added automatically without having coding experience.
This was laggy, so we made it through WebSocket protocol deployed, 
Next, we added a new Thing, and the flow is now also created. The TD doesn't have enough context. 

Second demo is combined with ECHONET Things. Like previous demo, we can control the light with the encoder. 

Lessons Learned: Generated code depnds on TDs description details. 
programming flexibility expanded. 
Also large list of interface definitions may confuse the LLM, prolonging through processes and generating incorrect programs. 

Future works: provide richer context, like with Knowledge Graphs, 

Kensaku Komatsu: 
Presented slides: tbd
I want to demo WebVMT / DataCue for lighting devices.
geo location data and media data. Mapping information automatically synchronized with the video. 
VMT is for the mapping information, I am trying to apply the device data. This is a sample of:He shows the two files, lyric.vtt and dmx.vtt.
WebVTT shows the timeline. 
The difference to VMT is an extension of VTT, it can describe object data.
For the track we can apply the same approach with the VTT, mixes the lyrics and the device controllers. 

This is a diagram of my implementation. Timeline-based metadata for the devices, we can run some lyrics. 
I will show you the demonstration. 

First demo is a simple demonstration. Network issues in place. We can see the lights are synchronized with the lights outside. 
The next one is even a more fantastic demo. He shows the second demo with the music and synchronized lights. 


Piotr: 
Presented slides: tbd
    We are a startup building RDF streaming. Some parts of this are open source you can use, called Jelly. Some are still on the way. I'm new to WoT. When I heard about it and thought of integrating it in our solutions. 
    The nice thing about the WoT is that I dont need to read the device manuals, I can just use the TD.
    I also want to be able to learn about the semantics. Out of our semantics magically comes the knowledge graph. Then you can use SPARQL quries. 
    I tried the TDs provided by ECHONET. 
    It provides the properties and some minimal semantics encoded. I will be using those, it's JSON-LD.
    I provided two pipelines, it allows you to define the RDF stream, how often I want to poll it, and the properties I want, I also tell it the schema like Saref. 
    
    In the second pipeline, I publish it to an MQTT broker. I could have also done something like SPARQL or SHACL validation. 
    
    Here is the output. We put it in a saref observation, provide the unit of measurement, timestamp and so on.
    The same thing also works for the ceiling light, we poll it every 5sec. For me the advantage was zero configuration. We can scale this to any number of protocols, OPC UA, modbus and so on. 
    Preserves data semantics. 
    
    Sebastian: If there are any Question. 
    
   Vincet Sheib:  Very interesting work, is the WG do any work to connect to the browser and connect to the Web of Things?
    Sk: It depends on the procols that are used. It becomes difficult when you use non-Web protocols. It would be nice if the browser support more protocols. We have to fight the cross-origins. A gateway is required. We are open for this and at the moment we don't have a solution but we are willing to . 

Discussion: Sylvia Cadena: She wants to follow up with us to discuss how they can help us push WoT to policy makers, so they better understand it. 
Disussion: Vincet Sheib - Protocols in the browser





