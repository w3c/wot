# WiP: Siemens AG PlugFest Result for Bundang 2018

This document summerizes the results of Siemens AG at the Bundang PlugFest held on June 30 and July 1.

## 3 Checking points for Bundang 2018 PlugFest

### 3.1 Testing Individually
#### 3.1.1 Validate Simplified TDs

* OK
   * Comment: TDs available at https://github.com/w3c/wot/tree/master/plugfest/2018-bundang/TDs/Siemens

#### 3.1.2 Register with Thing Directory

* NO
   * Issue: Current sandbox does not fulfill high RAM requirements of GraphDB, so that Directory frequently crashes
   * Comment: Will move to better sandbox, possibly from Eclipse Thingweb

#### 3.1.3 Connect with Remote/Local Proxy

* OK
   * Comment: Registered with Oracle remote proxy (festolive) and Fujitsu local proxy

#### 3.1.4 Connect with node-wot

* OK
   * Comment: Implemented both Things and applications with node-wot

#### 3.1.5 Scripting API

* OK
   * Comment: Scripts stored under TODO and node-wot examples/scripts/ folder

### 3.2 Siemens AG Testing in Client Role
#### 3.2.1 Metadata Handling

* OK
   * Comment: node-wot parsed TDs from Fujitsu, Intel, KETI, Panasonic, Oracle, and SmartThings

#### 3.2.2 Property Handling

* Get bindings
   * HTTP(S)
      * OK
   * CoAP(S)
      * OK
         * Comment: Finished testing with SmartThings at IETF 102 Hackathon
* Set bindings
   * HTTP(S)
      * OK
   * CoAP(S)
      * OK
         * Comment: Finished testing with SmartThings at IETF 102 Hackathon
* Observe bindings
   * NA
      * Comment: Planned to implement for HTTP(S)+LongPoll, CoAP(S) Observe, WebSockets, and MQTT

#### 3.2.3 Action Handling

* HTTP(S)
   * OK
* CoAP(S)
   * OK
      * Comment: Finished testing with SmartThings at IETF 102 Hackathon
* MQTT
   * OK

#### 3.2.4 Event Handling

* HTTP(S)+Longpoll
   * OK
* <i>HTTP(S)+Webhooks</i>
   * NA
      * Comment: Planned to implement
* <i>Websockets</i>
   * NA
      * Comment: Planned to implement
* MQTT
   * OK

#### 3.2.5 Security

* `basic`
   * OK
* `bearer`
   * OK
* `psk`
   * OK
      * Comment: Patched in for CoAPS and was added later to TD spec

#### 3.2.6 Semantic integration

* NO
   * Issue: Thingweb Directory crashes prevented querying 

#### 3.2.7 Accessibility

* NA

### 3.3 Testing in Server Role
#### 3.3.1 Metadata

* OK
   * Comment: See https://github.com/w3c/wot/tree/master/plugfest/2018-bundang/TDs/Siemens

#### 3.3.2 Properties

* HTTP(S)
   * OK
* HTTP(S)+Longpoll
   * NA
      * Comment: Planned to implement for observe
* <i>HTTP(S)+Webhooks</i>
   * NA
* CoAP(S)
   * OK
* MQTT
   * NA
      * Comment: Planned to implement for observe
* Websockets
   * NA
      * Comment: Planned to implement for observe

#### 3.3.3 Actions

* HTTP(S)
   * OK
* CoAP(S)
   * OK
* MQTT
   * OK

#### 3.3.4 Events

* HTTP(S)+Longpoll
   * OK
* <i>HTTP(S)+Webhooks</i>
   * NA
      * Comment: Planned to implement
* CoAP(S)
   * NA
      * Comment: Planned to implement using Observe
* Websockets
   * OK
* MQTT
   * OK

#### 3.3.5 Security

* NA
   * Comment: Planned to implement for HTTP/WebSocket, CoAP, and MQTT

#### 3.3.6 Semantic Integration

* OK
   * Comment: Festo Plant also annotated with Feature of Interest iot.schema.org vocabulary

### 3.4 Other issues

#### 3.4.1 Running Actions and Event Instances -- has to be split into client/server role

* Issue: node-wot implementation not finished in time

#### 3.4.2 Discovery using Feature of Interest -- has to be split into client/server role

* Comment: Festo Live is annotated
* Issue: No queries because of Thingweb Directory issues

#### 3.4.3 New Security Patterns

* Comment: Added `psk` scheme for CoAPS

#### 3.4.4 Miscellaneous

N/A

## 4 Use cases

* Comment: Siemens focused on individual feature testing
