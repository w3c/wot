# PlugFest Preparation for Online September 2018

This document describes the Online PlugFest on Sept 25 to 28.

**DRAFT: Work in Progress**

Features marked with <i>italics</i> are work-in-progress, and hence not confirmed to be available during the PlugFest.

## 1 PlugFest Infrastructure
This section lists the infrastructure available for the PlugFest, which can be used for individual testing (see [Section 3.1](#31-testing-individually))


### 1.1 Public Thing Directories

N/A

### 1.2 Public Proxies

N/A

### 1.3 Public Tools

* <i>node-red-nodegen for generating WoT node (repository URL: https://github.com/k-toumura/node-red-nodegen/tree/webofthings)</i>
  - **NOTICE: This branch (webofthings) is under heavy active development and not fully tested. Not suitable for production use.**

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
    <th rowspan="1">Hitachi</th>
    <td rowspan="1">Node-RED</td>
    <td rowspan="1">HTTP(S)</td>
    <td rowspan="1">N/A</td>
    <td rowspan="1">N/A</td>
    <td rowspan="1">N/A</td>
    <td rowspan="1">N/A</td>
    <td rowspan="1">N/A</td>
  </tr>
</table>

## 3 Checking points for the next plugfest

### 3.1 Testing Individually
The following checking points can be completed by the participant alone by using the PlugFest infrastructure (TD Playground, Thing Directory, Proxies).

#### 3.1.1 Validate TDs

* NA 

#### 3.1.2 Register with Thing Directory

* NA

#### 3.1.3 Connect with Remote/Local Proxy

* NA 

#### 3.1.4 Connect with node-wot

* NA

#### 3.1.5 Scripting API

* NA

### 3.2 Testing in Client Role
The following checking points must be completed together with a partner in server role.

#### 3.2.1 Metadata Handling

* YES
  - Using metadata for Node-RED node description and configuration interfaces.

#### 3.2.2 Read Property

##### HTTP

* YES

##### CoAP

* NA

##### MQTT

* NA

##### Other

* NA

#### 3.2.3 Write Property

##### HTTP

* YES

##### CoAP

* NA

##### MQTT

* NA

##### Other

* NA

#### 3.2.4 Observe Property

##### HTTP+Longpoll

* YES

##### HTTP+Webhooks

* NA

##### CoAP

* NA

##### MQTT

* NA

##### Other

* NA

#### 3.2.5 Invoke Action

##### HTTP

* YES

##### CoAP

* NA

##### MQTT

* NA

##### Other

* NA

#### 3.2.6 Subscribe Event

##### HTTP+Longpoll

* YES

##### HTTP+Webhooks

* NA

##### CoAP

* NA

##### MQTT

* NA

##### Other

* NA

#### 3.2.7 Security

* Encryption: HTTPS
* Authentication: basic, digest, bearer, _apikey_

#### 3.2.8 Semantic integration

* tbd.

#### 3.2.9 Accessibility
Accessibility turns a machine-understandable WoT Interface described by a TD into an accessible user interface of certain kind.

* NA

### 3.3 Testing in Server Role
The following checking points must be completed together with a partner in client role.

#### 3.3.1 Metadata

* NA

#### 3.3.2 Read Property

##### HTTP

* NA

##### CoAP

* NA

##### MQTT

* NA

##### Other

* NA

#### 3.3.3 Write Property

##### HTTP

* NA

##### CoAP

* NA

##### MQTT

* NA

##### Other

* NA

#### 3.3.4 Observe Property

##### HTTP+Longpoll

* NA

##### HTTP+Webhooks

* NA

##### CoAP

* NA

##### MQTT

* NA

##### Other

* NA

#### 3.3.5 Invoke Action

##### HTTP

* NA

##### CoAP

* NA

##### MQTT

* NA

##### Other

* NA

#### 3.3.6 Subscribe Event

##### HTTP+Longpoll

* NA

##### HTTP+Webhooks

* NA

##### CoAP

* NA

##### MQTT

* NA

##### Other

* NA

#### 3.3.7 Security

* NA

#### 3.3.8 Semantic integration

* NA

### 3.4 Other issues

#### 3.4.1 Producing Running Actions and Event Instances

* tbd

#### 3.4.2 Consuming Running Actions and Event Instances

* tbd

#### 3.4.3 New Security Patterns

* NA

#### 3.4.4 Miscellaneous

* tbd

## 4 Use cases
This section should cover ideas such as Proxy-Directory integration and concrete application scenarios that need contributions from others or list collaborations.

* Under consideration.

## 5 Requirements for PlugFest Environment

| Participant | Number of People | Number of Power outlets | Network                     | Remarks |
|-------------|------------------|-------------------------|-----------------------------|---------|
| Hitachi | 1              | ?                      | ? |         |

## 6 Implementation Guidelines
This section should cover documentation of own implementation including tools in Section 1 or requests to others.

### 6.1 Usage instruction for node-red-nodegen

Please let me know if you have questions or if you hit any issues.

#### 6.1.0 Install Node-RED

Follow the instruction in [Node-RED official document](https://nodered.org/docs/getting-started/installation).

#### 6.1.1 Build node-red-nodegen 

- clone the repository
  - ``% git clone https://github.com/k-toumura/node-red-nodegen.git``
- move to 'webofthings' branch
  - ``% cd node-red-nodegen``
  - ``% git checkout webofthings``
- install dependent modules
  - ``% npm install``

#### 6.1.2 Create a node from Thing Description

- generate a node module
  - ``% node bin/node-red-nodegen.js td.jsonld``
  - node is genereted at ./node-red-contrib-wot<i>yourthingname</i>
- install the module
  - ``% cd ~/.node-red``
  - ``% npm install /PATH/TO/node-red-contrib-wotyourthingname``
- run node-red
  - ``% node-red``
  - Then, you can see your Thing node on the pallet (left pane of Node-RED flow editor).
- Create a flow
  - Put any wot node on the editor, and configure by click it.
  - To read a property, send any message to the node. Then received value will send from the node. 
  - To write a property or invoke an action, send value to the node.
  - To observe a property or subscribe an event, there is no need for send messages to the node.  Just receive message from the node.
- Deploy the flow
