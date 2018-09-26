
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
    <th rowspan="6">SmartThings</th>
    <td>node-wot script (LAN and Remote)</td>
    <td>HTTP</td>
    <td>node-wot</td>
    <td>HTTPS</td>
    <td>node-wot bridge</td>
    <td>HTTP</td>
    <td>Philips Hue Light Bulb</td>
  </tr>
  <tr>
    <td>node-wot script (LAN and Remote)</td>
    <td>HTTP</td>
    <td>node-wot bridge</td>
    <td>HTTP</td>
    <td>node-wot bridge</td>
    <td>MQTT</td>
    <td>Node-RED Model House: lights, heater, thermostat, illuminance, motion, sound pressure</td>
  </tr>
  <tr>
    <td>node-wot script (Remote)</td>
    <td>HTTP</td>
    <td>node-wot bridge</td>
    <td></td>
    <td></td>
    <td>HTTPS</td>
    <td>SmartThings Cloud Endpoint: motion, dimmable light bulb</td>
  </tr>
  <tr>
    <td>node-wot script (LAN)</td>
    <td>HTTP</td>
    <td>node-wot bridge to local proxy</td>
    <td>HTTP</td>
    <td>node-wot remote => local proxy</td>
    <td>HTTPS</td>
    <td>SmartThings Cloud Endpoint: motion, dimmable light bulb</td>
  </tr>
  <tr>
    <td>node-wot script (LAN and Remote)</td>
    <td>HTTP</td>
    <td>node-wot</td>
    <td>HTTP</td>
    <td>node-wot</td>
    <td>CoAP</td>
    <td>IKEA dimmable light Bulb</td>
  </tr>
  <tr>
    <td>node-wot script (LAN and Remote)</td>
    <td>HTTP</td>
    <td>node-wot</td>
    <td>HTTP</td>
    <td>node-wot</td>
    <td>CoAP</td>
    <td>OCF Demonstrator: motion sensor, LED indicator</td>
  </tr>
</table>

## 3 Checking points for the next plugfest

### 3.1 Testing Individually
The following checking points can be completed by the participant alone by using the PlugFest infrastructure (TD Playground, Thing Directory, Proxies).

#### 3.1.1 Validate Simplified TDs -- was Other Issues (1)

* SmartThings will use the simplified TD format with copious semantic annotation and strange protocol bindings. This will test the ability of the validator to accept a range of input patterns.

#### 3.1.2 Register with Thing Directory -- was (5)

* SmartThings will register TDs with both local and remote shared thing directory instances. Applications will be hosted locally and remotely.

#### 3.1.3 Connect with Remote/Local Proxy -- was (1)

* SmartThings will use both local and remote proxies to expose LAN devices to cloud based applicaitons, and to expose cloud based device APIs to local applications.

#### 3.1.4 Connect with node-wot -- was (3)

* SmartThings will use node-wot to host applications using the Consumed Thing API, to bridge ecosystem protocols to applications, and to act as both local-to-remote and remote-to-local proxy patterns.

#### 3.1.5 Scripting API -- was (4)

* SmartThings will use the Scripting API for applications and for things exposed by bridges and proxies.

### 3.2 Testing in Client Role
The following checking points must be completed together with a partner in server role.

#### 3.2.1 Metadata Handling

* SmartThings will use iotschema annotation for capabilities, interactions, and data. Some TDs will be annotated with iotschema Feature of Interest. Some interactions will be labeled with units conversions.

#### 3.2.2 Property Handling -- was part of (2)

* SmartThings implements the following get bindings
   * HTTP, CoAP, MQTT
* SmartThings implements the following set bindings
   * HTTP, CoAP, MQTT
* SmartThings implements the following observe bindings
   * HTTP, CoAP, MQTT

#### 3.2.3 Action Handling -- was part of (2)

* SmartThings implements the following invoke bindings
   * HTTP, CoAP, MQTT

#### 3.2.4 Event Handling -- was part of (11)

