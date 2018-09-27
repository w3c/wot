# PlugFest Preparation for Online September 2018 - Panasonic

This document describes the Online PlugFest on Sept 25 to 28.

**FIRST DRAFT: Work in Progress**

Features marked with <i>italics</i> are work-in-progress, and hence not confirmed to be available during the PlugFest.

## 1 PlugFest Infrastructure
This section lists the infrastructure available for the PlugFest, which can be used for individual testing (see [Section 3.1](#31-testing-individually))


### 1.1 Public Thing Directories

N/A

### 1.2 Public Proxies

N/A

### 1.3 Public Tools

N/A

## 2 Participants and Servients

<table>
  <tr>
    <th>Participant</th>
    <th>Appliations</th>
    <th>=protocol=</th>
    <th>Remote Proxy</th>
    <th>=protocol=</th>
    <th>Local Proxy</th>
    <th>=protocol=</th>
    <th>Things</th>
  </tr>
  <!-- adapt rowspan as needed to have each application and each Thing in their own cells -->
  <tr>
    <th rowspan="8">Panasonic</th>
    <td rowspan="3">Online Simulator</td>
    <td rowspan="3">HTTPS</td>
    <td rowspan="3">AWS</td>
    <td rowspan="3">N/A</td>
    <td rowspan="3">N/A</td>
    <td rowspan="3">N/A</td>
    <td>Air Conditioner</td>
  </tr>
  <tr>
    <td>Robotics Clearner</td>
  </tr>
  <tr>
    <td>Lighting</td>
  </tr>
  <tr>
    <td rowspan="4">Smart Home</td>
    <td rowspan="4">HTTPS</td>
    <td rowspan="4">AWS</td>
    <td rowspan="4">WebSocket tunneling (Proprietery)</td>
    <td rowspan="4">Gateway Server (Proprietery)</td>
    <td>ECHONET</td>
    <td>Air Conditioner</td>
  </tr>
  <tr>
    <td>REST API</td>
    <td>Lighting (Philips Hue)</td>
  </tr>
  <tr>
    <td>IR</td>
    <td>Robotics Clearner</td>
  </tr>
  <tr>
    <td>RS-232C</td>
    <td>Electric bulletin board</td>
  </tr>
  <tr>
    <td rowspan="4"><i>Local Simulator under consideration</i></td>
    <td rowspan="4">NA</td>
    <td rowspan="4">NA</td>
    <td rowspan="4">NA</td>
    <td rowspan="4">NA</td>
    <td>HTTP</td>
    <td><i>TBD</i></td>
  </tr>
</table>

## 3 Checking points for the next plugfest

### 3.1 Testing Individually
The following checking points can be completed by the participant alone by using the PlugFest infrastructure (TD Playground, Thing Directory, Proxies).

#### 3.1.1 Validate TDs

* Panasonic will validate all TDs using [Thingweb Playground](https://github.com/thingweb/thingweb-playground).

#### 3.1.2 Register with Thing Directory

* Panasonic will register TDs of Smart Home Things manually with Thing Directories provided by other companies.
* Panasonic will also capture TDs of Smart Home Things and [archive them](https://github.org/w3c/wot/plugfest/2018-sept-online/TDs/Panasonic).
* Panasonic will provide TDs of Online Simulator through its portal. See [here](https://github.com/w3c/wot/blob/master/testing/online/panasonic.md) for further information.

#### 3.1.3 Connect with Remote/Local Proxy

* Panasonic will proxy Smart Home Things through Proprietery WebSocket connection as listed above.

#### 3.1.4 Connect with node-wot

* N/A (Currently Panasonic does not use node-wot to implement Things or applications)

#### 3.1.5 Scripting API

* N/A (Currently Panasonic does not use scripting API in server implementation)

### 3.2 Testing in Client Role
The following checking points must be completed together with a partner in server role.

#### 3.2.1 Metadata Handling

* Panasonic will use NodeRED with the node which can consume any Thing metadata with HTTP bindings.
* Panasonic will use Browser based Generic WoT Client which can consume any Thing metadata with HTTP bindings.

#### 3.2.2 Read Property

##### HTTP

* YES - NodeRED, Generic WoT Client

##### CoAP

* NA

##### MQTT

* NA

##### Other

* NA

#### 3.2.3 Write Property

##### HTTP

* YES - NodeRED, Generic WoT Client

##### CoAP

* NA

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

* NA

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

* NA

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

* Panasonic will test semantic search via Thing Directory provided by other company.

#### 3.2.9 Accessibility
Accessibility turns a machine-understandable WoT Interface described by a TD into an accessible user interface of certain kind.

* NA

### 3.3 Testing in Server Role
The following checking points must be completed together with a partner in client role.

#### 3.3.1 Metadata

* Panasonic will provide [archived TDs](https://github.org/w3c/wot/plugfest/2018-sept-online/TDs/Panasonic).

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

* NAL

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

The following in combination with HTTPS (HTTP + TLS) are supported by both Online Simulator and Smart Home devices in labo.
* bearer

Panasonic also hosts Authentication server online during plugfest. The authentication server accepts user_id and password which will be given to plugfest participants privately. The server then returns bearer token which can be used to access Panasonic online things above.

See [Implementation Guideline](#6-implementation-guidelines) for details.


#### 3.3.8 Semantic integration

* Panasonic will annotate TDs as appropriate with iotschema.org semantics

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
| Panasonic | 2                | ?                       | Wi-Fi?, Ethernet?, Ports: ? |         |

## 6 Implementation Guidelines

### 6.1 Authentication server

Panasonic authentication server has following API:

- URL: https://w3c.p-wot.com:8443/auth
- METHOD: POST
- Requeest body: application/json

  ```
  {
    "id": "xxxx",
    "password": "yyyy"
  }
  ```

  Note: id and password are distributed to plugest participants privately.

- Response body: application/json

  ```
  {
    "token": "eyJ...CJ9.eyJ3b3SIsImlhdCI6MTUyNDIwMjI0N...TG4ifQ.9n9...VT-k"
  }
  ```

The value of the token is used to access Panasonic WoT interface in following request header:

```
  Authorization: Bearer <token>
```
