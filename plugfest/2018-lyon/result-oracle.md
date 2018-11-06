# ORACLE PlugFest Result for Lyon 2018

This document summerizes the results of the Lyon PlugFest held Oct 20 and 21.

## 3 Checking Points 

Test results can have one of 4 states:

* OK: Test passed
* NO: Test failed
   * Use "Issue: ..." to note down the reason
   * Comment if there is a known fix
* OT: Out-of-time to complete test
* NA: Test not applicable, e.g., because feature is not implemented
   * Comment if feature is planned to be implemented in the future

### 3.1 Testing Individually
#### 3.1.1 Validate Simplified TDs

* OK
   * Issue: A few TDs contain arrays or objects of objects, which require manual work when generating a device model,
   that can be imported into the Oracle IoT Cloud Service.
   * Comment: The td2dm converter will be updated to handle these situations.

#### 3.1.2 Register with Thing Directory

* OT
   * Issue: 
   * Comment: 

#### 3.1.3 Connect with Remote/Local Proxy

##### IMPLEMENTATION at URI

* OK 
   * Comment: The Oracle IoT Asset Monitoring applciatino connected to Fujitsu's remote proxy and controlled the rotary beacon light. 

#### 3.1.4 Connect with node-wot

* OK
   * Comment: The IoT Asset Monitoring used the bridge-servient framework to interact with devices from Siemens (Festo Plant),
   Intel (RGB light, WebSpeak), Panasonic (robot cleaner, air conditioner hue light group).

#### 3.1.5 Scripting API

* NA

### 3.2 Testing in Client Role
#### 3.2.1 Metadata Handling

##### PARTNERS: Siemens, Intel, Panasonic, Fujitsu.
* OK

#### 3.2.2 Read Property

##### HTTP

##### PARTNERS: Siemens, Intel, Panasonic, Fujitsu.
* OK

##### CoAP

* NA

##### MQTT

* NA

##### Other

* NA

#### 3.2.3 Write Property

##### HTTP

###### PARTNER
* OK/NO/OT/NA
   * Issue: 
   * Comment: 

##### CoAP

* NA

##### MQTT

* NA

##### Other

* NA

#### 3.2.4 Observe Property

##### HTTP+Longpoll

* OT

##### HTTP+Webhooks

###### PARTNER
* OT
   * Comment: node-WoT needs to be extended wit Webhooks support. 

##### CoAP

* NA

##### WebSockets

* OT

##### MQTT

* NA

##### Other

* NA

#### 3.2.5 Invoke Action

##### HTTP

##### PARTNERS: Siemens, Intel, Panasonic, Fujitsu.

* OK

##### CoAP

* NA 

##### MQTT

* NA

##### Other

* NA

#### 3.2.6 Subscribe Event

##### HTTP+Longpoll

* OT

##### HTTP+Webhooks

* OT

##### CoAP

* NA

##### WebSockets

* NA

##### MQTT

* NA

##### Other

* NA

#### 3.2.7 Security

##### Basic, Bearer Token

##### PARTNERS: Siemens, Intel, Panasonic, Fujitsu.

* OK 

#### 3.2.8 Semantic integration

* NA

#### 3.2.9 Accessibility

* NA

### 3.3 Testing in Server Role
#### 3.3.1 Metadata

##### PARTNERS: Panasonic, Fujitsu, Hitachi.

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

##### PARTNERS: Siemens, Intel, Panasonic, Fujitsu.
* OK

##### CoAP

* NA

##### MQTT

* NA

##### Other

* NA

#### 3.3.4 Observe Property

##### HTTP+Longpoll

* NA

##### HTTP+Webhooks

* OT
   * Comment: node-WoT needs to be extended to handle Webhooks.

##### CoAP

* NA

##### WebSockets

* NA

##### MQTT

* NA

##### Other

* NA

#### 3.3.5 Invoke Action

##### HTTP

##### PARTNERS: Siemens, Panasonic, Fujitsu, Hitachi.

##### CoAP

*NA

##### MQTT

* NA

##### Other

* NA

#### 3.3.6 Subscribe Event

##### HTTP+Longpoll

* NA

##### HTTP+Webhooks

* OT
   * Comment: Node-WoT needs to add support for Webhooks.

##### CoAP

* NA

##### WebSockets

* NA

##### MQTT

* NA

##### Other

* NA

#### 3.3.7 Security

##### SCHEME: Basic

###### PARTNER
* OK

#### 3.3.8 Semantic integration

* NA

### 3.4 Other issues

#### 3.4.1 Producing Running Actions and Event Instances

* OT

#### 3.4.2 Consuming Running Actions and Event Instances

* OT

#### 3.4.3 New Security Patterns

* NA

#### 3.4.4 Miscellaneous

* NA

## 4 Use cases

### Demo setup:

[images/DemoInfrastructure.png](images/DemoInfrastructure.png)

### Home Scenario

* OK/OT

   * Comments: 
   
   ** We successfully demonstrated the home scenario using devices in Panasonic's Osaka lab. The scenario illustrated
   to turn on/off home devives based on room occupancy. A sensor measures the CO2 level and determines, whether the
   room is empty or occupied based on the level. If the room is empty, the lamps and air conditioner are turned off.
   (A cleaning robot could clean the room, if required). When people come back to the room, the CO2 level rises, 
   and the lights and air conditioner are turned on again.
   
   ** Unfortunately we ran out of time to integrate with Fujitsu's home device (window blind). 
   This is planned for the next plug fest.
   
   An on-screen recording of the demo is available here[https://youtu.be/2o7bWLJJhYM](https://youtu.be/2o7bWLJJhYM)
 
 ### Industrial Scenario

* OK/OT

   * Comments: 
   ** We successfully demonstrated the industrial integration scenario using devices using devices from
   KETI, Siemens, Intel, Fujitsu and Panasonic. In this scenario an environment sensor at KETI in Korea
   indicates a critical condition (high VOC). The Oracle Asset Monitoring application detects this situation
   based on a set of rules and takes the following actions. A tank is drained in a chemical factory 
   (Siemens Festo plant), a warning light is turned on (Fujitsu), RGB lamps (Panasonic, Intel) indicate 
   the tank level (full, normal, empty) and a spoken warning message is issued (Intel).
   When the VOC measurement is back to normal and the tank was fully drained, it is refilled and the fill level
   is again indicated with the color of the RGB lamps.
   
   An on-screen recording of the demo is available here[https://youtu.be/6jZxfmiCrEk](https://youtu.be/6jZxfmiCrEk)

