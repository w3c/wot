# W3C TPAC - Sept 2019
## W3C Web of Things Interoperability Demos

## Preparation Wiki:
https://www.w3.org/WoT/IG/wiki/F2F_meeting,_16-20_September_2019,_Fukuoka,_Japan#Demo_preparation_.2814-15_or_16-17_Sep_2019.29

# Expected demo participants

Oracle, Intel, Siemens, Hitachi, Panasonic, Fujitsu, TU Munich, Smart Things, NHK

# Demo devices

| Company   | Things/Devices/System/Tools         | Infrastructure requirements, e.g. open ports, power sockets, Wifi | Comments           |Contact|
|-----------|-------------------------------------|-------------------------------------------------------------------|--------------------------|-------|
| Oracle    | IoT Cloud Service                   | Wifi                                                              |  | Michael.Lagally@oracle.com |
| Oracle    | HVAC Digital Twin Simulator | Wifi                                                              |   | Michael.Lagally@oracle.com |
| Oracle    | Blue-Pump Digital Twins Simulator | Wifi                                                              |   | Michael.Lagally@oracle.com |
| Oracle    | Festo Plant Digital Twin Simulator | Wifi                                                              |   | Michael.Lagally@oracle.com |
| Oracle    | Solar Panel Digital Twin Simulator | Wifi                                                              |   | Michael.Lagally@oracle.com |
| Siemens    | Charging-Integration Demo | Wifi                                                              |  Cloud Service / Application | Christian.Glomb@siemens.com |
| Panasonic | Smart home lab in Osaka ([Air Conditioner](TDs/Panasonic/airConditioner_p1.jsonld), [Robotics Cleaner](TDs/Panasonic/cleaner_p1.jsonld), [Bulletin Board 1](TDs/Panasonic/electricBulletinBoard_p1.jsonld), [Bulletin Board 2](TDs/Panasonic/electricBulletinBoard_p2.jsonld), [Philips Hue lighting](TDs/Panasonic/huegroup_p1.jsonld)) | Wifi / Lan; ext ports 443, 8003, 8443 | | yamada.takesi@jp.panasonic.com |
| Panasonic | Bulletin Board in local ([Bulletin Board 3](TDs/Panasonic/electricBulletinBoard_p3.jsonld)) | Wifi / Lan; ext ports 443, 8002, 8003, 8443; 2 power | | yamada.takesi@jp.panasonic.com |
| Panasonic | Online simulator ([Air Conditioner](TDs/Panasonic/PanaSimAirConditioner5.jsonld), [Robotics Cleaner](TDs/Panasonic/PanaSimCleaner5.jsonld), [Philips Hue lighting](TDs/Panasonic/PanaSimHueGroup5.jsonld), [Room lighting](TDs/Panasonic/PanaSimRoomLight5.jsonld)) | Wifi / Lan; ext ports 443, 3000-3011, 8003, 8443 | | yamada.takesi@jp.panasonic.com |
| Panasonic | Local simulator (Air Conditioner, Robotics Cleaner, Philips Hue lighting, Room lighting) | Wifi / Lan; 1 power | More devices could be added to discuss about cross domain business models, use cases and scenarios. | yamada.takesi@jp.panasonic.com |
| NHK    | Hybridcast-Application Demo | Wifi / LAN                                                          |   | endou.h-hc@nhk.or.jp |
| Fujitsu   | 2 Local proxies. One is in smart home in Japan, another is in Fukuoka. | Wifi / Lan; 1 power | ...  | suzuki.takahisa@fujitsu.com, r.matsukura@fujitsu.com |
| Fujitsu   | Remote proxy. Connect 2 Local proxies above. |  | ...  | suzuki.takahisa@fujitsu.com, r.matsukura@fujitsu.com |
| Fujitsu   | Local devices: Rotary beacom light, Buzzer, Environment sensors (Temperature, Humidity, Air pressure, Human detection, 3-axis acceleration, Brightness sensors), Agricuture sensor (Temperature, Humidity, Brightness, UV index, CO2), and Wearable sensor (Temperature, 3-axis acceleration, Brightness sensor).   |  | ...  | suzuki.takahisa@fujitsu.com, r.matsukura@fujitsu.com |
| Fujitsu   | Smart home devices (remote): Smart meter, LED light, Air conditioner, and Window blind Open, Close. |   | ...  | suzuki.takahisa@fujitsu.com, r.matsukura@fujitsu.com |
| TU Munich   | Sense HAT |   | Environments sensors, LED matrix and joystick  | ege.korkan@tum.de |
| TU Munich   | Light Sensor |   | Light sensor  | ege.korkan@tum.de |

# Demo Scenarios

The following scenarios demonstrate the interoperability of devices across different manufacturers.

