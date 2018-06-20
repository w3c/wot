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

## 2.2 Checking points for the next plugfest


### (1) Connect with remote/local proxy
Remote devices in Osaka Lab and devices simulated by online simulator are exposing WoT server on the cloud, so connection to remote/local proxy is essentially not necessary (although it's possible).

Devices simulated by local simulator will expose WoT server locally, so to access these devices from outside, connection to remote/local proxy is necessary.

In Prague, connection through Fujitsu proxy was successful. In Bundang, we expect to connect through other proxies as well.

### (2) Application servients
We will use generic WoT client on browser which is consisted of HTML/JavaScript code and JavaScript library (client side subset of WoT Scripting API) to read TD and access servients, ether locally or on the cloud/proxy. To avoid CORS restriction, it might be necessary to use browser with non-secure mode, such as Vivaldi.

Complementary, we will also use NodeRED.

### (3) Connect with node-wot
We will try to connect any servients using Node-WoT where possible during Plugfest.

Currently we have no plan to use Node-WoT as a library.

### (4) Scripting API
As written in (2), we implement subset of Scripting API and use it in Generic WoT Client on browser.

### (5) Thing Directory operation
In Prague, manual registration to Fujitsu directory (=proxy) was successful. In Bundang, we expect to register to other directories as well.

### (6) Device Servients
We will expose device servients on the cloud, which will be connected to remote devices such as Air conditioner, Lighting and Robotics Cleaner, located at our lab in Osaka. Result of the operation can be seen through Hangout video. Servients on the cloud and devices in the lab are connected by proprietary tunneling method.

We will bring Google Home Mini to Bundang, which also exposes device servient on the cloud, accepting event subscription and emits event when particular keywords are spoken to.

### (7) Device simulators
We will set up device simulator on the cloud, which simulates devices such as Air Conditioner, Lighting and Robotics Cleaner and exposes servients, looking similar to device servients connected to physical devices at our lab in Osaka.

We will bring Raspberry Pi to Bundang, which runs same simulator program as on the cloud, to simulate locally connected WoT device servients.

### (8) Semantic integration
We already have some semantic annotation on our AirConditioner TD. We will check iotschema.org and put semantic annotation to other TDs as well.

### (9) Security
WoT interfaces to the Servients on the cloud (for remote devices in Osaka Lab, online simulater and Google Home Mini) are protected by HTTPS and bearer token. We have dedicated server for PUSH notification which also supports TLS (HTTPS for long polling and WSS for WebSocket), but currently does not require token, due to difficulty to handle WebSocket custom header on browser.

In addition, HTML user interface to the online simulator is protected by HTTPS and basic authentication. Please contact to Panasonic stuff to get details.  

WoT interface to the Local simulater uses HTTP and not protected.

### (10) Accessibility
At the moment no Accessibility scenario has been considered.

### (11) Event handling
Currently, following device servients are possible to invoke PUSH notification:
- AirConditioner (Property observe, Event)
- Lighting (Property observe)
- Google Home Mini (Event)

For above servients and our generic WoT Client, HTTP long polling is already supported. Details are as follows:
- URI: written in "href" field in the "form" of TD where interaction type is property and "rel" is "observe" or interaction type is event, starting from "http" or "https".
- Sub Protocol: "subProtocol" field in the "form" of TD is set to "LongPoll".
- Subscribe: GET from above URI.
- Notification: GET response returns. Payload is JSON data of property or event  without any headers or footers.
- Unsubscribe: disconnect pending GET from above URI.


In addition, we plan to implement simple WebSocket bindings to above servients as well as generic WoT Client. Details are as follows:
- URI: written in "href" field in the "form" of TD where interaction type is property and "rel" is "observe" or inter type is event, starting from "ws" or "wss".
- Sub Protocol: no specific "subProtocol" field in the "form" of TD is not used.
- Subscribe: connect WebSocket to above URI.
- Notification: JSON data of property or event is transmitted through above WebSocket connection without any headers or footers.
- Unsubscribe: disconnect WebSocket from above URI.

## 2.3 Other issues

### (1) Validate the simplified TD
We will update all our TDs aligning to new simplified TD format.

### (2) Extended Actions
Currently we have no plan to support Extended Actions.   
We currently support actions in Robotics Cleaner but it does not have  any monitoring mechanism of invoked actions.

### (3) Notification - websockets, webhooks
As mentioned in 2.2 (11), we will implement simple WebSocket for Property observe and Event notification.

### (4) Discovery using Feature of Interest annotation
To be investigated.

### (5) Application Scenarios, recipes
Currently we have smart home application with simple "I'm Home" and "Bye" scenario triggerd by voice command through Google Home.  

We'd like to find out convincing application scenarios orchestrating devices from smart home and other areas, such as automotive, building or industry.

### (6) Proxy integration with Thing Directory
Currently we have no plan to provide proxy and directory.

### (7) New security patterns
As mentioned in 2.2, WoT interfaces to servient on the cloud are protected by HTTPS and bearer token.

### (8) Test Framework
We will provide Online Simulator for testing.

### (9) Other

## 2.4 Use cases


As mentioned in 2.3, we'd like to find out convincing application scenarios orchestrating devices from smart home and other areas, such as automotive, building or industry.


# 3 Schedule

Sat 30.6.18:  9:00-18:00  
Sun 1.7.18:  9:00-18:00  

Venue: TTA

# 4 Requirements for PlugFest Setting

| Participant | Number of Participants | Number of Power outlets | Network | Remarks |
|-------------|------------------------|-------------------------|---------|---------|
| Panasonic   | 3                      | 2                       | Wi-Fi(b/g/n), Ports: 22, 80, 443, 1880, 3000, 3001, 3002, 3003, 3004, 8001, 8003 | |


# 5 Implementation guidelines
## request to proxy implementors

I would like to ask proxies to support multiple bindings per each property and event. We use multiple bindings to distinguish:
- "read/write" and "observe" of Property
- multiple method of notification (property observe and event) such as HTTP long polling and simple WebSocket.
