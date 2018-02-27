# PlugFest Preparation for Prague F2F 2018

# 1. Introduction

This document describes a general information related to the next plugfest in Prague F2F meeting. The detail specification will be descirbed  in the guideline document, please see https://github.com/w3c/wot/blob/master/plugfest/2018-prague/guideline.md.

## 1.1 Backgroud

In the past plugfest, we've already checked consistency of the interfaces of two Servients provided by different members. They were combinations of application and device, or device to device. These application and devices were compatible to WoT and talked with it. To setup a larger scale system, the gateawy functions are required to connect multiple applications and devices located on the different places. We'd introduced proxy Servients in the Burlingame plugfest to archieve this purpose. As a result of this, a variety of devices settled in some cases could be connected from the application running both on the cloud and on the local controlers.
The figure below shows the diagram of all the Serviente connected to the network of the plugfest. 8 companies brought applications, remote proxies, local proxies and devices as WoT Serivients or protocol converters with legacy devicee, such as home appliances, building facilities, factory facilities and vihcles.

![buriling plugfest](images/burlingame.png)

## 1.2 Use case

Some use cases are described in below but not limited to the followings.

(1) Smart home
This is the smarthome application that the application on the smartphone can control the air conditioner in the house. The agent and the gateway have gateway functions that connects with applications, devices, and gateways.

![Use case 1](images/smarthome.png)

(2) Smart factory

![Use case 2](images/smartfactory.png)

(3) Connected car

![Use case 3](images/connectedcar.png)

# 2. Servients

## 2.1 4-layered Servients

3 types of WoT Servients was derived from the use case described in 1.2. These are defined below:  
* Device Servient: WoT Servient with Exposed Thing, e.g. devices
* Application Servient: WoT Servient with Consumed Thing, e.g. applications
* Proxy Servient: WoT Servient with both Exposed and Consumed Thing, e.g. gateways

The Proxy Servient are seperated to 2 types fo them, Remote Proxy and Local Proxy. The Remote Proxy Servient is deployed on the Internet and connected with the Applicationd Serivent and the Local Proxy Servient. The Local Proxy Servient is done on the Local network and connects with the Remote Proxy Servient and the Device Servient. The layered diagram is shown below.

## 2.2 Servients and Protocols
Notes: The following contents has been just copied from Barlingame table. Please modify below directly or this powerpoint, https://github.com/w3c/wot/tree/master/plugfest/2018-prague/servients_prague.pptx

