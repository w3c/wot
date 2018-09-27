# PlugFest Result for Bundang 2018

## 3 Checking points for 2018 Bundang plugfest

### 3.1 Testing Individually

#### 3.1.1 Validate Simplified TDs -- was Other Issues (1)

* Fujitsu
  - OK
  
* Hitachi
  - OK
  - There are some ambiguity in the interpretation of TD
    - How to select most suitable access method from multiple form entries?

* Panasonic
  - OK
  - Checked with using Thing Description Playground.
  
* Siemens
  - OK
  - Comment: TDs available at https://github.com/w3c/wot/tree/master/plugfest/2018-bundang/TDs/Siemens
  
* Oracle:
  - OK
  - Comment: There were some TD2DM + DM2TD converter fixes created during the plug fest. See https://github.com/mlagally/wot/tree/master/plugfest/2018-bundang/tools-oracle 

#### 3.1.2 Interact with Thing Directory -- was (5)

* Fujitsu
  - OK
  - Provided two Thing Directories on the local network and The Internet.
  - Tried to the Siemens directory, but could not.
  
* Hitachi: 
  - Fail

* Panasonic:
  - OK
  - Registered all Things to the directory.
    - Some TDs in [repository](https://github.com/w3c/wot/tree/master/plugfest/2018-bundang/TDs/Panasonic) such as [Simulator Air Conditioner](https://github.com/w3c/wot/blob/master/plugfest/2018-bundang/TDs/Panasonic/simulator/PanasonicSimulatedAirConditioner1.jsonld) have been registered to Fujitsu Local Proxy/Directory manually by using YARC on Raspberry Pi, and have been discovered through its Remote Proxy/Directory by using ARC on PC.
    - <b>Interaction with things on Remote Proxy was NOT successful due to some internal issue of the proxy</b>. 

* Siemens
  - Fail
  - Issue: Current sandbox does not fulfill high RAM requirements of GraphDB, so that Directory frequently crashes
  - Comment: Will move to better sandbox, possibly from Eclipse Thingweb
  
* Oracle
  - N/A

#### 3.1.3 Interact with Remote/Local Proxy -- was (1)

* Fujitsu
  - OK
  - Provided 1 Remote proxy and 2 Local proxy that were set in Bundang and in the Smart home in Japan.
  - Connected some application Servients and devices Servients from other members
  - Also connetected Oracle IoT Cloud Service with using Oracle binding on the Local proxy.
  
* Hitachi: connect our application with Remote/Local Proxy
  - OK
  - Connected Fujitsu's RotaryBeaconLight via Fujitsu's remote proxy.
  
* Panasonic:
  - OK
  - Connected Fujitsu's Proxies. ???
  
* Siemens
  - OK
  - Comment: Registered with Oracle remote proxy (festolive) and Fujitsu local proxy
  
* Oracle:
  - OK
  - Comment: Connected with Node-WoT and Fujitsu's Local proxy

#### 3.1.4 Implement Servient using node-wot -- was (3)

* Fujitsu: 
  - Out of Time

* Hitachi: 
  - Out of Time

* Panasonic: 
  - Out of Time
  
* Siemens
  - OK
  - Comment: Implemented both Things and applications with node-wot
  
#### 3.1.5 Scripting API -- was (4)

* Fujitsu: 
  - Out of Time

* Hitachi: 
  - Out of Time

* Panasonic: 
  - Out of Time 
  
* Siemens
  - OK
  - Comment: Scripts stored under TODO and node-wot examples/scripts/ folder

### 3.2 Testing in Client Role
The following checking points must be completed together with a partner in server role.

#### 3.2.1 Metadata Handling

* Fujitsu: 
  - Out of Time

* Hitachi: incorporate Metadata in Node-RED contexts or messages.
  - OK
  - Our implementation uses label/description for Node-RED editor UI.
  - Use of semantic metadata ("iot:...", etc.) is future work.

* Panasonic:
  - OK
  - Panasonic Generic WoT client with WoT Scripting API loaded following TDs and accessed things successfully:
    - Oracle's [Fest Simulator](https://github.com/w3c/wot/blob/master/plugfest/2018-bundang/TDs/Oracle/Festo-Simulator5.jsonld) with following local modification.
        - <b>Changed "type" from "boolean" to "object" with "properties": {"PumpStatus" : {	"type": "boolean"
				}}, to align with actual endpoint implementation.</b>
    - Intel's [Button](https://github.com/w3c/wot/blob/master/plugfest/2018-bundang/TDs/Intel/intel-button.jsonld), [Light](https://github.com/w3c/wot/blob/master/plugfest/2018-bundang/TDs/Intel/intel-light.jsonld), [Motion](https://github.com/w3c/wot/blob/master/plugfest/2018-bundang/TDs/Intel/intel-motion.jsonld) and [RGB- Light](https://github.com/w3c/wot/blob/master/plugfest/2018-bundang/TDs/Intel/intel-rgb-light.jsonld).
        - <b>Issue:  Only first binding could be chosen from Multiple HTTP bindings written in Intel's TD, since there seems to be no way to distinguish and specify particular binding through Scripting API (?) </b>
    - Siemens's [EventSource](https://github.com/w3c/wot/blob/master/plugfest/2018-bundang/TDs/Siemens/EventSource.jsonld) and [EventSource-WS](https://github.com/w3c/wot/blob/master/plugfest/2018-bundang/TDs/Siemens/EventSource-WS.jsonld)
  - Panasonic Node-RED client loaded following TDs and accessed things successfully:
    - Intel's [Motion](https://github.com/w3c/wot/blob/master/plugfest/2018-bundang/TDs/Intel/intel-motion.jsonld)
    - Siemens's [EventSource-WS](https://github.com/w3c/wot/blob/master/plugfest/2018-bundang/TDs/Siemens/EventSource-WS.jsonld)
    - KETI's [IoT Sensor](https://github.com/w3c/wot/blob/master/plugfest/2018-bundang/TDs/KETI/keti_iot_sensor1.jsonld)

* Siemens
  - OK
  - Comment: node-wot parsed TDs from Fujitsu, Intel, KETI, Panasonic, Oracle, and SmartThings
  
* Oracle
  - OK 
  - Comment: The TD2DM converter parsed TDs from Fujitsu, Intel, KETI, Panasonic, Oracle, and SmartThings

#### 3.2.2 Property Handling -- was part of (2)

* Fujitsu: 
  - OK
    - Get bindings: HTTP(S)
    - Set bindings: HTTP(S)
  
* Hitachi:
  - OK
    - Get bindings: HTTP(S)
    - Set bindings: HTTP(S)
    - Observe bindings: HTTP(S)+Longpoll

* Panasonic:
  - OK
    - Get bindings: HTTP(S)
    - Set bindings: HTTP(S)
    
* Siemens
  - OK
    - Get bindings: HTTP(S), CoAP(S)
    - Set bindigns: HTTP(S), CoAP(S)
    - Comment: CoAP(S) finished testing with SmartThings at IETF 102 Hackathon
  - Out of Time
    - Observe bindings:
    - Comment: Planned to implement for HTTP(S)+LongPoll, CoAP(S) Observe, WebSockets, and MQTT
    
* Oracle
  - OK
  - Comment: mapping is required for non-primitive types, i.e. for array and object properties

#### 3.2.3 Action Handling -- was part of (2)

* Fujitsu: 
  - Out of Time

* Hitachi: 
  - OK
    - Invoke bindings: HTTP(S)
    
* Panasonic
  - Out of Time
  
* Siemens
  - OK
    - Invoke bindings: HTTP(S), CoAP(S), MQTT
    - Comment: CoAP(S) finished testing with SmartThings at IETF 102 Hackathon
    
* Oracle
  - OK
    - Invoke bindings: HTTP(S)

#### 3.2.4 Event Handling -- was part of (11)

* Fujitsu:
  - OK (cheched in Prague)
    - Subscribe: HTTP(s)+Longpoll
    - Subscribe: WebSocket
    - Subscribe: HTTP(s)+SSE
    - Commnt: Finished testing at Prague Plugfest

* Hitachi:  
  - OK
    - Subscribe: HTTP(S)+Longpoll

* Panasonic:  
  - OK
    - Subscribe: HTTP(S)+Longpoll
    - Subscribe: WebSocket
    
* Siemens
  - OK
    - Subscribe: HTTP(S)+Longpoll
  - Out of Time
    - Subscribe: HTTP(S)+Webhooks
    - Subscribe: Websockets

#### 3.2.5 Security -- was part of (9)

* Fujitsu: 
  - OK (checked in Prague) TBD link
    - basic
    - digest
    - bearer
   
* Hitachi: our client consume following Security Schemes:
  - OK
    - basic
    - digest
    - bearer
    - We need security metadata to designate HTTP header name for API key
      - Panasonic's simulator uses "X-PWOT-TOKEN" header.
      - for example, OpenAPI 3.0 uses following security metadata (see https://swagger.io/docs/specification/authentication/api-keys/ )
```yaml
  securitySchemes:
    ApiKeyAuth:        # arbitrary name for the security scheme
      type: apiKey
      in: header       # can be "header", "query" or "cookie"
      name: X-API-KEY  # name of the header, query parameter or cookie
```

* Panasonic:
  - OK
    - basic 
    - bearer

* Siemens
  - OK
    - basic
    - bearer
    - psk
    - Comment: Patched in for CoAPS and was added later to TD spec
    
* Oracle
  - OK
    - basic
    
#### 3.2.6 Semantic integration -- was part of (8)

* Fujitsu:
  - Out of Time

* Hitachi:
  - Out of Time

* Panasonic:
  - Out of Time
  
* Siemens
  - Fail
  - Issue: Thingweb Directory crashes prevented querying 

#### 3.2.7 Accessibility -- was (10)

* Fujitsu:
  - Out of Time

* Hitachi:
  - Out of Time
  
* Panasonic:
  - Out of Time

* Siemens:
  - Out of Time
  
### 3.3 Testing in Server Role
The following checking points must be completed together with a partner in client role.

#### 3.3.1 Metadata

* Fujitsu:
  - Out of Time
  
* Hitachi:
  - Out of Time

* Panasonic:
  - OK
  - exposed thing descriptions with DUMMY URI in [repository](https://github.com/w3c/wot/tree/master/plugfest/2018-bundang/TDs/Panasonic).
  - exposed thing descriptions of online real things with real URI in [zip file](https://github.com/w3c/wot/blob/master/plugfest/2018-bundang/TDs/Panasonic/panasonic_lab_online_TDs.zip) with password protected (same as WiFi password of W3CWOT).
  - exposed thing descriptions online simulated things with real URI at simulator portal (available to only WoT members who requests access information).
  
* Siemens
  - OK
  - Comment: See https://github.com/w3c/wot/tree/master/plugfest/2018-bundang/TDs/Siemens
  
* Oracle
  - OK
  - Comment: Property interactions were tested with devices from Panasonic, Siemens and Fujitsu.
  
#### 3.3.2 Properties -- was part of (6) and (7)

* Fujitsu: 
  - OK
    - Get bindings: HTTP
    - Set bindings: HTTP
   
* Hitachi:
  - Out of Time
 
* Panasonic:
  - OK
    - Get bindings: HTTP(S)
    - Set bindings: HTTP(S)
    - Observe bindings: HTTP(S)+Longpoll, WebSocket

* Siemens:
  - OK
    - HTTP(S)
    - CoAP(S)
  - Out of Time
    - HTTP(S)+Longpoll
    - MQTT
    - WebSockets
    
 * Oracle:
  - OK
    - HTTP(S)
  

#### 3.3.3 Actions -- was part of (6) and (7)

* Fujitsu:
  - Out of Time
  
* Hitachi:
  - Out of Time
  
* Panasonic:
  - OK
  - invoke bindings: HTTP(S)

* Siemens:
  - OK
  - invoke bindings: HTTP(S), CoAP(S), MQTT
  
 - Oracle:
 - OK
 - Invoke actions on device simulator and on Siemens, Panasonic and Fujitsu devices

#### 3.3.4 Events -- was part of (11)

* Fujitsu:
  - OK (cheched in Prague)
    - Subscribe: HTTP(s)+Longpoll
    - Subscribe: WebSocket
    - Subscribe: HTTP(s)+SSE

* Hitachi:  
  - Out of Time

* Panasonic:  
  - OK
    - Subscribe: HTTP(S)+Longpoll
    - Subscribe: WebSocket

* Siemens
  - OK
    - Subscribe: HTTP(S)+Longpoll, Websockets, MQTT
  - Out of Time
    - Subscribe: HTTP(S)+Webhooks, CoAP(S)    

#### 3.3.5 Security -- was part of (9)

* Fujitsu:
  - Out of Time

* Hitachi:
  - Out of Time

* Panasonic:
  - OK
  - Panasonic's [Simulator Air Conditioner](https://github.com/w3c/wot/blob/master/plugfest/2018-bundang/TDs/Panasonic/simulator/PanasonicSimulatedAirConditioner1.jsonld) was accessed from Oracle's Node-WoT based client, by using bearer token embedded in custom header (X-PWOT-TOKEN). To achieve this, following modification was necessary:
    - <b>Security field of TD has to be set to {"schema": "apikey", "in": "header", "pname": "X-PWOT-TOKEN"}</b>
    - <b>wot-servient.conf.json of Node-WoT has to be set to {"credential": {"\<Thing's id>": {"apikey": "\<Token value>"}}} </b>

* Siemens:
  - Out of Time
  - Comment: Planned to implement for HTTP/WebSocket, CoAP, and MQTT
  
#### 3.3.6 Semantic Integration -- was part of (8)

* Fujitsu:
  - Out of Time

* Hitachi:
  - Out of Time
  
* Panasonic:
  - Out of Time
  
* Siemens
  - OK
  - Comment: Festo Plant also annotated with Feature of Interest iot.schema.org vocabulary
  
### 3.4 Other issues

#### 3.4.1 Running Actions and Event Instances -- was Other Issues (2)

* Fujitsu:
  - Out of Time

* Hitachi:
  - Out of Time
  
* Panasonic:
  - Out of Time
  
* Siemens:
  - Out of TIme
  - Issue: node-wot implementation not finished in time
  
#### 3.4.2 Discovery using Feature of Interest -- was Other Issues (4)

* Fujitsu:
  - Out of Time

* Hitachi:
  - Out of Time
  
* Panasonic:
  - Out of Time
  
* Siemens:
  - Comment: Festo Live is annotated
  - Issue: No queries because of Thingweb Directory issues

#### 3.4.3 New Security Patterns -- was Other Issues (7)

* Fujitsu:
  - Out of Time

* Hitachi:
  - Out of Time
  
* Panasonic:
  - Out of Time

* Siemens:
  - OK
  - Comment: Added `psk` scheme for CoAPS

#### 3.4.4 Miscellaneous -- was Other Issues (9)

* Fujitsu:
  - Out of Time

* Hitachi:
  - Out of Time
  
* Panasonic:
  - Out of Time
  
* Siemens:
  - Out of Time
  
* Oracle:
  - A new simulator was created for the KETI environment sensor based on KETI's TD
  - Simulated devices were hooked up to the Asset Monitoring applciation as demonstrated on the open day. 

## 4 Use Case

* Siemens:
  - Comment: Siemens focused on individual feature testing


