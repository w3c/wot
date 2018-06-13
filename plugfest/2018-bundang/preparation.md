# PlugFest Preparation for Bundang F2F 2018

# 1. Introduction

This document describes a general information related to the next plugfest in Bundang F2F meeting. 
The rest of this section shows the results of the last plugfest held in Prague on March 24-25.

## 1.1 Last pluegfest

The following figure is the result of Prague plugfest.

![prague plugfest](images/prague_result.png)

## 1.2 Participants and Servients

THe following is list of participants and servients described in "preparation.md" of Prague plugfest.

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
    <th rowspan="2">Panasonic</th>
    <td>NodeRED</td>
    <td rowspan="2"></td>
    <td rowspan="2"></td>
    <td rowspan="2"></td>
    <td rowspan="2"></td>
    <td>HTTP</td>
    <td>WoT Simulator, Google Home mini</td>
  </tr>
  <tr>
    <td>Scripting App.</td>
    <td>HTTPS(+WSS)</td>
    <td>LED light, Air conditioner (home/car), Robot Cleaner, Amazon Echo Dot, Google Home mini</td>
  </tr>
  <tr>
    <th>Internet Reserach Institute</th>
    <td>NodeRED</td>
    <td>HTTP(s)</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <th rowspan="2">Siemens</th>
    <td>Scripting App.</td>
    <td>HTTP, CoAP, BACnet, Modbus</td>
    <td rowspan="2">WoS Messaging Service</td>
    <td rowspan="2">(tunnel)</td>
    <td rowspan="2">WoS Messaging Service, TD Registration Agent</td>
    <td rowspan="2">HTTP</td>
    <td rowspan="2">Remote Festo Plant (valve, pump, levelmeter), BACnet Demonstrator, Logo! Demonstrator, RGB LED Light</td>
  </tr>
  <tr>
    <td>WebUI</td>
    <td>HTTP, CoAP</td>
  </tr>
  <tr>
    <th rowspan="2">Intel</th>
    <td>AWS WoT Skill</td>
    <td rowspan="2">HTTPS</td>
    <td rowspan="2">Cloud proxy shadow</td>
    <td rowspan="2">HTTPS/CoAP(s)</td>
    <td rowspan="2">Local Proxy</td>
    <td rowspan="2">CoAP</td>
    <td rowspan="2">OCF RGB light, OCF Light, OCF Buzzer, OCF temperture, OCF Button, OCF Proximity, OCF Slider, Still camera</td>
  </tr>
  <tr>
    <td>AlexNet Recog Service</td>
  </tr>
  <tr>
    <th rowspan="2">SmartThings</th>
    <td>NodeRED Local</td>
    <td rowspan="2">HTTP</td>
    <td rowspan="2">Remote gateway</td>
    <td rowspan="2">HTTP+MQTT</td>
    <td rowspan="2">Local gateway</td>
    <td rowspan="2">HTTP+MQTT</td>
    <td rowspan="2">Dimmable Light(ST), Motion Sensor(IPSO), Loudness Sensor(IPSO), Illuminance Sensor(IPSO)</td>
  </tr>
  <tr>
    <td>NodeRED Remote</td>
  </tr>
  <tr>
    <th>EURECOM</th>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td>HTTP</td>
    <td>Sensors and Actuators in the car(BMW X5)</td>
  </tr>
</table>


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

## 2.2 Issues

Please describe you issues on the next plugfest.


# 3 Schedule

Sat 30.6.18:  9:00-18:00  
Sun 1.7.18:  9:00-18:00  

Venue: TTA

# 4 Requirements for PlugFest Setting

| Participant | Number of Participants | Number of Power outlets | Network | Remarks |
|-------------|------------------------|-------------------------|---------|---------|
| Panasonic   | 3                      | 2                       | Wi-Fi(b/g/n), Ports: 22, 80, 443, 1880, 8001, 8003, 8091 | |
| Fujitsu     | 4                      | 2                       | Wi-Fi   |         |
| IRI         |                        |                         | Wi-Fi   |         |
| Siemens     | 4+(1)                  | 2                       | Wi-Fi   |         |
| Intel       | 1                      | 1                       | Wi-Fi and/or wired Ethernet | External ports: 22, 80, 443. Will bring own router and power bar.   |
| SmartThings | 1                      | 1                       | Wired   | 4sq ft table space |
| EURECOM     | 2                      | 2                       | Wi-Fi   |         |
| Oracle      | 1                      | 1                       | Wi-Fi   |         |
| Hitachi     | 1                      | 1                       | Wi-Fi(Ports: 443/tcp,443/udp(optional))   | use for note PC to access corporate servers via VPN. |
| Paciello    | 1                      | 1                       | Wi-Fi   |Will only need power outlet for laptop. Won't be bringing additional equipment.|
| Others      |                        |                         | Wi-Fi   |         |

# 5 Implementation guidelines

* "name" field of Thing Description shall be unique among the things which will be registered to Fujitsu Proxy.  
  Recommended convention is 'Company name'+'Thing name'  
  e.g.) "name": "PanasonicAirConditionerP1"