<table>
  <tr>
    <th>Servients</th>
    <th colspan="2">Fujitsu</th>
    <th colspan="2">Panasonic</th>
    <th>Internet Reserach Institute</th>
    <th colspan="2">Siemens</th>
    <th>Lemonbeat</th>
    <th colspan="2">Intel</th>
    <th colspan="2">SmartThings</th>
    <th>EURECOM</th>
  </tr>
  <tr>
    <td>Application</td>
    <td>Scripting App.</td>
    <td>NodeRED</td>
    <td>Scripting App.</td>
    <td>NodeRED</td>
    <td>NodeRED</td>
    <td>Scripting App.</td>
    <td>WebUI</td>
    <td></td>
    <td>AWS WoT Skill</td>
    <td>AlexNet Recog Service</td>
    <td>NodeRED Local</td>
    <td>NodeRED Remote</td>
    <td></td>
  </tr>
  <tr>
    <td>=protocol</td>
    <td>HTTP</td>
    <td>HTTP(s)</td>
    <td colspan="2"></td>
    <td>HTTP(s)</td>
    <td>HTTP, CoAP, BACnet, Modbus</td>
    <td>HTTP, CoAP</td>
    <td></td>
    <td colspan="2">HTTPS</td>
    <td colspan="2">HTTP</td>
    <td></td>
  </tr>
  <tr>
    <td>Remote Proxy</td>
    <td colspan="2">Fujitsu Cloud</td>
    <td colspan="2"></td>
    <td></td>
    <td colspan="2">WoS Messaging Service</td>
    <td></td>
    <td colspan="2">Cloud proxy shadow</td>
    <td colspan="2">Remote Gateway</td>
    <td></td>
  </tr>
  <tr>
    <td>=protocol</td>
    <td colspan="2">HTTP(s)+WS</td>
    <td colspan="2"></td>
    <td></td>
    <td colspan="2">(tunnel)</td>
    <td></td>
    <td colspan="2">HTTPS/CoAP(s)</td>
    <td colspan="2">Multi</td>
    <td></td>
  </tr>
  <tr>
    <td>Local Proxy</td>
    <td>Local Gateway</td>
    <td>Local Gateway</td>
    <td colspan="2"></td>
    <td></td>
    <td colspan="2">WoS Messaging Service, TD Registration Agent</td>
    <td></td>
    <td colspan="2">Local Proxy</td>
    <td colspan="2">Local gateway</td>
    <td></td>
  </tr>
  <tr>
    <td>=Protocol</td>
    <td>HTTP</td>
    <td>HTTP</td>
    <td>HTTPS (+ WSS)</td>
    <td>HTTP</td>
    <td></td>
    <td colspan="2">HTTP</td>
    <td>HTTP</td>
    <td colspan="2">CoAP</td>
    <td colspan="2">Multi</td>
    <td>HTTP</td>
  </tr>
  <tr>
    <td>Device</td>
    <td>Sensors(Luminance sensor, Humidity sensor, Temperature sensor, Accelerometer), Rotating Light</td>
    <td>Air conditioner, LED light, Blind</td>
    <td>LED light, Air conditioner (home/car), Robot Cleaner, Amazon Echo Dot, Google Home mini</td>
    <td>WoT Simulator</td>
    <td></td>
    <td colspan="2">Remote Festo Plant (valve, pump, levelmeter), BACnet Demonstrator, Logo! Demonstrator, RGB LED Light</td>
    <td>Sensors(Luminance sensor, Humidity sensor, Temperature sensor), Binary actuator</td>
    <td colspan="2">OCF RGB light, OCF Light, OCF Buzzer, OCF temperture, OCF Button, OCF Proximity, OCF Slider, Still camera</td>
    <td colspan="2">Dimmable Light(OCF), Motion Sensor(OCF), Dimmable Light(ST), Motion Sensor(ST), Gas Sensor(IPSO), PM2.5 Sensor(IPSO), Temperature Sensor(IPSO), Humidity Sensor(IPSO), Loudness Sensor(IPSO), Illuminance Sensor(IPSO), PIR Sensor(IPSO), Barometer Sensor(IPSO), OCF Bridge</td>
    <td>Sensors and Actuators in the car(BMW X5)</td>
  </tr>
</table>

Each description is shown below.

### 2.2.1 Application Servients

Panasonic:
 - Scripting App.: Panasonic demo applications.
 - NodeRED: would like to connect to the all servients.

### 2.2.2 Remote Proxy Servients

### 2.2.3 Local Proxy Servients

### 2.2.4 Device Servients

Panasonic:
 - LED light: on/off, RGB properties
 - Air conditioner (home): on/off, mode, temperature, wind level properties and events
 - Air conditioner (car): on/off, number properties
 - Robot Cleaner: on, turn left/right, go straight, go home, go area 1/2/3 actions
 - Amazon Echo Dot: "home"/"bye" property and event
 - Google Home mini: "home"/"bye" property and event, speech action
 - WoT Simulator: can simulate the WoT devices easily.

### 2.3 Servients from plugfest participants ( diagram )

TBD

# 3 Topics

Panasonic:
   - would like to test "observable" and "Event" interoperability using "HTTP Long polling" as a first step.

# 4 Plugfest scenarios

Examples of scenarii involving semantic querying:
- outlier detection: gather temperature data from different sources and compare them
- energy saving: turn heating off when a window opens in the same room
- meta-action: switch on a light either by changing its value or by invoking an action
- circle: all lamps in the same room sequentially switch off their nearest neighbor that is still on

# 5 Schedule

TBD
