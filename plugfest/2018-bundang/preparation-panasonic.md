# PlugFest Preparation for Bundang 2018

This document describes the Bundang PlugFest held on June 30 and July 1.

A summary of the previous Prague PlugFest can be found [here](https://github.com/w3c/wot/blob/master/plugfest/2018-prague/result.md).

Features marked with <i>italics</i> are work-in-progress.

## 1 PlugFest Infrastructure
This section lists the infrastructure available for the PlugFest, which can be used for individual testing (see [Section 3.1](#31-testing-individually))

### 1.1 Public Thing Directories

* N/A

### 1.2 Public Proxies

* N/A

### 1.3 Public Tools -- was (o8) Test Framework

* Online WoT Server Simulator available (contact to kawaguchi.toru [at] jp.panasonic.com to get access information).

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
    <th rowspan="4">Panasonic</th>
    <td rowspan="2">NodeRED</td>
    <td rowspan="4">HTTP(S)</td>
    <td rowspan="4">(N/A)</td>
    <td rowspan="4">(N/A)</td>
    <td rowspan="4">(N/A)</td>
    <td rowspan="2">HTTPS + bearer token, WebSocket</td>
    <td>(Remote devices in Osaka Lab) Air conditioner, Lighting, Robotics Cleaner</td>
  </tr>
  <tr>
    <td>(Online Simulator) Air conditioner, Lighting, Robotics Cleaner</td>
  </tr>
  <tr>
    <td rowspan="2">Scripting App.</td>
    <td>HTTP, WebSocket</td>
    <td>(Local Simulator) Air conditioner, Lighting, Robotics Cleaner</td>
  </tr>
  <tr>
    <td>HTTPS + bearer token, WebSocket</td>
    <td>(Located locally, servient on the cloud) Google Home Mini</td>
  </tr>
</table>


## 3 Checking points for the next plugfest

### 3.1 Testing Individually
The following checking points can be completed by the participant alone by using the PlugFest infrastructure (TD Playground, Thing Directory, Proxies).

#### 3.1.1 Validate Simplified TDs -- was Other Issues (1)

* Panasonic will validate their updated TDs

#### 3.1.2 Register with Thing Directory -- was (5)

* Panasonic will register all Things with the Directory

#### 3.1.3 Connect with Remote/Local Proxy -- was (1)

* Panasonic will register local Things with the Fujitsu local proxy.
* Registeration to other proxies TBD

#### 3.1.4 Connect with node-wot -- was (3)

* N/A (Currently Panasonic does not use node-wot to implement Things or applications)

#### 3.1.5 Scripting API -- was (4)
* Panasonic wrote Generic HTML Client script against the Wot Scripting API implemented as JavaScript library.

### 3.2 Testing in Client Role
The following checking points must be completed together with a partner in server role.

#### 3.2.1 Metadata Handling

* Panasonic will use WoT Scripting API implemented as JavaScirpt library, which can consume any Thing metadata with HTTP bindings.
* Panasonic will use NodeRED with the node which can consume any Thing metadata with HTTP bindings.

#### 3.2.2 Property Handling -- was part of (2)

* Panasonic implements the following get bindings
   * HTTP(S)
* Panasonic implements the following set bindings
   * HTTP(S)
* Panasonic implements the following observe bindings
   * HTTP(S)+Longpoll
   * WebSocket

#### 3.2.3 Action Handling -- was part of (2)

* Panasonic implements the following invoke bindings
   * HTTP(S)

#### 3.2.4 Event Handling -- was part of (11)

* Panasonic implements the following subscribe bindings
   * HTTP(S)+Longpoll
   * WebSocket

#### 3.2.5 Security -- was part of (9)

* Panasonic can consume the following Security Schemes:
   * basic
   * digest
   * bearer

#### 3.2.6 Semantic integration -- was part of (8)

* Panasonic will use manual queries for the Thing Directory to find specific Things of the test partner (no integration to client this time).

#### 3.2.7 Accessibility -- was (10)

* N/A (Panasonic does not implement Accessibility front-ends for Things)

### 3.3 Testing in Server Role
The following checking points must be completed together with a partner in client role.

#### 3.3.1 Metadata

* Panasonic will expose Things as listed in the table

#### 3.3.2 Properties -- was part of (6) and (7)

Panasonic implements the following get bindings
  * HTTP(S)
* Panasonic implements the following set bindings
  * HTTP(S)
* Panasonic implements the following observe bindings
  * HTTP(S)+Longpoll
  * WebSocket

#### 3.3.3 Actions -- was part of (6) and (7)

* Panasonic implements the following invoke bindings
   * HTTP(S)

#### 3.3.4 Events -- was part of (11)

* Panasonic implements the following subscribe bindings
   * HTTP(S)+Longpoll
   * WebSocket

#### 3.3.5 Security -- was part of (9)

* Panasonic will offer the following Security Schemes:
   * bearer

#### 3.3.6 Semantic Integration -- was part of (8)

* Panasonic will annotate their Things with iot.schema.org vocabulary

### 3.4 Other issues

#### 3.4.1 Running Actions and Event Instances -- was Other Issues (2)

* N/A (Future study)

#### 3.4.2 Discovery using Feature of Interest -- was Other Issues (4)

* N/A (Future study)

#### 3.4.3 New Security Patterns -- was Other Issues (7)

* N/A (What does "New Security Patterns" particularly mean?)

#### 3.4.4 Miscellaneous -- was Other Issues (9)

* N/A

## 4 Use cases -- was Other Issues (5) and (6)

* Panasonic currently has smart home application with simple "I'm Home" and "Bye" scenario triggered by voice command through Google Home.
* Panasonic want to find out some meaningful scenarios, such as:
  - Multiple ecosystem orchestration in smart home area, such as collaboration of Echonet device and OCF device.
  - Smart home and other area orchestration, such as automotive, building, industry or smart city infrastructure.

## 5 Requirements for PlugFest Environment

| Participant | Number of Participants | Number of Power outlets | Network | Remarks |
|-------------|------------------------|-------------------------|---------|---------|
| Panasonic   | 3                      | 2                       | Wi-Fi(b/g/n), Ports: 22, 80, 443, 1880, 3000, 3001, 3002, 3003, 3004, 8001, 8003 | |

## 6 Implementation Guidelines

## request to proxy implementors
Panasonic would like to ask proxies to support multiple bindings per each property and event. We use multiple bindings to distinguish:
- "read/write" and "observe" of particular property
- multiple method of notification (property observe or event subscribe) such as HTTP long polling and simple WebSocket.
