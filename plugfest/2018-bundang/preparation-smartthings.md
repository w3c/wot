# PlugFest Preparation for Bundang F2F 2018

# 2. Next plugfest

This section describes the Bundang plugfest held on June 30 and July 1.

## 2.1 Participants and Servients

Each participant is expected to fill in the following table to share between them.

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
    <th rowspan="4">SmartThings</th>
    <td rowspan="2">node-wot script</td>
    <td rowspan="4">HTTP</td>
    <td rowspan="4">node-wot</td>
    <td rowspan="4">HTTPS</td>
    <td rowspan="4">node-wot</td>
    <td rowspan="2">HTTPS</td>
    <td>(Conneted via SmartThings) Color Light, Motion Sensor, Button Switch</td>
  </tr>
  <tr>
    <td>(Proxy to LAN) Color Light, Motion Sensor, Button Switch</td>
  </tr>
  <tr>
    <td rowspan="2">Scripting App.</td>
    <td>HTTP</td>
    <td>Color Light, Motion Sensor, Button Switch</td>
  </tr>
  <tr>
    <td>CoAP</td>
    <td>(Located locally) IKEA light</td>
  </tr>
</table>

## 2.2 Checking points for the next plugfest


### (1) Connect with remote/local proxy
SmartThings cloud will expose an "endpoint app" to a node-wot instance in the cloud.

The node-wot cloud instance will be proxied to the plugfest LAN using node-wot

Local devices will be exposed using a local LAN node-wot instance

Devices on the local node-wot instance will be proxied to the cloud node-wot instance

### (2) Application servients
We will use node-wot as local and cloud based application servients. Devices proxied from the LAN will be integrated with devices exposed in the cloud. Devices proxied from the cloud will be integrated with local LAN devices using a local application servient.

### (3) Connect with node-wot
Node-wot will be used as device servient bridging to IKEA and SmartThings ecosystems

Node-wot will be used as proxy servients for local and cloud connected Devices

Node-wot willbe use as both local and cloud based application servients

### (4) Scripting API
THe scripting API will be used for application logic

### (5) Thing Directory operation
We will use both local LAN and cloud located Thing Directories. The proxy will be expected to register the things it re-exposes

### (6) Device Servients
We plan to use device servients on the LAN and in the cloud to bridge IKEA and SmartThings ecosystems.

### (7) Device simulators
No device simulators

### (8) Semantic integration
TDs will be semantically annotated using iot.schema.org vocabulary

We will experimant with feature of interest annotation using links and by adding triples directly to the TD

### (9) Security
WE will use HTTPS where possible

### (10) Accessibility
We will construct accessibility scenarios as we proceed.

### (11) Event handling
We will experiment with event handling over HTTP using long polling and web callbacks

## 2.3 Other issues

### (1) Validate the simplified TD
We will use the simple TD format with JSON-LD annotation

### (2) Extended Actions
Currently we have no plan to support Extended Actions.

### (3) Notification - websockets, webhooks
As mentioned in 2.2 (11), we will implement long polling and web hooks

### (4) Discovery using Feature of Interest annotation
Will be prototyped using links and RDF triples in JSON-LD

### (5) Application Scenarios, recipes
Ad-hoc recipes and scripts

### (6) Proxy integration with Thing Directory
We will use local and remote proxies, exposing things in both directions, from cloud to local as well as local to Cloud

### (7) New security patterns
No new security patterns are contemplated at this time

### (8) Test Framework
We will use test frameworks that are avvailable

### (9) Other

## 2.4 Use cases

# 3 Schedule

Sat 30.6.18:  9:00-18:00
Sun 1.7.18:  9:00-18:00

Venue: TTA

# 4 Requirements for PlugFest Setting

| Participant | Number of Participants | Number of Power outlets | Network | Remarks |
|-------------|------------------------|-------------------------|---------|---------|
| SmartThings | 1                      | 1                       | Wi-Fi(b/g/n), Ports: 22, 80, 443, 1880, 1883, 3000, 3001, 3002, 3003, 3004, 8001, 8003, 8080 | |


# 5 Implementation guidelines
## request to proxy implementors
