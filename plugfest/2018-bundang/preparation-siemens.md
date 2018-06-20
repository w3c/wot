# PlugFest Preparation for Bundang 2018

This document describes the Bundang PlugFest held on June 30 and July 1.

A summary of the previous Prague PlugFest can be found [here](https://github.com/w3c/wot/blob/master/plugfest/2018-prague/result.md).

Features marked with <strike>strike</strike> are work-in-progress.

## 1 PlugFest Infrastructure

This section lists the infrastructure available for the PlugFest, which can be used for individual testing (see [Section 3.1](#31-testing-individually))

### 1.1 Public Thing Directories

* Siemens Thingweb Directory at http://plugfest.thingweb.io:8081/

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
    <td rowspan="6">HTTP(S)+Longpoll, <strike>HTTP(S)+Webhooks</strike>, CoAP(<strike>S</strike>), <strike>WebSockets</strike></td>
    <td rowspan="6">(N/A)</td>
    <td rowspan="6">HTTP(S)+Longpoll, CoAP(<strike>S</strike>), <strike>WebSockets</strike>, Modbus, BACnet, Oracle IoT CS, <strike>Fujitsu</strike></td>
    <td rowspan="6">node-wot</td>
    <td>HTTPS+Webhooks</td>
    <td>Festo Plant (Remote via Oracle IoT CS)</td>
  </tr>
  <tr>
    <td>HTTP(S)+Longpoll, CoAP(<strike>S</strike>), <strike>WebSockets</strike></td>
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
    <td>HTTP(S)+Longpoll, CoAP(<strike>S</strike>), <strike>WebSockets</strike></td>
    <td>Event Source (simulated)</td>
  </tr>
</table>

## 3 Checking points for the next plugfest

### 3.1 Testing Individually
The following checking points can be completed by the participant alone by using the PlugFest infrastructure (TD Playground, Thing Directory, Proxies)

#### (o1) Validate Simplified TDs

* Siemens will validate their updated TDs

#### (5) Register with Thing Directory

* Siemens will register all Things with the Directory

#### (1) Connect with Remote/Local Proxy

* Siemens will register the Fest Plant with the Oracle remote proxy
* Siemens will register Things with the Fujitsu local proxy

#### (3) Connect with node-wot

* Siemens implements several Things with node-wot (expose via node-wot)
* Siemens will script mashups of their Things using node-wot (consume via node-wot)

#### (4) Scripting API

* Siemens will write scripts against the WoT Scripting API and share them with other participants
* Siemens will collect scripts by other participants and test them againt their WoT Scripting API implementation (node-wot)

### 3.2 Testing in Client Role
The following checking points must be completed together with a partner in server role.

#### (n) Metadata Handling

* Siemens will use node-wot as generic client that can consume any Thing

#### (2) Application servients -- should be split into 'Property Handling' and 'Action Handling'

* Siemens will use node-wot as generic client that can consume any Thing

#### (11) Event Handling

* Siemens can consume Events based on HTTP(S)+Longpoll, <strike>HTTP(S)+Webhooks</strike>, and <strike>Websockets</strike>

#### (9) Security

* Siemens can consume Things over HTTPS, <strike>CoAPS</strike>, and <strike>Secure WebSockets</strike>
* Siemens can consume the Security Schemes `basic`, <strike>`digest`</strike>, and `bearer`.

#### (8) Semantic integration

* Siemens will use queries for the Thing Directory to find specific Things of the test partner.

#### (10) Accessibility

N/A (Siemens does not implement Accessibility front-ends for Things)

### 3.3 Testing in Server Role
The following checking points must be completed together with a partner in client role.

#### (n) Metadata Handling

* Siemens will expose Things as listed in the table

#### (6) Device Servients / (7) Device simulators -- should be split into 'Property Handling' and 'Action Handling'

* Siemens will expose Things as listed in the table

#### (11) Event Handling

* Siemens can push Events over HTTP(S)+Longpoll, <strike>HTTP(S)+Webhook</strike>, <strike>WebSockets</strike>

#### (8) Semantic Integration

* Siemens will annotate their Things with iot.schema.org vocabulary

#### (9) Security

* Siemens will expose Things over HTTPS, <strike>CoAPS</strike>, and <strike>Secure WebSockets</strike>

* Siemens will offer the Security Schemes `basic`, <strike>`digest`</strike>, and <strike>`bearer`</strike>

### 3.4 Other issues

#### (o2) Extended Actions and Events

* Siemens will mock extended Actions by responding with Action Desriptions as Action output.

#### (o4) Discovery using Feature of Interest annotation

* Siemens will annotate their TDs with Feature of Interest annotations from iot.schema.org
* Siemens will only use queries on Thing Directory for discovery

#### (o5) Application Scenarios, recipes

N/A

#### (o6) Proxy integration with Thing Directory

Siemens only provides an open-source Thing Directory.

#### (o7) New security patterns

N/A

#### (o9) Other

N/A

## 4 Use cases

N/A (Siemens wants to focus on individual feature testing)

## 5 Requirements for PlugFest Setting

| Participant | Number of Participants | Number of Power outlets | Network | Remarks |
|-------------|------------------------|-------------------------|---------|---------|
| Siemens     | 2                      | 2                       | Wi-Fi (b/g/n), Ports: 80, 443, 8080, 8081, 8082 | Will provide wireless router with W3CWoT network |


## 6 Implementation Guidelines

N/A
