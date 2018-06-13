# PlugFest Preparation for Bundang F2F 2018

# 2. Next plutfest

This section is described for Bundang plugfest held on June 30 and July 1.

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
    <th rowspan="2">Fujitsu</th>
    <td>NodeRED</td>
    <td>HTTP(s)</td>
    <td rowspan="2">Fujitsu Cloud</td>
    <td rowspan="2">HTTP(s)+WS</td>
    <td>Local gateway</td>
    <td>HTTP</td>
    <td>Air conditioner, LED light, Blind</td>
  </tr>
  <tr>
    <td>Scripting App.</td>
    <td>HTTP</td>
    <td>Local gateway</td>
    <td>HTTP</td>
    <td>Sensors(Luminance sensor, Humidity sensor, Temperature sensor, Accelerometer), Rotating Light</td>
  </tr>
  <tr>
    <th>company or university</th>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <th>company or university</th>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
</table>

## 2.2 Checking points for the next plugfest

These were described in result.md in Prague plugfest.

### (1) Connect with remote/local proxy

#### Fujitsu
   We provide one remote proxy in Nagoya and two local proxies.
   One local proxy is placed in Smart Home in Japan, and three devices(LED Light, AirConditioner, Blind) connect it by ECHONET Lite.
   Another local proxy is placed in PlugFest Place, and two devices(Rotating Light, Brightness Sensor) connect it.

### (2) Application servients

#### Fujitsu
   We use Node-RED to lookup TD and set/get property value and Action.
   Nimura-san use scripting api.

### (3) Connect with node-wot

#### Fujitsu
   (future work)

### (4) Scripting API

#### Fujitsu
   We provide application servient that supports ConsumedThing of ScriptingAPI and device servient that supports 
   ExposedThing of ScriptingAPI.

### (5) Thing Directory operation

#### Fujitsu
   We provide simple one. Application Servients can lookup TDs by specifying the device's name.

### (6) Device Servients

#### Fujitsu
   Local Devices: Rotary Beacon Light(connectet by EtherCAT) and Brightness Sensor(connectet by BLE)
   Remote Devices(in Japan): LED Light, Blind and Airconditioner (connected by ECHONET Lite)

### (7) Device simulators

#### Fujitsu
   (future work)

### (8) Semantic integration

#### Fujitsu
   (future work)

### (9) Security

#### Fujitsu
   We use bearer token for access the remote/local proxy.
   And also use bearer token between remote proxy and local proxy.

### (10) Accessibility

#### Fujitsu
   (future work)

### (11) Event handling

#### Fujitsu
   Our Remote and Local proxy support SSE and Long Polling.
   Brightness Sensor support long polling

## 2.3 Other issues

The following points are picked up from Koster-san's material.

### (1) Validate the simplified TD

### (2) Extended Actions

### (3) Notification - websockets, webhooks

### (4) Discovery using Feature of Interest annotation

### (5) Application Scenarios, recipes

### (6) Proxy integration with Thing Directory

### (7) New security patterns

### (8) Test Framework

### (9) Other

