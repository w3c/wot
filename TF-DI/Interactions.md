
WoT Discovery Interaction Patterns
----------------------------------

In the following, interaction patterns for the key [discovery categories](https://www.w3.org/WoT/IG/wiki/Discovery_Categories_and_Tech_Landscape) for the WoT are described as UML sequence diagrams.  
  
<br>
<br>
<br>
<br>
  
### 1. Finding Things Around Me

This category of discovery includes technologies that allow to discover things around me (in a spatial sense).

Example technologies are: optical markers, NFC, UriBeacons, or iBeacons.

The client is for example a Bluetooth-enabled mobile phone used to discover the environment for things.

![Alt text](http://g.gravizo.com/g?
@startuml;
Client ->> Client : listen for messages;
Client <<- Thing : send advertise message with endpoint address;
@enduml;
)

<br>
<br>
<br>
<br>

### 2. Finding Things on My Network

This category includes technologies that allow discovery of endpoints of things on the network.

Example technologies are:  mDNS, multicast CoAP, UPnP/SSDP, or WS-Discovery.

The client can for example be a mobile phone of a user, but also another thing that needs to interact with others.

![Alt text](http://g.gravizo.com/g?
@startuml;
Client ->> NetworkEntrypoint : send multicast query message;
NetworkEntrypoint ->> Thing : multicasts message to all listening things;
Client <<- Thing : send advertise message with endpoint address;
@enduml;
)

<br>
<br>
<br>
<br>

### 3. Searching in Directories

This category comprises technologies that setup a central directory can be used for discovery of things and resources. Queries can be submitted to the directory to search for things and/or resources.
 
Example technologies are: CoRE Resource Directory, XMPP IoT Discovery, or SPARQL endpoints.

The client can for example be an application utilized by the end user to find things of interest.

![Alt text](http://g.gravizo.com/g?
@startuml;
participant "Client";
participant "Directory";
participant "Thing";
Directory <<- Thing : registers itself;
Client ->> Directory : search;
Client <<-- Directory : result set;
@enduml;
)

<br>
<br>
<br>
<br>

### 4. Accessing Thing Metadata

Once a "service" has been discovered with the approaches above, next "resources" and/or general metadata access at thing level needs to be performed. 

Example technologies are: the CoRE link format, or HATEOAS.

The client can for example be an application that needs to work with the thing.

![Alt text](http://g.gravizo.com/g?
@startuml;
Client -> Thing : get description;
Client <<-- Thing : thing description;
@enduml;
)

<br>
<br>
<br>
<br>
