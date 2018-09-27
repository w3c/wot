# PlugFest Preparation for Online September 2018 - EURECOM

This document describes the preparations made by EURECOM for the Online PlugFest on Sept 25 to 28.

**FIRST DRAFT: Work in Progress**

Features marked with <i>italics</i> are work-in-progress, and hence not confirmed to be available during the PlugFest.

## 1 PlugFest Infrastructure
This section lists the infrastructure available for the PlugFest, which can be used for individual testing (see [Section 3.1](#31-testing-individually))


### 1.1 Public Thing Directories

NA

### 1.2 Public Proxies

NA

### 1.3 Public Tools

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
    <th rowspan="3">EURECOM</th>
    <td>Fleet management</td>
    <td>HTTPS</td>
    <td rowspan="3"></td>
    <td></td>
    <td></td>
    <td>HTTPS</td>
    <td>Virtual car fleet</td>
  </tr>
</table>

## 3 Checking points for the next plugfest

### 3.1 Testing Individually
The following checking points can be completed by the participant alone by using the PlugFest infrastructure (TD Playground, Thing Directory, Proxies).

#### 3.1.1 Validate TDs

* Eurecom will validate all TDs using [Thingweb Playground](https://github.com/thingweb/thingweb-playground).

#### 3.1.2 Register with Thing Directory

NA

#### 3.1.3 Connect with Remote/Local Proxy

* NA

#### 3.1.4 Connect with node-wot

* NA

#### 3.1.5 Scripting API

* Eurecom will be running some simple application servients, and will attempt connection to both local (within-VLAN) and remote (via proxy) Things.

### 3.2 Testing in Client Role
The following checking points must be completed together with a partner in server role.

#### 3.2.1 Metadata Handling

* Eurecom will manually check client role using Postman and/or curl (HTTP only) 

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

* <i>Yes</i>

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

* Yes

##### HTTP+Webhooks

* NA

##### CoAP

* NA

##### MQTT

* NA

##### Other

* NA

#### 3.2.7 Security

The following in combination with HTTPS (HTTP + TLS)
* oauth2
Get your token at https://18.197.31.47/oauth/token, you can ask for a user id and password privately (klotz@eurecom.fr)

#### 3.2.8 Semantic integration

* EURECOM will test semantic search via Thing Directory

#### 3.2.9 Accessibility

NA

### 3.3 Testing in Server Role
The following checking points must be completed together with a partner in client role.

#### 3.3.1 Metadata

* EURECOM will provide TDs

#### 3.3.2 Read Property

##### HTTP

* YES 

##### CoAP

* Na

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

* NA

#### 3.3.7 Security

The following in combination with HTTPS (HTTP + TLS)
* oauth2

#### 3.3.8 Semantic integration

* EURECOM will annotate TDs as appropriate with iotschema.org semantics

### 3.4 Other issues

#### 3.4.1 Producing Running Actions and Event Instances

* NA

#### 3.4.2 Consuming Running Actions and Event Instances

* NA

#### 3.4.3 New Security Patterns

OAuth2
   * Will provide authentication server

#### 3.4.4 Miscellaneous

* TOPIC / NA
   * COMMENT

## 4 Use cases
This section should cover ideas such as Proxy-Directory integration and concrete application scenarios that need contributions from others or list collaborations.

* PARTICIPANT will ... / NA

## 5 Implementation Guidelines

### 5.1 Authentication server

Eurecom authentication server has following API:

- URL: https://18.197.47.31/auth/token
- METHOD: POST

  ```
 curl -k -X POST -d "client_id=9qFbZD4udTzFVYo0u5UzkZX9iuzbdcJDRAquTfRk&grant_type=password&username=user&password=pwd" https://18.197.31.47/oauth/token
  ```

  Note: id and password are distributed to plugest participants privately. The example above also works.

- Response body: application/json

  ```
  {
    "token": "eyJ...CJ9.eyJ3b3SIsImlhdCI6MTUyNDIwMjI0N...TG4ifQ.9n9...VT-k"
  }
  ```

The value of the token is used to access Panasonic WoT interface in following request header:

```
curl -k -H "Authorization: Bearer NYODXSR8KalTPnWUib47t5E8Pi8mo4" https://18.197.31.47/1TDZK23C87S016070/consumetd
```
(This token is just an example that will not work)
