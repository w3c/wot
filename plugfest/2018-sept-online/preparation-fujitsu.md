# PlugFest Preparation for Online September 2018 - Fujitsu

This document describes the preparations made by Fujitsu for the Online PlugFest on Sept 25 to 28.

**FIRST DRAFT: Work in Progress**

Features marked with <i>italics</i> are work-in-progress, and hence not confirmed to be available during the PlugFest.

## 1 PlugFest Infrastructure
This section lists the infrastructure available for the PlugFest, which can be used for individual testing (see [Section 3.1](#31-testing-individually))


### 1.1 Public Thing Directories

Cloud Thing Directories
* [TD Directory]() running on Fujitsu's Remote Proxy Servient.
* [Authentication credentials]() - to be distributed via W3C email and/or use OAuth2

Local LAN Thing Directories (simulated local LANs using OpenVPN)
* [TD Directory] running on Fujitsu's Local Proxy Servient.
* No authentication credentials; assumes "local network" is secure.

### 1.2 Public Proxies

[Remote Proxy Servient] running at https://xxx.fujitsu.com:xxxx
    
[Local Proxy Servient] running at https://192.168.x.x:xxxx

### 1.3 Public Tools

NA

## 2 Participants and Servients

<table>
  <tr>
    <th>Participants</th>
    <th>Application</th>
    <th>=protocol=</th>
    <th>Remote proxy</th>
    <th>=protocol=</th>
    <th>Local proxy</th>
    <th>=protocol=</th>
    <th>Device</th>
  </tr>
  <tr>
    <th rowspan="2">Fujitsu</th>
    <td>NodeRED</td>
    <td>HTTP(s)</td>
    <td rowspan="2">Fujitsu Cloud</td>
    <td rowspan="2">HTTP(s)+WS</td>
    <td>Local gateway</td>
    <td>HTTP</td>
    <td>Rotating Light, Sensors(Humidity sensor, Temperature sensor, Dust sensor)</td>
  </tr>
</table>

## 3 Checking points for the next plugfest

### 3.1 Testing Individually
The following checking points can be completed by the participant alone by using the PlugFest infrastructure (TD Playground, Thing Directory, Proxies).

#### 3.1.1 Validate TDs

* Fujitsu will validate all TDs using [Thingweb Playground](https://github.com/thingweb/thingweb-playground).

#### 3.1.2 Register with Thing Directory

* Fujitsu will register all TDs dynamically with all Thing Directories listed above.
* FUjitsu's TD directory will also synchroniza to other directories.

#### 3.1.3 Connect with Remote/Local Proxy

* Fujitsu will proxy all local Things through the remote proxy as noted above

#### 3.1.4 Connect with node-wot

NA

#### 3.1.5 Scripting API

NA

### 3.2 Testing in Client Role
The following checking points must be completed together with a partner in server role.

#### 3.2.1 Metadata Handling

* Fujitsu will use NodeRED with the node which can consume any Thing metadata with HTTP bindings.

#### 3.2.2 Read Property

##### HTTP

* YES - NodeRED, Generic WoT Client

##### CoAP

* YES - NodeRED

##### MQTT

* NA

##### Other

* NA

#### 3.2.3 Write Property

##### HTTP

* YES - NodeRED, Generic WoT Client

##### CoAP

* YES - NodeRED

##### MQTT

* NA

##### Other

* NA

#### 3.2.4 Observe Property

##### HTTP+Longpoll

* YES - NodeRED, Generic WoT Client

##### HTTP+Webhooks

* NA

##### CoAP

* NA

##### MQTT

* NA

##### Other

* Simple WebSocket

#### 3.2.5 Invoke Action

##### HTTP

* YES - NodeRED, Generic WoT Client

##### CoAP

* YES - NodeRED

##### MQTT

* NA

##### Other

* NA

#### 3.2.6 Subscribe Event

##### HTTP+Longpoll

* YES - NodeRED, Generic WoT Client

##### HTTP+Webhooks

* NA

##### CoAP

* YES - NodeRED

##### MQTT

* NA

##### Other

* Simple WebSocket

#### 3.2.7 Security

The following in combination with HTTPS (HTTP + TLS) are supported by NodeRED, Generic WoT Client
* basic
* digest
* bearer
* apikey (in header)

#### 3.2.8 Semantic integration

* Fujitsu will test semantic search via Thing Directory provided by other company.

#### 3.2.9 Accessibility
Accessibility turns a machine-understandable WoT Interface described by a TD into an accessible user interface of certain kind.

* NA

### 3.3 Testing in Server Role
The following checking points must be completed together with a partner in client role.

#### 3.3.1 Metadata

* Fujitsu will provide [archived TDs](https://github.org/w3c/wot/plugfest/2018-sept-online/TDs/FUjitsu).

#### 3.3.2 Read Property

##### HTTP

* YES

##### CoAP

* NA

##### MQTT

* NA

##### Other

* NA

#### 3.3.3 Write Property

##### HTTP

* YES

##### CoAP

* NA

##### MQTT

* NA

##### Other

* NA

#### 3.3.4 Observe Property

##### HTTP+Longpoll

* YES

##### HTTP+Webhooks

* NA

##### CoAP

* NA

##### MQTT

* NA

##### Other

* Simple WebSocket

#### 3.3.5 Invoke Action

##### HTTP

* YES

##### CoAP

* NA

##### MQTT

* NA

##### Other

* NA

#### 3.3.6 Subscribe Event

##### HTTP+Longpoll

* YES

##### HTTP+Webhooks

* NA

##### CoAP

* NA

##### MQTT

* NA

##### Other

* Simple WebSocket

#### 3.3.7 Security

The following in combination with HTTPS (HTTP + TLS) are supported by both Online Simulator and Smart Home
* 


#### 3.3.8 Semantic integration

* Fujitsu will annotate TDs as appropriate with iotschema.org semantics

### 3.4 Other issues

#### 3.4.1 Producing Running Actions and Event Instances

* NA at the moment

#### 3.4.2 Consuming Running Actions and Event Instances

* NA at the moment

#### 3.4.3 New Security Patterns

* NA

#### 3.4.4 Miscellaneous

* NA

## 4 Use cases
This section should cover ideas such as Proxy-Directory integration and concrete application scenarios that need contributions from others or list collaborations.

* NA at the moment

## 5 Requirements for PlugFest Environment

| Participant | Number of People | Number of Power outlets | Network                     | Remarks |
|-------------|------------------|-------------------------|-----------------------------|---------|
| Fujitsu | 2                | ?                       | ?              |         |

## 6 Implementation Guidelines
This section should cover documentation of own implementation including tools in Section 1 or requests to others.

NA at the moment
