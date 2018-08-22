# PlugFest Preparation for Online September 2018 - Intel

This document describes the preparations made by Intel for the Online PlugFest on Sept 25 to 28.

**FIRST DRAFT: Work in Progress**

Features marked with <i>italics</i> are work-in-progress, and hence not confirmed to be available during the PlugFest.

## 1 PlugFest Infrastructure
This section lists the infrastructure available for the PlugFest, which can be used for individual testing (see [Section 3.1](#31-testing-individually))


### 1.1 Public Thing Directories

Cloud Thing Directories
* [Thingweb-Directory](https://github.com/thingweb/thingweb-directory) running at https://portal.mmccool.net:8090.
* [Thingweb-Directory](https://github.com/thingweb/thingweb-directory) running at https://tiktok.mmccool.org:8090.
* [Authentication credentials]() - to be distributed via W3C email and/or use OAuth2
Local LAN Thing Directories (simulated local LANs using OpenVPN)
* [Thingweb-Directory](https://github.com/thingweb/thingweb-directory) running at http://gateway.local:8090 on VLAN1.
* [Thingweb-Directory](https://github.com/thingweb/thingweb-directory) running at http://gateway.local:8090 on VLAN2.
* No authentication credentials; assumes "local network" is secure.
* You need to authenticate via OpenVPN to access.

* See below: "local" thing directories are also made publically available by reverse proxies, but technically this is only for testing, and the VLAN should be used to connect to it as a local device.  Access via reverse proxies also requires authentication and use https rather than http.   However, note that the TDs returned may return URLs with IP addresses that are not visible from the public internet (being behind a "virtual NAT").

### 1.2 Public Proxies

* [SimpleReverseProxy]() running at https://portal.mmccool.net
** Port xxxx: proxied access to OCF devices on VLAN1
** Port xxxx: proxied access to camera service on VLAN1
** Port xxxx: proxied access to speech service on VLAN1
** Port xxxx: proxied access to Thing Directory on VLAN1 (testing only)
* [SimpleReverseProxy]() running at https://tiktok.mmccool.org
** Port xxxx: proxied access to OCF devices on VLAN2
** Port xxxx: proxied access to camera service on VLAN2
** Port xxxx: proxied access to speech service on VLAN2
** Port xxxx: proxied access to Thing Directory on VLAN2 (testing only)

### 1.3 Public Tools

OAuth2 
* OAuth2 Authentication server at https://portal.mmccool.net:6000.
* OAuth2 Authentication server at https://tiktok.mmccool.org:6000.
* [Authentication credentials]() - to be distributed via W3C email and/or use OAuth2
OpenVPN 
* OpenVPN server at https://portal.mmccool.net:9010 (VLAN1).
* OpenVPN server at https://tiktok.mmccool.org:9010 (VLAN2).
* [Authentication credentials]() - to be distributed via W3C email and/or use OAuth2
Validation
* [Thingweb Playground](https://github.com/thingweb/thingweb-playground) running at https://portal.mmccool.net:10000.
* [Thingweb Playground](https://github.com/thingweb/thingweb-playground) running at https://tiktok.mmccool.org:10000.

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
    <th rowspan="3">Intel</th>
    <td>OCF Smart Home</td>
    <td>HTTPS</td>
    <td rowspan="3">Digital Ocean and AWS</td>
    <td>SSH Tunnel and Remote Proxy</td>
    <td>IoT REST API Server</td>
    <td>CoAP</td>
    <td>Button, Light, RGB LED, Buzzer, Temperature, Illuminance, Motion</td>
  </tr>
  <tr>
    <td>Web Camera</td>
    <td>HTTPS</td>
    <td>SSH Tunnel and Remote Port Forwarding</td>
    <td>Direct via tunnel</td>
    <td>HTTPS</td>
    <td>Camera</td>
  </tr>
  <tr>
    <td>Web Speech</td>
    <td>HTTPS</td>
    <td>SSH Tunnel and Remote Port Forwarding</td>
    <td>Direct via tunnel</td>
    <td>HTTPS</td>
    <td>Speaker</td>
  </tr>
</table>

## 3 Checking points for the next plugfest

### 3.1 Testing Individually
The following checking points can be completed by the participant alone by using the PlugFest infrastructure (TD Playground, Thing Directory, Proxies).

#### 3.1.1 Validate TDs

* Intel will validate all TDs using [Thingweb Playground](https://github.com/thingweb/thingweb-playground).

#### 3.1.2 Register with Thing Directory

* Intel will register all TDs dynamically with all Thing Directories listed above, using a 1 minute timeout.
* Intel will also capture all TDs and [archive them](github.org/w3c/wot/plugfest/2018-sept-online/TDs/Intel).

#### 3.1.3 Connect with Remote/Local Proxy

* Intel will proxy all local Things through reverse ssh proxies as noted above

#### 3.1.4 Connect with node-wot

* Intel will test consumption of all of Intel's TDs using node-wot

#### 3.1.5 Scripting API

* Intel will be running some simple application servients using node-wot both on the local gateway and in the cloud, and will attempt connection to both local (within-VLAN) and remote (via proxy) Things.

### 3.2 Testing in Client Role
The following checking points must be completed together with a partner in server role.

#### 3.2.1 Metadata Handling

* Intel will manually check client role using Postman and/or curl (HTTP only) 
* Intel will check client role using node-wot for both CoAP (OCF devices) and HTTP(S).

#### 3.2.2 Read Property

##### HTTP

* YES - Postman, curl, node-wot

##### CoAP

* YES - node-wot

##### MQTT

* NA

##### Other

* NA

#### 3.2.3 Write Property

##### HTTP

* YES - Postman, curl, node-wot

##### CoAP

* YES - node-wot

##### MQTT

* NA

##### Other

* NA

#### 3.2.4 Observe Property

##### HTTP+Longpoll

* YES - Postman, curl, node-wot

##### HTTP+Webhooks

* NA

##### CoAP

* YES - node-wot

##### MQTT

* NA

##### Other

* NA

#### 3.2.5 Invoke Action

##### HTTP

* YES - Postman, curl, node-wot

##### CoAP

* NA

##### MQTT

* NA

##### Other

* NA

#### 3.2.6 Subscribe Event

##### HTTP+Longpoll

* NA
Maybe, if there is a proposal to follow.

##### HTTP+Webhooks

* NA
Maybe, if there is a proposal to follow.

##### CoAP

* NA
Maybe, if there is a proposal to follow.

##### MQTT

* NA
Maybe, if there is a proposal to follow.

##### Other

* NA

#### 3.2.7 Security

Note: These will be attempted on Intel devices using node-wot, assuming it supports them.
Otherwise, manual testing via Postman will be attempted for the HTTP schemes at least.

The following in combination with HTTPS (HTTP + TLS)
* basic
* digest
* oauth2
* apikey
The following in combination with CoAPS (CoAP + DTLS)
* psk
* cert
* public

#### 3.2.8 Semantic integration

* Intel will test semantic search via Thing Directory
* Intel will implement a voice interface as an Alexa service using semantic search as intermediary

#### 3.2.9 Accessibility
Accessibility turns a machine-understandable WoT Interface described by a TD into an accessible user interface of certain kind.

* Intel will provide speech service to provide alternative output mode
* Intel will explore semantic markup designed to identify sensory modality of event notifications

### 3.3 Testing in Server Role
The following checking points must be completed together with a partner in client role.

#### 3.3.1 Metadata

* Intel will provide [archived TDs]()

#### 3.3.2 Read Property

##### HTTP

* YES 

##### CoAP

* YES 

##### MQTT

* NA

##### Other

* NA

#### 3.3.3 Write Property

##### HTTP

* YES 

##### CoAP

* YES 

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

* YES 

##### MQTT

* NA

##### Other

* NA

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

The following in combination with HTTPS (HTTP + TLS)
* basic
* digest
* oauth2
* apikey
The following in combination with CoAPS (CoAP + DTLS)
* psk
* cert
* public

#### 3.3.8 Semantic integration

* Intel will annotate TDs as appropriate with iotschema.org semantics

### 3.4 Other issues

#### 3.4.1 Producing Running Actions and Event Instances

* NA

#### 3.4.2 Consuming Running Actions and Event Instances

* NA

#### 3.4.3 New Security Patterns

* OAuth2
   * Will provide authentication server

#### 3.4.4 Miscellaneous

* TOPIC / NA
   * COMMENT

## 4 Use cases
This section should cover ideas such as Proxy-Directory integration and concrete application scenarios that need contributions from others or list collaborations.

* PARTICIPANT will ... / NA

## 5 Requirements for PlugFest Environment

Not directly relevant to online plugfest... but good to document here during setup so requirements can be carried forward to F2F plugfest.

| Participant | Number of People | Number of Power outlets | Network                       | Remarks                                  |
|-------------|------------------|-------------------------|-------------------------------|------------------------------------------|
| Intel       | 1                | ?                       | ? Wi-Fi, ? Ethernet, Ports: ? | Two local lans bridged to OpenVPN VLANs  |

## 6 Implementation Guidelines
This section should cover documentation of own implementation including tools in Section 1 or requests to others.

FREE TEXT / NA
