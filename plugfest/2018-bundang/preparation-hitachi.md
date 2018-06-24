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

* N/A

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
    <th>Hitachi</th>
    <td><a ref="http://github.com/node-red/node-red-nodegen">Node generator for Node-RED</a></td>
    <td>HTTP<i>(S)</i></td>
    <td>(N/A)</td>
    <td>(N/A)</td>
    <td>(N/A)</td>
    <td>(N/A)</td>
    <td>(N/A)</td>
  </tr>
</table>

## 3 Checking points for the next plugfest

### 3.1 Testing Individually
The following checking points can be completed by the participant alone by using the PlugFest infrastructure (TD Playground, Thing Directory, Proxies).

#### 3.1.1 Validate Simplified TDs -- was Other Issues (1)

* Hitachi will validate our implementation can parse Simplified TDs.

#### 3.1.2 Register with Thing Directory -- was (5)

* N/A

#### 3.1.3 Connect with Remote/Local Proxy -- was (1)

* Hitachi will connect our application with Remote/Local Proxy

#### 3.1.4 Connect with node-wot -- was (3)

* N/A
* <i>When node-wot is released from <a href="https://www.npmjs.com/">npm</a>, we'll try to use it by <code>const wot = require('node-wot')</code>.</i>

#### 3.1.5 Scripting API -- was (4)

* N/A

### 3.2 Testing in Client Role
The following checking points must be completed together with a partner in server role.

#### 3.2.1 Metadata Handling

* Hitachi will try to incorporate Metadata in Node-RED contexts or messages.

#### 3.2.2 Property Handling -- was part of (2)

* Hitachi implements the following get bindings
   * HTTP(<i>S</i>)
* PARTICIPANT implements the following set bindings
   * HTTP(<i>S</i>)
* PARTICIPANT implements the following observe bindings
   * HTTP(<i>S</i>)+Longpoll

#### 3.2.3 Action Handling -- was part of (2)

* Hitachi implements the following invoke bindings
   * HTTP(<i>S</i>)

#### 3.2.4 Event Handling -- was part of (11)

* Hitachi implements the following subscribe bindings
   * HTTP(<i>S</i>)+Longpoll

#### 3.2.5 Security -- was part of (9)

* <i>Hitachi can consume the following Security Schemes: </i>
   * basic
   * digest
   * bearer
   * (using <a href="https://www.npmjs.com/package/request">Request package</a>)

#### 3.2.6 Semantic integration -- was part of (8)

* N/A

#### 3.2.7 Accessibility -- was (10)

* N/A

### 3.3 Testing in Server Role
The following checking points must be completed together with a partner in client role.

#### 3.3.1 Metadata

* N/A

#### 3.3.2 Properties -- was part of (6) and (7)

* N/A

#### 3.3.3 Actions -- was part of (6) and (7)

* N/A

#### 3.3.4 Events -- was part of (11)

* N/A

#### 3.3.5 Security -- was part of (9)

* N/A

#### 3.3.6 Semantic Integration -- was part of (8)

* N/A

### 3.4 Other issues

#### 3.4.1 Running Actions and Event Instances -- was Other Issues (2)

* N/A

#### 3.4.2 Discovery using Feature of Interest -- was Other Issues (4)

* N/A

#### 3.4.3 New Security Patterns -- was Other Issues (7)

* N/A

#### 3.4.4 Miscellaneous -- was Other Issues (9)

* N/A

## 4 Use cases -- was Other Issues (5) and (6)

* Hitachi is seeking scenario which combines multiple verticals, such as industry and home appliance, etc.

## 5 Requirements for PlugFest Environment

| Participant | Number of Participants | Number of Power outlets | Network | Remarks |
|-------------|------------------------|-------------------------|---------|---------|
| Hitachi | 1                      | 2                       | Wi-Fi(b/g/a/n), Ports: 80,443,1880  |  |

## 6 Implementation Guidelines

N/A.