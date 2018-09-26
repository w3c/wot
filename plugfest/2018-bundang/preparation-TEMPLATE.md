# PlugFest Preparation for Bundang 2018

This document describes the Bundang PlugFest held on June 30 and July 1.

A summary of the previous Prague PlugFest can be found [here](https://github.com/w3c/wot/blob/master/plugfest/2018-prague/result.md).

Features marked with <i>italics</i> are work-in-progress.

## 1 PlugFest Infrastructure
This section lists the infrastructure available for the PlugFest, which can be used for individual testing (see [Section 3.1](#31-testing-individually))

### 1.1 Public Thing Directories

* IMPLEMENTATION-NAME at URI

### 1.2 Public Proxies

* IMPLEMENTATION-NAME at URI

### 1.3 Public Tools -- was (o8) Test Framework

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

#### 3.1.1 Validate Simplified TDs -- was Other Issues (1)

* PARTICIPANT will ... -OR- N/A

#### 3.1.2 Register with Thing Directory -- was (5)

* PARTICIPANT will ... -OR- N/A

#### 3.1.3 Connect with Remote/Local Proxy -- was (1)

* PARTICIPANT will ... -OR- N/A

#### 3.1.4 Connect with node-wot -- was (3)

* PARTICIPANT will ... -OR- N/A

#### 3.1.5 Scripting API -- was (4)

* PARTICIPANT will ... -OR- N/A

### 3.2 Testing in Client Role
The following checking points must be completed together with a partner in server role.

#### 3.2.1 Metadata Handling

* PARTICIPANT will ...

#### 3.2.2 Property Handling -- was part of (2)

* PARTICIPANT implements the following get bindings
   * PROTOCOL
* PARTICIPANT implements the following set bindings
   * PROTOCOL
* PARTICIPANT implements the following observe bindings
   * PROTOCOL

#### 3.2.3 Action Handling -- was part of (2)

* PARTICIPANT implements the following invoke bindings
   * PROTOCOL

#### 3.2.4 Event Handling -- was part of (11)

* PARTICIPANT implements the following subscribe bindings
   * PROTOCOL

#### 3.2.5 Security -- was part of (9)

* PARTICIPANT can consume the following Security Schemes:
   * `SCHEME`

#### 3.2.6 Semantic integration -- was part of (8)

* PARTICIPANT will ... -OR- N/A

#### 3.2.7 Accessibility -- was (10)

* PARTICIPANT will ... -OR- N/A

### 3.3 Testing in Server Role
The following checking points must be completed together with a partner in client role.

#### 3.3.1 Metadata

* Siemens will expose Things as listed in the table

#### 3.3.2 Properties -- was part of (6) and (7)

* PARTICIPANT implements the following get bindings
   * PROTOCOL
* PARTICIPANT implements the following set bindings
   * PROTOCOL
* PARTICIPANT implements the following observe bindings
   * PROTOCOL

#### 3.3.3 Actions -- was part of (6) and (7)

* PARTICIPANT implements the following invoke bindings
   * PROTOCOL

#### 3.3.4 Events -- was part of (11)

* PARTICIPANT implements the following emit bindings
   * PROTOCOL

#### 3.3.5 Security -- was part of (9)

* PARTICIPANT will offer the following Security Schemes:
   * `SCHEME`

#### 3.3.6 Semantic Integration -- was part of (8)

* PARTICIPANT will ... -OR- N/A

### 3.4 Other issues

#### 3.4.1 Running Actions and Event Instances -- was Other Issues (2)

* PARTICIPANT will ... -OR- N/A

#### 3.4.2 Discovery using Feature of Interest -- was Other Issues (4)

* PARTICIPANT will ... -OR- N/A

#### 3.4.3 New Security Patterns -- was Other Issues (7)

* PARTICIPANT will ... -OR- N/A

#### 3.4.4 Miscellaneous -- was Other Issues (9)

* PARTICIPANT will ... -OR- N/A

## 4 Use cases -- was Other Issues (5) and (6)

* PARTICIPANT will ... -OR- N/A (should list ideas like Proxy-Directory integration and concrete application scenarios)

## 5 Requirements for PlugFest Environment

| Participant | Number of Participants | Number of Power outlets | Network | Remarks |
|-------------|------------------------|-------------------------|---------|---------|
| PARTICIPANT | X                      | X                       | Wi-Fi?, Ethernet?, Ports: ? |  |

## 6 Implementation Guidelines

DOCUMENTATION OF OWN IMPLEMENTATION OR REQUESTS TO OTHERS -OR- N/A
