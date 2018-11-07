# Hitachi PlugFest Result for Lyon 2018

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

* NA

#### 3.1.2 Register with Thing Directory

* NA 

#### 3.1.3 Connect with Remote/Local Proxy

##### IMPLEMENTATION at URI

* OK
   * Comment: Connected with Fujitsu's Remote Proxy

#### 3.1.4 Connect with node-wot

* OK
   * Comment: Connected with Siemens's IoT Demo (Slider)

#### 3.1.5 Scripting API

* NA

### 3.2 Testing in Client Role
#### 3.2.1 Metadata Handling

##### Oracle/Siemens/Fujitsu/Intel/Panasonic/SmartThing/TUM

* OK

#### 3.2.2 Read Property

##### HTTP

###### Oracle/Siemens/Fujitsu/Intel/Panasonic/SmartThing/TUM

* OK
   * Issue: 
   * Comment: 

##### CoAP

* NA

##### MQTT

* NA

#### 3.2.3 Write Property

##### HTTP

###### Oracle/Siemens/Fujitsu/Intel/Panasonic/SmartThing/TUM

* OK
   * Issue:
   * Comment: 

##### CoAP

* NA

##### MQTT

* NA

#### 3.2.4 Observe Property

##### HTTP+Longpoll

###### Panasonic
* OK
   * Comment: 

##### HTTP+Webhooks

* NA

##### CoAP

* NA
   * Comment: 

##### WebSockets

###### Siemens/Panasonic
* OK
   * Comment: 

##### MQTT

* NA
   * Comment: 

##### Other

#### 3.2.5 Invoke Action

##### HTTP

###### Oracle/Siemens/Fujitsu/Intel/Panasonic/SmartThing/TUM

* OK
   * Comment: 

##### CoAP

* NA
 
##### MQTT

* NA 

##### Other

* NA

#### 3.2.6 Subscribe Event

##### HTTP+Longpoll

###### Oracle/Siemens/Fujitsu/Intel/Panasonic/SmartThing/TUM

* OK
   * Comment: 

##### HTTP+Webhooks

* NA

##### CoAP

* NA

##### WebSockets

###### Siemens/Panasonic

* OK
   * Issue: 
   * Comment: 

##### MQTT

* NA

#### 3.2.7 Security

##### HTTPS

###### PARTNER
* OK/NO/OT/NA
   * Issue: 
   * Comment: 

#### 3.2.8 Semantic integration

* NA

#### 3.2.9 Accessibility

* NA

### 3.3 Testing in Server Role

* NA

### 3.4 Other issues

* NA

## 4 Use cases

### Remote Monitoring and Multimodal Alerting

![UseCase1](images/Hitachi_usecase1.png)

### Realtime control

![UseCase2](images/Hitachi_usecase2.png)

### (Demo)"Rube Goldberg Machine"

![UseCase3](images/Hitachi_usecase3.png)

### 

## Appendix

### node-red-nodegen for Web of Things

* You can download source file from [GitHub](https://github.com/k-toumura/node-red-nodegen/tree/webofthings).