* SmartThings implements the following subscribe bindings
   * HTTP+LongPoll, CoAP, MQTT (node-wot supported + out-of-band MQTT))

#### 3.2.5 Security -- was part of (9)

* SmartThings can consume the following Security Schemes:
* DTLS for Consumed CoAP things from OCF and IKEA
* HTTPS for webhook connection to SmartThings
* HTTPS for cloud-exposed things


#### 3.2.6 Semantic integration -- was part of (8)

* SmartThings will use iotschema annotation for capabilities, interactions, and data. Some TDs will be annotated with iotschema Feature of Interest. Some interactions will be labeled with units conversions.

#### 3.2.7 Accessibility -- was (10)

* N/A

### 3.3 Testing in Server Role
The following checking points must be completed together with a partner in client role.

#### 3.3.1 Metadata

* SmartThings will use iotschema annotation for capabilities, interactions, and data. Some TDs will be annotated with iotschema Feature of Interest. Some interactions will be labeled with units conversions.

#### 3.3.2 Properties -- was part of (6) and (7)

* SmartThings implements the following get bindings
   * HTTP, CoAP, MQTT
* SmartThings implements the following set bindings
   * HTTP, CoAP, MQTT
* SmartThings implements the following observe bindings
   * HTTP, CoAP, MQTT

#### 3.3.3 Actions -- was part of (6) and (7)

* SmartThings implements the following invoke bindings
   * HTTP, CoAP, MQTT

#### 3.3.4 Events -- was part of (11)

* SmartThings implements the following emit bindings
   * HTTP+LongPoll, CoAP, MQTT

#### 3.3.5 Security -- was part of (9)

* SmartThings will offer the following Security Schemes:
   * DTLS for CoAP things from OCF and IKEA
   * HTTPS for webhook receiver connection to SmartThings
   * HTTPS for cloud-exposed things

#### 3.3.6 Semantic Integration -- was part of (8)

* SmartThings will use iotschema.org annotation for capabilities, interactions, data, and Feature of Interest, and will prototype some range conversion annotation. Application discovery will test filtering by semantic category and value e.g. temperature capability associated with the living room

### 3.4 Other issues

#### 3.4.1 Running Actions and Event Instances -- was Other Issues (2)

* SmartThings will use simple acrions and events

#### 3.4.2 Discovery using Feature of Interest -- was Other Issues (4)

* SmartThings will test FoI based discovery

#### 3.4.3 New Security Patterns -- was Other Issues (7)

* SmartThings will work on automating the DTLS binding for CoAP on LAN based devices, and use https for cloud based APIs

#### 3.4.4 Miscellaneous -- was Other Issues (9)

* SmartThings will prototype use of a Dynamic Link binding pattern to provide pub/sub based data sources and sinks for exposed things.

## 4 Use cases -- was Other Issues (5) and (6)

* SmartThings will test a pattern for using a servient to bridge applications using a common protocol binding to diverse device ecosystems. Example ecosystems are Philips Hue and IKEA Tradfri.
* SmartTings will test a cloud-to-cloud integration where a WoT servient acts as a proxy for interoperable applications and services can manage SmartThings connected things.
* SmartThings will test the use of a Dynamic Link (Dynlink) pattern to integrate MQTT data sources and data sinks for interactions.
* SmartThings will test the integration of both local and remote proxies with Thing Directories. A proxy will automatically register its exposed things with the appropriately reachable Thing Directory.
* SmartThings will test Feature of Interest annotation and discovery filtering. There will be a modeled house with feature of interest annotation on various lights and other affordances.

## 5 Requirements for PlugFest Environment

| Participant | Number of Participants | Number of Power outlets | Network | Remarks |
|-------------|------------------------|-------------------------|---------|---------|
| SmartThings | 1                      | 1                       | Wi-Fi, Wired Ethernet, Ports: 3000-9999 TCP and UDP| N/A |

## 6 Implementation Guidelines

N/A
