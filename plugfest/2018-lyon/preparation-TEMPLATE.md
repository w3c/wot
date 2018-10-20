# PlugFest Preparation for Lyon 2018

This document describes the Lyon PlugFest on Oct 20 and 21.

Features marked with <i>italics</i> are work-in-progress, and hence not confirmed to be available during the PlugFest.

## 1 PlugFest Infrastructure
This section lists the infrastructure available for the PlugFest, which can be used for individual testing (see [Section 3.1](#31-testing-individually))


### 1.1 Public Thing Directories

* IMPLEMENTATION-NAME at URI

### 1.2 Public Proxies

* IMPLEMENTATION-NAME at URI

### 1.3 Public Tools

* IMPLEMENTATION-NAME at URI

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
    <th rowspan="2"></th>
    <td rowspan="2"></td>
    <td rowspan="2"></td>
    <td rowspan="2"></td>
    <td rowspan="2"></td>
    <td rowspan="2"></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td></td>
    <td></td>
  </tr>
</table>

## 3 Checking points for the next plugfest

### 3.1 Testing Individually
The following checking points can be completed by the participant alone by using the PlugFest infrastructure (TD Playground, Thing Directory, Proxies).

#### 3.1.1 Validate TDs

* PARTICIPANT will ... -OR- NA

#### 3.1.2 Register with Thing Directory

* PARTICIPANT will ... -OR- NA

#### 3.1.3 Connect with Remote/Local Proxy

* PARTICIPANT will ... -OR- NA

#### 3.1.4 Connect with node-wot

* PARTICIPANT will ... -OR- NA

#### 3.1.5 Scripting API

* PARTICIPANT will ... -OR- NA

### 3.2 Testing in Client Role
The following checking points must be completed together with a partner in server role.

#### 3.2.1 Metadata Handling

* YES (if client has automatic TD parser, NA otherwise)

#### 3.2.2 Read Property

##### HTTP

* YES / NA

##### CoAP

* YES / NA

##### MQTT

* YES / NA

##### Other

* PROTOCOL

#### 3.2.3 Write Property

##### HTTP

* YES / NA

##### CoAP

* YES / NA

##### MQTT

* YES / NA

##### Other

* PROTOCOL

#### 3.2.4 Observe Property

##### HTTP+Longpoll

* YES / NA

##### HTTP+Webhooks

* YES / NA

##### CoAP

* YES / NA

##### MQTT

* YES / NA

##### Other

* PROTOCOL

#### 3.2.5 Invoke Action

##### HTTP

* YES / NA

##### CoAP

* YES / NA

##### MQTT

* YES / NA

##### Other

* PROTOCOL

#### 3.2.6 Subscribe Event

##### HTTP+Longpoll

* YES / NA

##### HTTP+Webhooks

* YES / NA

##### CoAP

* YES / NA

##### MQTT

* YES / NA

##### Other

* PROTOCOL

#### 3.2.7 Security

* SCHEME

#### 3.2.8 Semantic integration

* PARTICIPANT will ... -OR- NA

#### 3.2.9 Accessibility
Accessibility turns a machine-understandable WoT Interface described by a TD into an accessible user interface of certain kind.

* PARTICIPANT will ... -OR- NA

### 3.3 Testing in Server Role
The following checking points must be completed together with a partner in client role.

#### 3.3.1 Metadata

* LINKs TO TDs

#### 3.3.2 Read Property

##### HTTP

* YES / NA

##### CoAP

* YES / NA

##### MQTT

* YES / NA

##### Other

* PROTOCOL

#### 3.3.3 Write Property

##### HTTP

* YES / NA

##### CoAP

* YES / NA

##### MQTT

* YES / NA

##### Other

* PROTOCOL

#### 3.3.4 Observe Property

##### HTTP+Longpoll

* YES / NA

##### HTTP+Webhooks

* YES / NA

##### CoAP

* YES / NA

##### MQTT

* YES / NA

##### Other

* PROTOCOL

#### 3.3.5 Invoke Action

##### HTTP

* YES / NA

##### CoAP

* YES / NA

##### MQTT

* YES / NA

##### Other

* PROTOCOL

#### 3.3.6 Subscribe Event

##### HTTP+Longpoll

* YES / NA

##### HTTP+Webhooks

* YES / NA

##### CoAP

* YES / NA

##### MQTT

* YES / NA

##### Other

* PROTOCOL / NA

#### 3.3.7 Security

* SCHEMEs / NA

#### 3.3.8 Semantic integration

* PARTICIPANT will ... / NA

### 3.4 Other issues

#### 3.4.1 Producing Running Actions and Event Instances

* PARTICIPANT will ... / NA

#### 3.4.2 Consuming Running Actions and Event Instances

* PARTICIPANT will ... / NA

#### 3.4.3 New Security Patterns

* SCHEMEs / NA
   * COMMENT

#### 3.4.4 Miscellaneous

* TOPIC / NA
   * COMMENT

## 4 Use cases
This section should cover ideas such as Proxy-Directory integration and concrete application scenarios that need contributions from others or list collaborations.

* PARTICIPANT will ... / NA

## 5 Requirements for PlugFest Environment

| Participant | Number of People | Number of Power outlets | Network                     | Remarks |
|-------------|------------------|-------------------------|-----------------------------|---------|
| PARTICIPANT | ?                | ?                       | Wi-Fi?, Ethernet?, Ports: ? |         |

## 6 Implementation Guidelines
This section should cover documentation of own implementation including tools in Section 1 or requests to others.

FREE TEXT / NA
