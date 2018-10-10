# Oracle PlugFest Result for Online September 2018

This document summerizes the results of the Online September PlugFest held Sep 25-27.

## 3 Checking points for Online September 2018 PlugFest

Test results can have one of 4 states:

* OK: Test passed
* NO: Test failed
   * Use "Issue: ..." to note down the reason
   * Comment if there is a known fix
* OT: Out-of-time to complete test
* NA: Test not applicable, e.g., because feature is not implemented
   * Comment if feature is planned to be implemented in the future

Result of Oracle projects
![images](images/Oracle_PlugfestSummary1810103.png)

## Device Simulators from Oracle

![Oracle_Digital_Twin_Simulators](Oracle_Digital_Twin_Simulators.png) 
  
[Digital Twin Simulators](Oracle_Digital_Twin_Simulators.md)

![Oracle_Digital_Twin_Simulator](Oracle_Digital_Twin_Simulator.png)   
[Digital Twin Simulator](Oracle_Digital_Twin_Simulator.md)

![Oracle_Connected_Car_Simulator](Oracle_Connected_Car_Simulator.png)   
[Connected_Car_Simulator](Oracle_Connected_Car_Simulator.md)

## Monitoring and Control of Devices

![Oracle_Industrial_Scenario](images/Oracle_Industrial_Scenario.png)   

![Oracle_AssetMon_1](images/Oracle_AssetMon_1.png)
	
![Oracle_HVAC_Intel](images/Oracle_HVAC_Intel.png)

![Oracle](images/Oracle_HVAC_Festo.png)		

![Oracle_AssetMon_2](images/Oracle_AssetMon_2.png)

![Oracle_Interworking](images/Oracle_Interworking.png)

### 3.1 Testing Individually

#### 3.1.1 Validate TDs

##### Panasonic tried to validate all TDs using [Thingweb Playground](https://github.com/thingweb/thingweb-playground)

* NO
   * Issue: JSON Schema validation error occurred at @context of Panasonic TDs. It was caused by old URLs in the TDs ("https://w3c.github.io/wot/w3c-wot-td-context.jsonld", "https://w3c.github.io/wot/w3c-wot-common-context.jsonld"). The error message was following: <br>`X JSON Schema validation... KO:`<br>`> data['@context'][0] should be equal to one of the allowed values, data['@context'][1] should be string, data['@context'][1] should be equal to one of the allowed values, data['@context'] should contain a valid item, data['@context'] should be string, data['@context'] should be equal to one of the allowed values, data['@context'] should match exactly one schema in oneOf`
   * Comment: Panasonic will fix this issue by next PlugFest.

#### 3.1.2 Register with Thing Directory

##### Panasonic tried to register TDs of Local Simulator manually with Thing Directories provided by Fujitsu.

* NO
   * Issue: TDs were registered successfully, but no TD was provided from Thing Directory due to a lack of directory setting.
   * Comment: All necessary settings are expected to be clarified by next PlugFest.

#### 3.1.3 Connect with Remote/Local Proxy

##### Panasonic proxied Smart Home Things through Proprietery WebSocket connection.

* OK

#### 3.1.4 Connect with node-wot

* NA

#### 3.1.5 Scripting API

* NA

### 3.2 Testing in Client Role

#### 3.2.1 Metadata Handling

##### Panasonic used NodeRED and Browser based Generic WoT Client which could consume any Thing metadata with HTTP bindings.

* OK

#### 3.2.2 Read Property

##### HTTP

###### Client: NodeRED, Generic WoT Client

* OK

##### CoAP

* NA

##### MQTT

* NA

##### Other

* NA

#### 3.2.3 Write Property

##### HTTP

###### Client: NodeRED, Generic WoT Client

* OK

##### CoAP

* NA

##### MQTT

* NA

##### Other

* NA

#### 3.2.4 Observe Property

##### HTTP+Longpoll

###### Client: Generic WoT Client

* OK

##### HTTP+Webhooks

* NA

##### CoAP

* NA

##### MQTT

* NA

##### Other

##### Simple WebSocket

###### Client: Generic WoT Client

* OK

#### 3.2.5 Invoke Action

##### HTTP

###### Client: NodeRED, Generic WoT Client

* OK

##### CoAP

* NA

##### MQTT

###### Client: NodeRED

* OK

##### Other

* NA

#### 3.2.6 Subscribe Event

##### HTTP+Longpoll

###### Client: Generic WoT Client

* OK

##### HTTP+Webhooks

* NA

##### CoAP

* NA

##### MQTT

###### Client: NodeRED

* OK

##### Other

##### Simple WebSocket

###### Client: Generic WoT Client

* OK

#### 3.2.7 Security

##### Basic authentication

###### IoT Cloud Service (Oracle)

###### Client: Generic WoT Client

* OK

##### Bearer token

###### Remote proxy (Fujitsu) proxied Home Devices (Panasonic)

###### Client: Generic WoT Client (on Chrome Browser)

* NO
   * Issue: The browser **could** access Remote proxy (Fujitsu) **only after** bypassing CORS checking at the browser.
   * Comment: Example of bypassing CORS (at Chrome Browser on Windows):<br> `> "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --disable-web-security --user-data-dir="C://Chrome dev session"`

##### OAuth2

###### MyCarThing (Eurecom)

###### Client: Generic WoT Client (on Chrome Browser)

* NO
   * Issue: The browser **could not** access MyCarThing (Eurecom) **even after** bypassing CORS checking at the browser. It was caused by "https + self-signed certificate".
   * Comment: The browser (XMLHttpRequest) could not avoid the self-signed certificate error.

#### 3.2.8 Semantic integration

* OT

#### 3.2.9 Accessibility

* NA

### 3.3 Testing in Server Role

#### 3.3.1 Metadata

##### Panasonic provided [TDs](https://github.org/w3c/wot/plugfest/2018-sept-online/TDs/Panasonic).

* OK

#### 3.3.2 Read Property

##### HTTP

* OK

##### CoAP

* NA

##### MQTT

* NA

##### Other

* NA

#### 3.3.3 Write Property

##### HTTP

* OK

##### CoAP

* NA

##### MQTT

* NA

##### Other

* NA

#### 3.3.4 Observe Property

##### HTTP+Longpoll

* OK

##### HTTP+Webhooks

* NA

##### CoAP

* NA

##### MQTT

* NA

##### Other

###### Simple WebSocket

* OK

#### 3.3.5 Invoke Action

##### HTTP

* OK

##### CoAP

* NA

##### MQTT

* NA

##### Other

* NA

#### 3.3.6 Subscribe Event

##### HTTP+Longpoll

* OK

##### HTTP+Webhooks

* NA

##### CoAP

* NA

##### MQTT

* NA

##### Other

###### Simple WebSocket

* OK

#### 3.3.7 Security

##### Bearer

* OK

#### 3.3.8 Semantic integration

* OT

### 3.4 Other issues

#### 3.4.1 Producing Running Actions and Event Instances

* NA

#### 3.4.2 Consuming Running Actions and Event Instances

* NA

#### 3.4.3 New Security Patterns

* NA

#### 3.4.4 Miscellaneous

* NA

## 4 Use cases

* NA
