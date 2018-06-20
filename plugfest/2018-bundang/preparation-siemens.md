# PlugFest Preparation for Bundang 2018

This document describes the Bundang PlugFest held on June 30 and July 1.

A summary of the previous Prague PlugFest can be found [here](https://github.com/w3c/wot/blob/master/plugfest/2018-prague/result.md).

Features marked with <i>italics</i> are work-in-progress.

## 1 PlugFest Infrastructure

This section lists the infrastructure available for the PlugFest, which can be used for individual testing (see [Section 3.1](#31-testing-individually))

### 1.1 Public Thing Directories

* Eclipse Thingweb Directory at http://plugfest.thingweb.io:8081/

### 1.2 Public Proxies

### 1.3 Public Tools -- was (o8) Test Framework

* Siemens TD Playground at http://plugfest.thingweb.io/playground/
* Eclipse Thingweb node-wot available at https://github.com/eclipse/thingweb.node-wot

## 2 Participants and Servients

<table>
  <tr>
    <th>Participants</th>
    <th>Appliation</th>
    <th>=protocol=</th>
    <th>Remote proxy</th>
    <th>=protocol=</th>
    <th>Local proxy</th>
    <th>=protocol=</th>
    <th>Device</th>
  </tr>
  <tr>
    <th rowspan="6">Siemens</th>
    <td rowspan="6">node-wot</td>
    <td rowspan="6">HTTP(S)+Longpoll, <i>HTTP(S)+Webhooks</i>, CoAP(<i>S</i>), <i>WebSockets</i></td>
    <td rowspan="6">(N/A)</td>
    <td rowspan="6">HTTP(S)+Longpoll, CoAP(<i>S</i>), <i>WebSockets</i>, Modbus, BACnet, Oracle IoT CS, <i>Fujitsu</i></td>
    <td rowspan="6">node-wot</td>
    <td>HTTPS+Webhooks</td>
    <td>Festo Plant (Remote via Oracle IoT CS)</td>
  </tr>
  <tr>
    <td>HTTP(S)+Longpoll, CoAP(<i>S</i>), <i>WebSockets</i></td>
    <td>Raspberry Servient</td>
  </tr>
  <tr>
    <td>HTTP</td>
    <td>Nabaztag</td>
  </tr>
  <tr>
    <td>CoAP</td>
    <td>Witty Cloud</td>
  </tr>
  <tr>
    <td>MQTT</td>
    <td>Witty Cloud</td>
  </tr>
  <tr>
    <td>HTTP(S)+Longpoll, CoAP(<i>S</i>), <i>WebSockets</i></td>
    <td>Event Source (simulated)</td>
  </tr>
</table>

## 3 Checking points for the next plugfest

### 3.1 Testing Individually
The following checking points can be completed by the participant alone by using the PlugFest infrastructure (TD Playground, Thing Directory, Proxies).

#### 3.1.1 Validate Simplified TDs -- was Other Issues (1)

* Siemens will validate their updated TDs

#### 3.1.2 Register with Thing Directory -- was (5)

* Siemens will register all Things with the Directory

#### 3.1.3 Connect with Remote/Local Proxy -- was (1)

* Siemens will register the Fest Plant with the Oracle remote proxy
* Siemens will register Things with the Fujitsu local proxy

#### 3.1.4 Connect with node-wot -- was (3)

* Siemens implements several Things with node-wot (expose via node-wot)
* Siemens has applications using node-wot (consume via node-wot)

#### 3.1.5 Scripting API -- was (4)

* Siemens will write scripts against the WoT Scripting API and share them with other participants
* Siemens will collect scripts by other participants and test them againt their WoT Scripting API implementation (node-wot)

### 3.2 Testing in Client Role
The following checking points must be completed together with a partner in server role.

#### 3.2.1 Metadata Handling

* Siemens will use node-wot as generic client that can consume any Thing and logs metadata

#### 3.2.2 Property Handling -- was part of (2)

* Siemens implements the following get bindings
   * HTTP(S)
   * CoAP(<i>S</i>)
* Siemens implements the following set bindings
   * HTTP(S)
   * CoAP(<i>S</i>)
* Siemens implements the following observe bindings
   * HTTP(S)+Longpoll
   * <i>HTTP(S)+Webhooks</i>
   * <i>CoAP(S)+Observe</i>
   * <i>Websockets</i>

#### 3.2.3 Action Handling -- was part of (2)

* Siemens implements the following invoke bindings
   * HTTP(S)
   * CoAP(<i>S</i>)

#### 3.2.4 Event Handling -- was part of (11)

* Siemens implements the following subscribe bindings
   * HTTP(S)+Longpoll
   * <i>HTTP(S)+Webhooks</i>
   * <i>Websockets</i>

#### 3.2.5 Security -- was part of (9)

* Siemens can consume the following Security Schemes:
   * `basic`
   * `bearer`

#### 3.2.6 Semantic integration -- was part of (8)

* Siemens will use queries for the Thing Directory to find specific Things of the test partner.

#### 3.2.7 Accessibility -- was (10)

N/A (Siemens does not implement Accessibility front-ends for Things)

### 3.3 Testing in Server Role
The following checking points must be completed together with a partner in client role.

#### 3.3.1 Metadata

* Siemens will expose Things as listed in the table

#### 3.3.2 Properties -- was part of (6) and (7)

#### 3.3.3 Actions -- was part of (6) and (7)


#### 3.3.4 Events -- was part of (11)

* Siemens implements the following next bindings
   * HTTP(S)+Longpoll
   * <i>HTTP(S)+Webhooks</i>
   * <i>Websockets</i>

#### 3.3.5 Security -- was part of (9)

* Siemens will offer the following Security Schemes:
   * `basic`
   * `bearer`

#### 3.3.6 Semantic Integration -- was part of (8)

* Siemens will annotate their Things with iot.schema.org vocabulary

### 3.4 Other issues

#### 3.4.1 Running Actions and Event Instances -- was Other Issues (2)

* Siemens will mock extended Actions by responding with Action Desriptions as Action output.

#### 3.4.2 Discovery using Feature of Interest -- was Other Issues (4)

* Siemens will annotate their TDs with Feature of Interest annotations from iot.schema.org
* Siemens will only use queries on Thing Directory for discovery

#### 3.4.3 New Security Patterns -- was Other Issues (7)

N/A

#### 3.4.4 Miscellaneous -- was Other Issues (9)

N/A

## 4 Use cases -- was Other Issues (5) and (6)

N/A (Siemens wants to focus on individual feature testing)

## 5 Requirements for PlugFest Environment

| Participant | Number of Participants | Number of Power outlets | Network | Remarks |
|-------------|------------------------|-------------------------|---------|---------|
| Siemens     | 2                      | 2                       | Wi-Fi (b/g/n), Ports: 80, 443, 8080, 8081, 8082 | Will provide wireless router with W3CWoT network |

## 6 Implementation Guidelines

N/A