## Smart Home demos

### Scenario: Automatically turn off devices when user leaves the room (Contact: Oracle)

#### Description:
An environment sensor is capable of identifying when a room is empty by measuring the oxygen level.
When the "room empty" condition is detected, the room is cleaned by a vacuum cleaner, lights are turned off, window blinds are closed and a surveillance camera is turned on.

#### Device interactions (Proposal)

* Environment sensor (Simulation?) (TUM has humidity, temperature, pressure sensors)
* Detect when room is empty and trigger the following actions (Oracle)
* Close window blinds (Fujitsu)
* Clean the room (Panasonic)
* Turn on an MQTT device (Siemens)
* Turn off the lights (Smart Things) (TUM)
* Turn on a surveillance camera (Intel)
...

### Smart Home Demo (Contact: Panasonic)
Home appliances communicate with the gateway using existing home protocol such as ECHONET Lite, OCF, etc. and provide functions through the WoT API.

#### Device interactions (Proposal)
* Say "I'm home"/"Bye" to Google Home (Panasonic)
then
* Turn on/off home appliances in the smart home lab at Osaka Japan (Panasonic)
* Turn on/off bulletin board in Munich (Panasonic)
* Turn on/off buzzer (Fujitsu)
* Turn on/off Intel-OCF-LED (Intel)
* Turn on/off Blue Pump (Oracle)
* Turn on/off DotStar and HUE Lights (TUM)

### Private smart home demo (Contact: Mozilla)

#### Description:
Mozilla's [WebThings Gateway](https://iot.mozilla.org/gateway) will run on the local Wi-Fi network and also be exposed to the Internet via a secure tunelling service.
Example commercial smart home devices from different vendors using different smart home protocols will be monitored, controlled and automated via a single web UI (hosted by the gateway) that can be
interacted with via a browser, or by third party apps and services using the [Web Thing API](https://iot.mozilla.org/wot/) and OAuth.
Example Maker/developer boards programmed as [web things](https://iot.mozilla.org/framework) which directly expose the Web Thing API will also operate on the local Wi-Fi network, and be managed by the gateway.


## Industrial integration scenarios

### Scenario Automatically alert and protect citizens when a chemical plant has an accident (Contact: Oracle)

#### Description
An environment sensor is capable of measuring air quality by measuring the oxygen level.
During an industrial process, when a low oxygen condition is detected by the
Oracle IoT-Cloud Service Asset Monitoring application, connected devices take
the appropriate action to protect and alert citizens, such as draining a tank
in the factory, turning off all air-conditioners, flash alert and warning lights,
publish alert messages and make voice announcements.

#### Device interactions (Proposal)

* (Initially) A robot arm is doing an operation continuously
* Environment sensor monitors air quality.
* Cloud service discovers anomaly, critical condition and triggers the following actions (Oracle)
* Drain the tank in a chemical factory (Siemens)
* Flash a warning light (Fujitsu)
* Turn off all air conditioners (Panasonic)
* Bring the robot arm to a safe position (TUM)
* Flash the lights (Smart Things)
* Make voice announcements (Intel)
...



## Smart Building, Smart City

### Energy management for commercial buildings (Contact: Siemens)

#### Description
Reduce load charge power to stay under the peak power you get from the grid.
AC condition is monitored, charge power is reduced, if AC is on.

#### Devices:
* Grid Simulation (Siemens)
* monitoring ECoG Charger, indicating power consumption, start charging (EcoG)
* Simulated Building management system (Siemens)
* Air conditioner (t.b.d.)

### Charging demo (Contact: Siemens)
EcoG + Siemens + Panasonic

#### Description:
Charging of a vehicle dependent on the energy consumption.


### Enhancing power efficiency for smart home (Contact: Fujitsu)
Monitors power consumption and detects exceed the limit, stops some appliances to reduce the consumption.

#### Device interactions (Proposal)
* Smart meter monitors power consumption (Fujitsu)
* Turn on an air conditioner (Fujitsu)
* Turn on another air conditioner (Panasonic)
* EcoG stops charging (EcoG)
* Storage battery start discharging (Fujitsu)
* Smart home application monitors and controls these devices.


# TPAC session plan

Not yet available -
https://www.w3.org/wiki/TPAC/2019/SessionIdeas contains old info

# Logistics + Constraints:

## Demo opportunities:

### Developer meetup
This time it requires sponsoring: 
https://www.w3.org/2019/09/Meetup/


### breakout session

### "after lunch" slot

## Two different configurations:

### Demo room
1st hour after lunch we have a dedicated demo room

### Focused demo for breakout-session
2nd hour there's only one table for WoT - need a poster

#### Goal: Demonstrate Interoperability among WoT WG members

Wifi should be available, open ports ?

## Posters
