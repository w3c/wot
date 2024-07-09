{{multiple issues|
{{cleanup|reason=How is this different from [[Internet of Things]]|date=November 2018}}
{{peacock|date=November 2018}}
{{undue|date=November 2018}}
}}
The '''Web of Things''' ('''WoT''') is software architectural styles and programming patterns that allow real-world objects to be part of the World Wide Web. Similarly to what the Web (Application Layer) is to the Internet (Network Layer),<ref>{{cite web|title=SlideShare The Web of Things with Mozilla Open Badges|url=http://www.slideshare.net/PatrickJohnMcGee/the-web-of-things-with-mozilla-open-badges-40521825|date=2014-10-20}}</ref> the Web of Things provides an Application Layer that simplifies the creation of [[Internet of Things]] applications.<ref name="wot-book-manning">
*{{Cite book
 | last = Guinard
 | first = Dominique
 | last2 = Vlad
 | first2 = Trifa
 | year = 2015
 | title = Building the Web of Things
 | publisher = Manning
 | isbn = 9781617292682
 | url = http://book.webofthings.io
}}</ref><ref name="wotbook">{{cite book
|last1=Guinard
|first1=Dominique
|last2=Trifa
|first2=Vlad
|last3=Mattern
|first3=Friedemann
|last4=Wilde
|first4=Erik
|year=2011
|title = From the Internet of Things to the Web of Things: Resource Oriented Architecture and Best Practices.
|publisher = Springer
|isbn = 978-3-642-19156-5
|pages = 97–129
|url = http://www.vs.inf.ethz.ch/publ/papers/dguinard-fromth-2010.pdf
}}
</ref><ref name="wotpaper">
{{cite conference
|last1=Guinard
|first1=Dominique
|last2=Trifa
|first2=Vlad
|year=2009
|conference =  WWW (International World Wide Web Conferences), Enterprise Mashups and Lightweight Composition on the Web (MEM 2009) Workshop
|title = Towards the Web of Things: Web Mashups for Embedded Devices.
|url = http://www.vs.inf.ethz.ch/publ/papers/dguinard_09_WOTMashups.pdf
}}</ref><ref name="thesis-guinard">{{cite thesis 
|type=Ph.D. 
|first=Dominique
|last=Guinard
|title= A Web of Things Application Architecture – Integrating the Real-World into the Web.
|publisher=ETH Zurich
|year=2011
|url=http://www.vs.inf.ethz.ch/publ/papers/dguinard-awebof-2011.pdf
}}</ref><ref name="thesis-trifa">{{cite thesis 
|type=Ph.D. 
|first=Vlad 
|last=Trifa 
|title=Building Blocks for a Participatory Web of Things: Devices, Infrastructures, and Programming Frameworks 
|publisher=ETH Zurich
|year=2011
|url=http://www.vs.inf.ethz.ch/publ/papers/trifam-buildi-2011.pdf
}}</ref><ref name="GuinardTrifa2009">{{cite book|last1=Guinard|first1=Dominique|title=2009 Sixth International Conference on Networked Sensing Systems (INSS)|last2=Trifa|first2=Vlad|last3=Pham|first3=Thomas|last4=Liechti|first4=Olivier|chapter=Towards physical mashups in the Web of Things|year=2009|pages=1–4|doi=10.1109/INSS.2009.5409925|isbn=978-1-4244-6313-8|citeseerx=10.1.1.155.5455}}</ref><ref name="wot-iot-paper">
{{cite conference
|last1=Guinard
|first1=Dominique
|last2=Trifa
|first2=Vlad
|last3=Wilde
|first3=Erik
|year=2010
|conference = Internet of Things 2010 International Conference (IoT 2010)
|title = A Resource Oriented Architecture for the Web of Things.
|url = http://www.vs.inf.ethz.ch/publ/papers/dguinard-things-2010.pdf
}}</ref>

Rather than re-inventing completely new standards, the Web of Things reuses existing and well-known Web standards<ref name="wotbook"/><ref name="wotpaper"/> used in the programmable Web (e.g., [[REST]], [[HTTP]], [[JSON]]), semantic Web (e.g., [[JSON-LD]], [[Microdata (HTML)|Microdata]], etc.), the real-time Web (e.g., [[WebSocket]]s) and the social Web (e.g., [[OAuth]] or social networks).<ref name="thesis-trifa"/>

==Nature of Things==

Research in the Web of Things usually considers things in the broad sense of physical objects. Things can include (but is not limited to) tagged objects (RFID, NFC, QR codes, Barcodes, Image Recognition)<ref name="wotrfid">
{{cite conference
|last1=Guinard
|first1=Dominique
|last2=Mathias
|first2=Mueller
|last3=Jacques
|first3=Pasquier
|year=2010
|conference = Internet of Things 2010 International Conference (IoT 2010)
|title = Giving RFID a REST: Building a Web-Enabled EPCIS
|url = http://www.vs.inf.ethz.ch/publ/papers/dguinard-giving-2010.pdf
}}</ref> to Wireless Sensor Networks (WSN), machines, vehicles and consumer electronics.<ref name="thesis-guinard"/>

==Architecture and framework==

While there are ongoing efforts to standardise it,<ref name="wot-wg">{{cite web
  |url=http://www.w3.org/2014/09/wot-ig-charter.html
  |title=Web of Things Interest Group
}}</ref> the Web of Things is a set of best practices that can be classified according to the Web of Things architecture.<ref name="wot-book-manning"/><ref name="thesis-guinard"/>

The architecture proposes four main layers (or stages) that are used as a framework to classify the different patterns and protocols involved.
[[File:Layers of the Web of Things Architecture.png|thumb|Layers of the Web of Things Architecture as illustrated in Building the Web of Things<ref name="wot-book-manning"/>]]

===Accessibility layer===

This layer deals with the access of things to the Internet and ensure they expose their services via Web APIs. This is the core layer of the WoT as it ensures things have a Web accessible API, transforming them into programmable things.<ref name="wotbook"/><ref name="wotpaper"/><ref name="GuinardTrifa2009"/><ref name="DuquennoyGrimaud2009">{{cite book|last1=Duquennoy|first1=Simon|title=2009 International Conference on Embedded Software and Systems|last2=Grimaud|first2=Gilles|last3=Vandewalle|first3=Jean-Jacques|chapter=The Web of Things: Interconnecting Devices with High Usability and Performance|year=2009|pages=323–330|doi=10.1109/ICESS.2009.13|isbn=978-0-7695-3678-1|citeseerx=10.1.1.651.6369}}</ref>

The access layer in the WoT is built around two core patterns:
Firstly, all things should be exposing their services through a RESTful API (either directly or through gateway).<ref name="wotbook"/> [[REST]] is an architectural style at the root of the programmable Web thanks to its implementation in [[HTTP]] 1.1. As a consequence, if things offer [[RESTful]] [[API]]s over HTTP, they get a [[URL]] and become seamlessly integrated to the World Wide Web and its tools such as browsers, hyperlinked [[HTML]] pages and [[Javascript]] applications.<ref name="wotpaper"/>

Several designs describing how the services offered by things can be accessed via REST have been proposed.<ref name="wotbook"/><ref name="wot-iot-paper"/>

Secondly, the request-response nature of HTTP is often cited as one of the limitations for IoT use-cases as it does not match the event-driven nature of applications that are common in the Wireless Sensor Networks.<ref name="wotbook"/><ref name="thesis-trifa"/><ref name="internet-wsn">{{cite conference
|last1=Yazar
|first1=Dogan
|last2=Dunkels
|first2=Adam
|year=2009
|conference = ACM Workshop on Embedded Sensing Systems for Energy-Efficiency in Buildings (BuildSys '09)
|title = Efficient application integration in IP-based sensor networks.
|doi=10.1145/1810279.1810289
}}</ref> To overcome this shortcoming while keeping a focus on fostering integration with the Web, several authors have suggested the use of [[HTML5]] WebSockets either natively or through the use of translation brokers (e.g., translating from [[MQTT]] or [[CoAP]] to WebSockets).<ref name="thesis-guinard"/><ref name="thesis-trifa"/><ref name="wot-wg"/><ref>{{cite web
  |url=https://evrythng.com/2014/10/connected-devices-real-time-push-web-things/
  |title=Connected devices, real-time push and the Web of Things
}}</ref> This complements the REST API of things with a publish subscribe mechanism that is largely integrated with the Web eco-system.

Some things can connect directly to the Internet (e.g., using [[Ethernet]], [[WiFi]] or [[GSM]]/[[3G]]), but in other cases (for example when devices are battery-powered) devices can access the Internet through Smart Gateways. Smart Gateway are protocol translation gateways at the edge of the network.<ref name="wot-iot-paper"/><ref name="gateways">{{cite conference
|last1=Trifa
|first1=Vlad
|last2=Wieland
|first2=Samuel
|last3=Guinard
|first3=Dominique
|last4=Thomas
|first4=Bonhert
|year=2009
|conference = International Workshop on Sensor Network Engineering (IWSNE 09)
|title = Design and implementation of a gateway for web-based interaction and management of embedded devices
|url = http://www.vs.inf.ethz.ch/publ/papers/trifam-design-2009.pdf
}}</ref>

===Findability layer===

The focus of this layer is to provide a way to find and locate things on the Web and hence is strongly influenced by the semantic Web.<ref name="thesis-guinard"/><ref name="wot-wg"/>

The approach here is to reuse Web semantic standards to describe things and their services. In particular, people have been working on HTML5 [[Microdata (HTML)|Microdata]] integration, [[Resource Description Framework|RDF]] / [[RDFa]], [[JSON-LD]] and [[Efficient XML Interchange|EXI]].<ref name="thesis-guinard"/><ref name="wot-iot-paper"/><ref name="wot-wg"/> This enables searching for things through search engines and other Web indexes as well as enabling machine to machine interaction based on a small set of well-defined formats and standards.

===Sharing layer===

The Web of Things is largely based on the idea of things pushing data to the Web where more intelligence and big-data patterns can be applied as an example to help us manage our health ([[Wearables]]), optimise our energy consumption ([[Smart Grid]]), etc. This, however, can only happen in a large-scale way if some of the data can be efficiently shared across services. The sharing layer ensures that data generated by things can be shared in an efficient and secure manner.

Several approaches towards a granular and social context based sharing have been proposed such as the use of social network to build a Social Web of Things.<ref name="social-wot">{{cite conference
|last1=Guinard
|first1=Dominique
|last2=Trifa
|first2=Vlad
|last3=Fischer
|first3=Mathias
|year=2010
|conference = First IEEE International Workshop on the Web of Things (WOT2010)
|title = Sharing Using Social Networks in a Composable Web of Things.
|url=http://www.vs.inf.ethz.ch/publ/papers/dguinard-sharin-2010.pdf
}}</ref><ref name="ChungMashal2013">{{cite book|last1=Chung|first1=Tein-Yaw|title=2013 International Conference on Parallel and Distributed Systems|last2=Mashal|first2=Ibrahim|last3=Alsaryrah|first3=Osama|last4=Huy|first4=Van|last5=Kuo|first5=Wen-Hsing|last6=Agrawal|first6=Dharma P.|chapter=Social Web of Things: A Survey|year=2013|pages=570–575|doi=10.1109/ICPADS.2013.102|isbn=978-1-4799-2081-5}}</ref>

===Composition layer===

The role of the last layer is to integrate the services and data offered by things into higher level Web tools (analytics software, mashup applications such as [[IFTTT]]), making it even simpler to create applications involving things and virtual Web services.

Tools in the composition layer range from Web toolkits (e.g., Javascript SDKs offering higher-level abstractions)<ref name="thesis-trifa"/> to dashboards with programmable widgets<ref name="wotrfid"/> and Physical Mashup tools.<ref name="thesis-guinard"/> Inspired by Web 2.0 participatory services and in particular [[Web mashups]], the Physical Mashups offer a unified view of the classical Web and Web of Things and empower people to build applications using the Web of Things services without requiring programming skills.<ref name="thesis-guinard"/>

A number of Web of Things Physical Mashup have been developed<ref name="KovatschWeiss2010">{{cite book|last1=Kovatsch|first1=Matthias|title=2010 IEEE 15th Conference on Emerging Technologies & Factory Automation (ETFA 2010)|last2=Weiss|first2=Markus|last3=Guinard|first3=Dominique|chapter=Embedding internet technology for home automation|year=2010|pages=1–8|doi=10.1109/ETFA.2010.5641208|isbn=978-1-4244-6848-5|citeseerx=10.1.1.171.294}}</ref><ref name="Blackstock">{{cite journal|last=Blackstock|first=M.|author2=Lea, R. |title=IoT Mashups with the WoTKit|journal=Internet of Things 2012 (IEEE)|date=October 2012|volume=In Press|url=http://www.iot2012.org/}}</ref><ref name="home-mashup">{{cite conference
|last1=Guinard
|first1=Dominique
|last2=Trifa
|first2=Vlad
|last3=Fischer
|first3=Mathias
|year=2010
|conference = ICWE 2010 (International Conference on Web Engineering)
|title = Mashing up Your Web-Enabled Home.
|url=http://www.vs.inf.ethz.ch/publ/papers/dguinard-mashin-2010.pdf
}}</ref> and tools have been proposed and are being actively developed such as.<ref name="node-ref">{{cite web
  |url=http://nodered.org/
  |title=NodeRed
}}</ref><ref name="collaborative-devices">{{cite conference
|last1=Brut
|first1=M.
|last2=Gatellier
|first2=P.
|last3=Salhi
|first3=I.
|year=2014
|conference = WF-IoT 2014 (World Forum - Internet of Things)
|title = When devices become collaborative: Supporting device interoperability and behaviour reconfiguration across emergency management scenario
|doi=10.1109/WF-IoT.2014.6803169
}}</ref>

==History==

Pioneering work in connecting objects to the Web probably started around the year 2000. In 2002, a peer-reviewed paper presented the Cooltown project.<ref name="KindbergBarton2000">{{cite book|last1=Kindberg|first1=T.|title=Proceedings Third IEEE Workshop on Mobile Computing Systems and Applications|last2=Barton|first2=J.|last3=Morgan|first3=J.|last4=Becker|first4=G.|last5=Caswell|first5=D.|last6=Debaty|first6=P.|last7=Gopal|first7=G.|last8=Frid|first8=M.|last9=Krishnan|first9=V.|last10=Morris|first10=H.|last11=Schettino|first11=J.|last12=Serra|first12=B.|last13=Spasojevic|first13=M.|chapter=People, places, things: Web presence for the real world|year=2000|pages=19–28|doi=10.1109/MCSA.2000.895378|isbn=978-0-7695-0816-0|citeseerx=10.1.1.24.4651}}</ref> This project explored the use of URLs to address and HTTP interact with physical objects such as public screens or printers.

Following this early work, the growing interest and implementation of the [[Internet of Things]] started to raise some questions about the application layer of the IoT.<ref name="wot-iot-paper"/> While most of the work in the IoT space focused on network protocols, there was a need to think about the convergence of data from IoT devices. In particular, rather than looking at "one device one app", researchers and practitioners started envisioning the IoT as a system where data from various devices could be consumed by Web applications to create innovative use-cases.

The idea of the Web as an application-layer for the IoT started to emerge in 2007. Several researchers started working in parallel on these concept. Amongst them, [[Dominique Guinard]] and [[Vlad Trifa]] started the Web of Things online community and published the first WoT manifesto, advocating the use of Web standards (REST, Lightweight semantics, etc.) to build the application layer of the IoT. The manifesto was published together with an implementation on the Sun SPOT platform. At the same time, [[Dave Raggett]] from [[W3C]] started talking about a Web of Things at various W3C and IoT events.  Erik Wilde published "Putting Things to REST", a self-published concept paper looking at utilising REST to sense and control physical objects.<ref name="rest-things">{{cite web
  |url=http://dret.net/netdret/docs/wilde-irep07-015-restful-things.pdf
  |title=Putting things to REST
}}</ref> Early mentions of the Web of Things as a term also appeared in a paper by Vlad Stirbu et al.<ref name="stirbu">{{Cite conference
| conference = Semantic Computing, 2008 IEEE International Conference on
| pages = 512–517
| last = Stirbu
| first = V.
| title = Towards a RESTful Plug and Play Experience in the Web of Things
| booktitle = Semantic Computing, 2008 IEEE International Conference on
| year = 2008
}}</ref>

From 2007 onwards, Trifa, Guinard, Wilde and other researchers tried publishing their ideas and concepts at peer-reviewed conferences but their papers got rejected by the Wireless Sensor Networks research community on the basis that Internet and Web protocols were too verbose and limited in the context of real-world devices,<ref name="wot-5years">{{cite web
  |url=http://www.slideshare.net/misterdom/5-years-of-web-of-things-workshops
  |title=5 Years of Web of Things Workshops
|date=2014-10-23
}}</ref> where optimisation of memory and computation usage, wireless bandwidth, or very short duty cycles were essential.
 
However, a number of researchers in the WSN community started considering these ideas more seriously. Early 2009, a number of respected WSN researchers such as David Culler, Jonathan Hui, Adam Dunkels and Yazar Dogan evaluated the use of Internet and Web protocols for low-power sensor nodes and showed the feasibility of the approach.<ref name="HuiCuller2008">{{cite book|last1=Hui|first1=Jonathan W.|title=Proceedings of the 6th ACM conference on Embedded network sensor systems - Sen ''Sys'' '08|last2=Culler|first2=David E.|chapter=IP is dead, long live IP for wireless sensor networks|year=2008|pages=15|doi=10.1145/1460412.1460415|isbn=9781595939906|citeseerx=10.1.1.562.6336}}</ref><ref name="YazarDunkels2009">{{cite book|last1=Yazar|first1=Dogan|title=Proceedings of the First ACM Workshop on Embedded Sensing Systems for Energy-Efficiency in Buildings - Build ''Sys'' '09|last2=Dunkels|first2=Adam|chapter=Efficient application integration in IP-based sensor networks|year=2009|pages=43|doi=10.1145/1810279.1810289|isbn=9781605588247|citeseerx=10.1.1.158.3650}}</ref>

Following this, Guinard and Trifa presented their end-to-end implementation of the concepts and presented it in a peer-reviewed publication accepted at the World Wide Web conference in 2009.<ref name="wotpaper"/> Building on this implementation and uniting efforts, a RESTful architecture for things was proposed in 2010 by Guinard, Trifa and Wilde.<ref name="GuinardTrifa2010">{{cite book|last1=Guinard|first1=Dominique|title=2010 Internet of Things (IOT)|last2=Trifa|first2=Vlad|last3=Wilde|first3=Erik|chapter=A resource oriented architecture for the Web of Things|year=2010|pages=1–8|doi=10.1109/IOT.2010.5678452|isbn=978-1-4244-7413-4}}</ref> Noticing a growing industrial and academic interest for connecting things to the Web, Guinard, Trifa and Wilde ran the first International Workshop on the Web of Things,<ref name="wot-workshop">{{cite web
  |url=http://www.webofthings.org/wot
  |title=International Workshop on the Web of Things
}}</ref> WoT 2010 which has been running yearly since. These workshops have become the first forum where a growing community of researchers and practitioners could discuss the latest findings and ideas in the Web of Things.

In 2011, two of the first PhD theses on the Web of Things were presented at ETH Zurich: Building Blocks for a Participatory Web of Things: Devices, Infrastructures, and Programming Frameworks from Vlad Trifa<ref name="thesis-trifa"/> and A Web of Things Application Architecture – Integrating the Real-World into the Web from Dominique Guinard.<ref name="thesis-guinard"/>

In 2011 Dominique Guinard and Vlad Trifa together with Niall Murphy and Andy Hobsbawm got together and founded [[EVRYTHNG]],<ref>{{cite web
  |url=http://www.evrythng.com
  |title=EVRYTHNG
}}</ref> one of the first cloud software companies entirely leveraging the Web of Things to serve industry needs. Several other WoT startups were started around this time such as Sensetecnic<ref>{{cite web|url=http://www.sensetecnic.com |title=Sensetecnic |publisher=SenseTecnic |accessdate=2012-08-05}}</ref> or Yaler.<ref>{{cite web|url=http://www.yaler.com |title=Yaler}}</ref>

In 2014, the W3C showed an increased interest in the Web of Things and organised the W3C Workshop on the Web of Things,<ref>{{cite web|url=http://www.w3.org/2014/02/wot/ |title=W3C Workshop on the Web of Things}}</ref> under the lead of Dave Raggett together with Siemens and the COMPOSE European project. This workshop lead to the creation of the Web of Things Interest Group<ref name="wot-wg"/> and the submission of the Web Thing Model.<ref>{{cite web|url=http://www.w3.org/Submission/2015/01/ |title=Web Thing Model}}</ref>

The same year, Siemens announced the creation of a research group dedicated to the Web of Things.<ref>{{cite web|url=http://www.usa.siemens.com/en/about_us/research/web-of-things.htm |title=Siemens Web of Things Research Group}}</ref> In October 2014, Google also announced their interested in these ideas by launching the Physical Web GitHub project.<ref>{{Cite web|url=https://github.com/google/physical-web|title=The Physical Web|last=|first=|date=|website=GitHub|language=en|archive-date=|dead-url=|access-date=2017-02-08}}</ref>

== Application examples ==
* One of the early prototypes of the Web of Things is the "[[Energie Visible]]" project in which sensors capable of monitoring and controlling the energy consumption of household appliances offered their functionality through a [[RESTful]] [[API]]. This API is then used to create a physical [[Mashup (web application hybrid)|Mashup]].<ref>
 {{cite web
  |url=http://www.webofthings.org/?s=energie+visible
  |title=Energie Visible Web of Things Project
}}</ref>

* [[Nimbits]]<ref>{{cite web|url=http://www.nimbits.com |title=free, social and open source internet of things. |publisher=Nimbits |accessdate=2012-05-10}}</ref> is an open source data historian server built on [[cloud computing architecture]] that provides connectivity between devices using data points.
* [[Xively]] (formerly Pachube) is a commercial web of things data aggregator and data mining website often integrated into the Web of Things.
* [[ThingSpeak]] is an [[open source]] [[Internet of Things]] platform created by [[Hans Scharler]] to collect, analyze, and act on data generated by sensors and actuators.<ref>{{citation
|title=github README file
|url=https://github.com/iobridge/thingspeak/blob/master/README.textile
|date=2019-02-19
}}</ref>

* [[EVRYTHNG]]<ref>{{cite web|url=http://www.evrythng.com |title=making products smart. |publisher=EVRYTHNG |accessdate=2013-05-24}}</ref> is a platform for making unconnected products and connected devices part of the Web based on a Web of Things architecture.
* [[WeIO]] is an open source hardware and software platform for rapid prototyping and creation of wirelessly connected interactive objects using only popular web languages such as HTML5 or Python.
* SMQ<ref>{{cite web|url=https://realtimelogic.com/products/simplemq/ |title=SMQ: Lightweight IoT protocol |publisher=Real Time Logic |accessdate=2015-02-27}}</ref> is a real time pub-sub protocol that bridges WoT with IoT. The protocol makes it easy to design web based user interfaces for device management and supervision. The Mako Server,<ref>{{cite web|url=https://makoserver.net/smq-broker/ |title=SMQ Broker: Ready to use SMQ Broker |publisher=Real Time Logic |accessdate=2015-02-27}}</ref> which can be compiled for anything from embedded devices to enterprise Linux servers, includes a ready to use SMQ broker.
* An application of the Web of Things in smart homes has been investigated in,<ref>Kamilaris A. Enabling Smart Homes using Web Technologies. PhD Thesis, University of Cyprus, Nicosia, Cyprus, December, 2012.</ref> to address the problem of heterogeneous home devices by reusing Web technologies.
* Sense Tecnic Systems<ref>{{cite web|url=http://www.sensetecnic.com |title=WoTKit: Lightweight IoT toolkit |publisher=SenseTecnic |accessdate=2012-08-05}}</ref> focuses on a lightweight toolkit for developing IoT applications and targets rapid development using Web technologies and protocols. The WoTKit toolkit has been described at the 2012 IoT conference<ref name="Blackstock"/>  and builds on research from UBC's Media and Graphics Interdisciplinary Centre,<ref name="UBC MAGIC">{{cite web|url=http://www.magic.ubc.ca|title=Media and Graphics Interdisciplinary Centre, University of British Columbia |publisher=UBC |accessdate=5 August 2012}}</ref> in particular the work on the MAGIC Broker as published at IoT 2010.<ref>{{cite book|last=Blackstock|first=M.|author2=Kaviani, N. |author3=Lea, R. |author4=Friday, A. |title=MAGIC Broker 2: An open and extensible platform for the Internet of Things|journal=IoT 2010 (IEEE Press)|date=Nov 29 – Dec 1, 2010 |pages=1–8|doi=10.1109/IOT.2010.5678443|url=http://nima.magic.ubc.ca/www/2publications/2010/20100731/PDF_Version.pdf|isbn=978-1-4244-7413-4}}</ref>

==Alternative approaches==

A number of alternative approaches to Web standards have been proposed, such as [[WS-*]] services,<ref name="CarboniZanarini2007">{{cite book|last1=Carboni|first1=Davide|title=Proceedings of the 6th international conference on Mobile and ubiquitous multimedia - MUM '07|last2=Zanarini|first2=Pietro|chapter=Wireless wires|year=2007|pages=169–175|doi=10.1145/1329469.1329492|isbn=9781595939166}}</ref> but these were later shown as not necessarily well-suited for real-world things.<ref name="YazarDunkels2009"/><ref name="GuinardIon2012">{{cite book|last1=Guinard|first1=Dominique|last2=Ion|first2=Iulia|last3=Mayer|first3=Simon|title=In Search of an Internet of Things Service Architecture: REST or WS-*? A Developers' Perspective|volume=104|year=2012|pages=326–337|issn=1867-8211|doi=10.1007/978-3-642-30973-1_32|url=http://www.vs.inf.ethz.ch/publ/papers/dguinard-rest-vs-ws.pdf|series=Lecture Notes of the Institute for Computer Sciences, Social Informatics and Telecommunications Engineering|isbn=978-3-642-30972-4|citeseerx=10.1.1.228.3838}}</ref>

The [[Constrained Application Protocol]] (CoAP) is also quite often cited as an alternative or complementary approach for resource-constrained devices.<ref name="Kovatsch2013">{{cite book|last1=Kovatsch|first1=Matthias|title=Proceedings of the 2013 ACM conference on Pervasive and ubiquitous computing adjunct publication - Ubi ''Comp'' '13 Adjunct|chapter=CoAP for the web of things|year=2013|pages=1495–1504|doi=10.1145/2494091.2497583|chapter-url=http://www.vs.inf.ethz.ch/publ/papers/mkovatsc-2013-wot-copper.pdf|isbn=9781450322157}}</ref> CoAP shares similarities with the Web of Things architecture such as the use of RESTful resources.

==See also==
* [[Internet of Things|Internet of Things (IoT)]]
* [[Smart device]]
* [[Connected Devices (disambiguation)|Connected Device]]
* [[Home automation|Home automation devices]]
* [[Smart grid]]

== References ==
<references/>

== Further reading ==
*{{Cite book
 | last = Guinard
 | first = Dominique
 | last2 = Vlad
 | first2 = Trifa
 | year = 2015
 | title = Building the Web of Things
 | publisher = Manning
 | isbn = 9781617292682
 | url = http://book.webofthings.io
}}

* {{cite web
  |url=http://www.webofthings.org/wot
  |title=Proceedings of International Workshops on the Web of Things.
}}

*{{Cite conference
| last = Guinard
| first = Dominique
|author2=Vlad Trifa |author3=Erik Wilde
 | title = A Resource Oriented Architecture for the Web of Things
| booktitle = Proc. of IoT 2010 (IEEE International Conference on the Internet of Things)
| url=http://www.vs.inf.ethz.ch/publ/bibtex.html?file=papers/dguinard-things-2010
| location = Tokyo, Japan
| date = 2010
}}

*{{cite thesis 
|type=Ph.D. 
|first=Dominique
|last=Guinard
|title= A Web of Things Application Architecture – Integrating the Real-World into the Web.
|publisher=ETH Zurich
|year=2011
|url=http://www.vs.inf.ethz.ch/publ/papers/dguinard-awebof-2011.pdf
}}

*{{cite thesis 
|type=Ph.D. 
|first=Vlad 
|last=Trifa 
|title=Building Blocks for a Participatory Web of Things: Devices, Infrastructures, and Programming Frameworks 
|publisher=ETH Zurich
|year=2011
|url=http://www.vs.inf.ethz.ch/publ/papers/trifam-buildi-2011.pdf
}}

*{{Cite book|last=Fielding|first=Roy Thomas|year=2000|title=Architectural Styles and the Design of Network-based Software Architectures|version=Doctoral dissertation|publisher=University of California, Irvine|url=http://www.ics.uci.edu/~fielding/pubs/dissertation/top.htm}}
*{{Cite book
 | last = Richardson
 | first = Leonard
 | last2 = Ruby
 | first2 = Sam
 | author2-link = Sam Ruby
 | publication-date = May 8, 2007
 | year = 2007
 | title = RESTful Web Services
 | publisher = O'Reilly
 | isbn = 978-0-596-52926-0
}}

*{{Cite conference
 |last1=Fortuna
 |first1=Carolina
 |last2=Grobelnik
 |first2=Marko
 |date=2011-03-09
 |title=Tutorial: The Web of Things
 |url=http://sensorlab.ijs.si/en/publication/6/the-web-of-things
 |conference=Proceedings of the World Wide Web Conference 2011, Hyderabad, India
 |publisher=Association for Computing Machinery}}

== External links ==
* {{cite web
  |url=http://www.webofthings.org
  |title=Web of Things blog and online community.
}}

* {{cite web
  |url=http://book.webofthings.io
  |title=Building the Web of Things (Book).
}}

* {{cite web
  |url=http://www.webofthings.org/wot
  |title=International Workshop on the Web of Things.
}}

* {{cite web
  |url=http://www.w3.org/WoT/
  |title=Web of Things at W3C
}}

* {{cite web
  |url=http://www.linkedin.com/groups?gid=1818463
  |title=Web of Things Linkedin community.
}}

* {{cite web
  |url=http://datatracker.ietf.org/wg/core/charter/
  |title=IETF CoRE WG charter
}}

{{Ambient intelligence}}

[[Category:Cloud standards]]
[[Category:Web 2.0 neologisms]]
[[Category:World Wide Web]]
[[Category:Internet of things]]
