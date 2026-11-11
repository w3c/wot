Web of Things Live Demonstration

28 October 16:30 - 17:30, TPAC 2026

16:30HRS

Present:
1. Kaz Ashimura
1. Siyaman Sadagopan
1. Brady Duga
1. Louay Bassbouss
1. Hisayuki Ohmata
1. David Ezell
1. Kim Seufer
1. Manu Sporny
1. Yinch Yeap
1. Enrico Scoda
1. Nanaka Kido
1. Eric Carson
1. Kensaku Komatsu
1. Rob Warren
1. Dave Raggett
1. Rik Cabanier
1. Rem Collier
1. Mahda Noura
1. Mateusz Jaworski
1. Phillip Tronstad
1. Ege Korkan
1. Sebastian Kaebisch
1. Erich Barnstedt
1. Noriaki Matsumura
1. Yohei Sonobe
1. Kunihiko Toumura
1. Wolfgang Schildbach
1. Rob Smith
1. Ding Wei

Remote:
1. Tao Xin
1. Tomoaki Mizushima
1. Daniel Peintner
1. Masakazu Kitahara
1. Cristiano Aguzzi
1. Ben Francis
1. Lorenzo Gigli
1. Meir Hakkak

### Opening
Sebastian Kaebish - Welcome everyone.  Introduces the Web of Things and lists the demos that will be shown. Things as physical devices, such as room temperature and activate air conditioners. 

Problem of onboarding devices and the data they provide.  How we can provide a way to simplify this challenge given the fragmentation/diversity of IoT technologies. The idea is to have a standard way to describe devices, which can be thought of a as landing (web) page for devices.

Shows example of a Thing Description using a text format: JSON-LD, and the cover page for the TD 1.1 W3C Recomendation.

Thing Descriptions for Legacy devices can be created using LLMs reading human oriented PDFs.

Thing Descriptions provide a means to enable business logic to avoid details of protocol specifics, i.e. to express business logic in terms of the API exposed by the Thing Description.

Upcoming event in China on explaining the Web of Things.

Plans for the new charter:
    More features and includes physical AI.
    More bindings.
    

### Ege introduces the demos you will see:

#### University Dublin
Rem Collier (University Dublin) - Simulating an entire building.
Apartment demo with sensors in the room. MQTT for local devices.
Uses ASTRA/MAMS for agents and fresh data. Autodiscovery of the sensors within the different rooms. 
Claude used for generation of rules; rules are run locally.
LLM will generate the policy which generates an agent that implements its.

Question: is the agent running locally?  Yes.

#### ECHONET
Yoheu Sonobe (Nagasaki Univ)  & Tao Xin (Jaist) - Echonet
11 Echonet devices are located in Japan and relayed over AWS using SSH. The Jaist testbed is a smart home testbed with 11 devices including a camera and an air filter.  Demo for remotely turning a lamp and fan on and off using Linux curl command to send HTTP requests, with effects visible via video stream.
Note on the upcoming WoT F2F in 2027 in Nagasaki.
(Note Taker's comments: Very impressive live slides)

#### Hitachi
Kunihiko Toumura (Hitachi)
Media MTX based demo; moQT, RTSP. RTMP, WEBrtc, SRT,HLA 
Consumer is a laptop application that browses local devices for TD. Drag and drop application allowing the data to be moved in and out from one TD device to another with declarable latency. 
Application linked a live camera to a webGPU application detecting object to another TD device speaking out loud the detected objects.

This demo is interesting in respect to requirements for Thing Descriptions for this use case.

#### Microsoft / OPC
Erich Barnsted (Microsoft)

Application translated OPC UA foundations profiles to TD profiles. Translators comes with a brower that takes the OPCOA nodes and will create mappings for it.  Shows a folder hierarchy view of the devices. Demo's drag and drop configuration support for updating Thing Descriptions. Good level industry interest!

Question: regaring use of AI agents, you use them to read documents and build the TDs, do you really need the TDs if the agent provides a good enough interface?

Answser: for robust and repeatable operation, we find it necessary to use a standard symbolic form as a target for machine readable descriptions.  Relying on an LLM to be consistent can be problematic.

#### Siemens
Mahda Noura & Ege Korkan
"How can we make physical AI that doesn't guess and doesn't hallucinate"
Deal with the problem of merging LLM's with physical devices so that LLMs don't guess data that is unknown.
Uses a console text interface for natural language querying of the LLM about the devices.
System has the ability to deal with ambiguity about data input and can deal with missing or ambigiuous data such a F and C units.
Error correctioni s possible in "Set the speaker volume to 20degree celcius"
Demo where the water leak sensor is used and the llm will reply to a query "Something feels off, tell me if everything is ok". 

#### DNV
Mateusz Jaworski and Philiip Tronstand (WoT Maritime Artifact Factory)

Maritime systems lack consistency and industry-wide standardisation.

Modelled on ITxPT

LLMs assist subject-matter experts to build and update WoT TDs.
Application capable of developing artifacts using NLP queries.
Example TD description for a maritime engine from a ship. 

[adjourned]

