# WoT Workshop, June 3-5th, Siemens Munich
## W3C Web of Things Interoperability Demos

# Locations:

## Friday: Siemens (8am - 5pm)
https://www.w3.org/WoT/ws-2019/cfp.html#location

Point of contact: Sebastian is available via mobile phone

##  Sat-Sunday: TU Munich (9am - 11pm)
https://www.w3.org/WoT/IG/wiki/F2F_meeting,_6-7_June_2019,_Munich,_Germany#Venue

Point of contact: Ege.Korkan@tum.de
Phone# +49 176 3012 69 42

## Monday: Siemens (8am - 6pm)
https://www.w3.org/WoT/ws-2019/cfp.html#location

## Tuesday-Wednesday: Siemens (8am - 6pm)
https://www.w3.org/WoT/ws-2019/cfp.html#location

## Posters

A template example is available at: https://github.com/w3c/wot/blob/master/workshop/ws2/demos-2019-Munich/Poster/Session_3_Demo_Template.pptx

The print out format will be DIN A0. (841×1189mm)
Posters will be put up on flexible walls.

Please provide your demo poster until May 28th.

# Participating companies

| Company   | Things/Devices/System/Tools         | Infrastructure requirements, e.g. open ports, power sockets, Wifi | Comments           |Contact|Fri|Sat|Sun|Mon|Tues|Wed|
|-----------|-------------------------------------|-------------------------------------------------------------------|--------------------------|-------|---|---|---|---|----|---|
| Oracle    | IoT Cloud Service                   | Wifi                                                              | Home Scenario, Industrial Scenario | Michael.Lagally@oracle.com | ? | ? | + | + | + | + |
| Oracle    | Digital Twins / Simulators: [Blue_Pump_Shared](TDs/Oracle/Blue_Pump_Shared.jsonld), [Connected_Car_Shared](TDs/Oracle/Connected_Car_Shared.jsonld), [Festo_Shared](TDs/Oracle/Festo_Shared.jsonld), [HVAC_Shared](TDs/Oracle/HVAC_Shared.jsonld), [Truck_Shared](TDs/Oracle/Truck_Shared.jsonld) | Wifi                                                              | Shared devices for other WG Application scenarios  | Michael.Lagally@oracle.com | ? | ? | + | + | + | + |
| Oracle    | IoT Cloud Service                   | Wifi                                                              | Application t.b.d. | Michael.Lagally@oracle.com | ? | ? | + | + | + | + |
| Siemens   | Industry Automation                 | Wifi / Lan    | Application t.b.d. | @sebastiankb | + | ? | ? | + | + | + |
| Siemens   | Building Automation                 | Wifi / Lan    | Application t.b.d. | @sebastiankb | + | ? | ? | + | + | + |
| TU Munich | 2x [MeArm Robotic Arms](TDs/TUM/MeArmPi_104.json)  | Wifi / Lan  | Mechanically not reliable                | ege.korkan@tum.de | ? | + | + | + | + | + |
| TU Munich | 3x [Texas Instruments Bluetooth Sensors](TDs/TUM/sensorTAG0.json) | Wifi / Lan  | Bridged via HTTP and CoAP via 1x Raspberry Pi | ege.korkan@tum.de | ? | + | + | + | + | + |
| TU Munich | 3x Philips HUE [Lights](TDs/TUM/lightTD1.json) and 1 [Controller](TDs/TUM/dimmerSwitchTD.json)  | Wifi / Lan    | ... | ege.korkan@tum.de | ? | + | + | + | + | + |
| TU Munich | 1x [LED Strip with individually controlloble LEDs](TDs/TUM/DotStar_103.json) | Wifi / Lan  | ... | ege.korkan@tum.de | ? | + | + | + | + | + |
| TU Munich | 2x [Sense HAT](TDs/TUM/SenseHat_106.json) (LED Matrix and sensors)  | Wifi / Lan   | ... | ege.korkan@tum.de | ? | + | + | + | + | + |
| TU Munich | 2x [Cameras](TDs/TUM/piCamera_108.json)    | Wifi / Lan  | Can only take pictures but adjustable exposure | ege.korkan@tum.de | ? | + | + | + | + | + |
| TU Munich | 2x [ESP 8266 Light Sensors](TDs/TUM/light_sensor_101.json)   | Wifi / Lan  | Cannot have hostname | ege.korkan@tum.de | ? | + | + | + | + | + |
| Intel     | OCF Bridge (1,4)                    | Wifi / Lan; ext ports 22, 8090, 8091, 8094, 8095; 1 power         | ...                |michael.mccool@intel.com| - | - | - | + | + | + |
| Intel     | WIP: Person Recognition (1,2,4)          | Wifi / Lan; ext ports 22, 8100, 8101                              | ...                |michael.mccool@intel.com| - | - | - | + | + | + |
| Intel     | OCF Smart Home Devices (3)          | Wifi / Lan; local network only (CoAP/UDP); 2 power                | ...                |michael.mccool@intel.com| - | - | - | + | + | + |
| Intel     | Web Camera (4)                      | Wifi / Lan; ext ports 22, 8098, 8099; 1 power                     | ...                |michael.mccool@intel.com| - | - | - | + | + | + |
| Intel     | Voice Output (Web Speak) (4)        | Wifi / Lan; ext ports 22, 8096, 8097; 1 power                     | ...                |michael.mccool@intel.com| - | - | - | + | + | + |
| Intel     | WIP: Solar Power System (5)              | Wifi / Lan; ext ports 22, 8102, 8103; window                      | ...                |michael.mccool@intel.com| - | - | - | + | + | + |
| Hitachi   | Cross-domain application development tool using Node-RED | Wifi                                                               | ...                |kunihiko.toumura.yv@hitachi.com| - | + | + | + | + | + |
| Fujitsu   | 2 Local proxies. One is in smart home in Japan, another in Munich (6) |  Wifi / Lan; 1 power                                              | ...  | suzuki.takahisa@fujitsu.com, r.matsukura@fujitsu.com | - | - | + | + | + | + |
| Fujitsu   | Remote proxy. Connect 2 Local proxies above. (7) |                                                                   | ...  | suzuki.takahisa@fujitsu.com, r.matsukura@fujitsu.com | - | - | + | + | + | + |
| Fujitsu   | Local devices: [Rotary beacom light](TDs/Fujitsu/Fujitsu-Rotarybeaconlight.json), [Buzzer](TDs/Fujitsu/Fujitsu-Buzzerjson), [Environment sensors](TDs/Fujitsu/Fujitsu-WiFiSensor.json) (Temperature, Humidity, Air pressure, Human detection, 3-axis acceleration, Brightness sensors), [Agricuture sensor](TDs/Fujitsu/Fujitsu-AgriDevice.json) (Temperature, Humidity, Brightness, UV index, CO2), and [Wearable sensor](TDs/Fujitsu/Fujitsu-CHLOG.json) (Temperature, 3-axis acceleration, Brightness sensor).   |                                                                   | ...  | suzuki.takahisa@fujitsu.com, r.matsukura@fujitsu.com | - | - | + | + | + | + |
| Fujitsu   | Smart home devices: [Smart meter](TDs/Fujitsu/Fujitsu-PowerMeter.json), [LED light](TDs/Fujitsu/Fujitsu-LEDLight.json), [Air conditioner](TDs/Fujitsu/Fujitsu-Airconditioner.json), and Window blind [Open](TDs/Fujitsu/Fujitsu-BlindOpen.json), [Close](TDs/Fujitsu/Fujitsu-BlindClose.json).                 |                                                     | ...  | suzuki.takahisa@fujitsu.com, r.matsukura@fujitsu.com | - | - | + | + | + | + |
| Panasonic | Smart home lab in Osaka ([Air Conditioner](TDs/Panasonic/airConditioner_p1.jsonld), [Robotics Cleaner](TDs/Panasonic/cleaner_p1.jsonld), [Bulletin Board 1](TDs/Panasonic/electricBulletinBoard_p1.jsonld), [Bulletin Board 2](TDs/Panasonic/electricBulletinBoard_p2.jsonld), [Philips Hue lighting](TDs/Panasonic/huegroup_p1.jsonld))         | Wifi / Lan; ext ports 443, 8003, 8443                             | ...                |Takeshi Yamada (@yamagile)|-|-|+|+|+|+|
| Panasonic | Bulletin Board in local ([Bulletin Board 3](TDs/Panasonic/electricBulletinBoard_p3.jsonld))         | Wifi / Lan; ext ports 443, 8002, 8003, 8443; 2 power              | ...                |Takeshi Yamada (@yamagile)|-|-|+|+|+|+|
| Panasonic | Online simulator ([Air Conditioner](TDs/Panasonic/PanaSimAirConditioner5.jsonld), [Robotics Cleaner](TDs/Panasonic/PanaSimCleaner5.jsonld), [Philips Hue lighting](TDs/Panasonic/PanaSimHueGroup5.jsonld), [Room lighting](TDs/Panasonic/PanaSimRoomLight5.jsonld))                | Wifi / Lan; ext ports 443, 3000-3011, 8003, 8443                  | ...                |Takeshi Yamada (@yamagile)|-|-|+|+|+|+|
| Panasonic | Local simulator (Air Conditioner, Robotics Cleaner, Philips Hue lighting, Room lighting)                | Wifi / Lan; 1 power                                               | More devices could be added to discuss about cross domain business models, use cases and scenarios. |Takeshi Yamada (@yamagile)|-|-|+|+|+|+|
| EcoG, Siemens | Demo integrating vehicle charging, energy automation, building management  (14)                | Wifi / Lan; ext. 80, 8080, 443                                         | based on node-wot               
| FAU Erlangen-Nürnberg | BLE beacons, receiver   | Wifi; 1 power                                                     | indoor positioning
| University of Southampton | integrates Ikea and tp-link devices   | Wifi; 1 power  | Servient and Client  | email@danmharris.com | - | - | - | - | + | + |
| BMW | Connected Vehicle  demo  (15)                | tbd                                         | ...   |  | ? | + | + | +  | + |            
| Mozilla    | Mozilla WebThings Gateway with smart home devices  | Wi-Fi / LAN, outgoing port 8443, need power                                                              | iot.mozilla.org | kgiori@mozilla.com, bfrancis@mozilla.com | - | - | - | + | + | + |
| W3C/ERCIM    | Healthcare demo | | | Dave Raggett
| ecl@ss   | Dynamic eCl@ss demo | Lan | https://www.eclass.eu/ | tbd 



## Notes
* Wifi Router from Smartthings / Matthias should be available <Set up at Siemens on Friday, Bring to TUM on Saturday/Sunday, back to Siemens on Monday - Owner: Sebastian>
* TUM has an open network for local demos with same name as the usual router. Also a wireless AP with support for 200+ clients is available in case of WiFi saturation when visitors want to connect via their phones etc.
* For TUM devices, there is a Postman collection under [Collateral](Collateral/TUM/WoT-sys.postman_collection.json). You can simply import it in Postman to avoid typing requests.
* Credentials for Router need to be communicated via email to the members list, <todo: add a link here>

The following notes relate to the numbers in the table above.

1. Services running on a single gateway
2. WIP. OpenVino service that can track multiple people, give bounding box.  Needs JPEG input image.
3. Devices: 2 lights; 4 LEDs; 1 RGB Led; 2 push buttons; 2 PIR sensors; 2 temp sensors; 1 buzzer
4. Ports are negotiable... go through a proxy, so will try to converge these onto a single standard 443 (https) port
5. WIP. Solar charger, battery, and solar panel.  Needs to be near a window...
6. Local proxy can connect participants' devices and expose them as virtual devices.
7. Remote proxy (cloud) can expose devcies that are connected to our local proxies (both of in Munich and Japan).
8. (removed)
9. (removed)
10. (removed)
11. (removed)
12. (removed)
13. (removed)
14. Devices: EV charger controller, microgrid controller, northbound interface for others to connect



# Scenarios

The following scenarios demonstrate the interoperability of devices across different manufacturers.

## Home integration scenarios

Scenario: Automatically turn off devices when user leaves the room  

### Description:
An environment sensor is capable of identifying when a room is empty by measuring the oxygen level.
When the "room empty" condition is detected, the room is cleaned by a vacuum cleaner, lights are turned off, window blinds are closed and a surveillance camera is turned on.

### Device interactions (Proposal)

* Environment sensor (Simulation?) (TUM has humidity, temperature, pressure sensors)
* Detect when room is empty and trigger the following actions (Oracle)
* Close window blinds (Fujitsu)
* Clean the room (Panasonic)
* Turn on an MQTT device (Siemens)
* Turn off the lights (Smart Things) (TUM)
* Turn on a surveillance camera (Intel)
...

## Industrial integration scenarios

Scenario: Automatically alert and protect citizens when a chemical plant has an accident

### Description
An environment sensor is capable of measuring air quality by measuring the oxygen level.
During an industrial process, when a low oxygen condition is detected by the
Oracle IoT-Cloud Service Asset Monitoring application, connected devices take
the appropriate action to protect and alert citizens, such as draining a tank
in the factory, turning off all air-conditioners, flash alert and warning lights,
publish alert messages and make voice announcements.

### Device interactions (Proposal)

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

## Energy management in a smart building/smart city/smart home

Scenario: A charge controller for a battery connected to a solar panel monitors battery state
and takes various actions based on the state of the battery and current and predicted solar
input.

### Description
If the battery charge state is below a threshold (say, 50%), then load shedding is attempted
by putting registered devices into an "eco" mode; for example, lights can be run at 60% brightness,
air conditioner or heating setpoints can be modified by a few degrees,
and other optional scheduled services, such as robot vacuuming, can be deferred.
In addition, in order to prolong battery life predictive charging is used: if the
weather report for the location of the solar panel indicates that for the rest of the day
and tomorrow will be sunny, then charging is halted at the 85% charging state.
Various status information about the system can also be displayed via monitoring devices,
such as an RGB LED indicating battery charge state, and other LEDs indicating
charging status and load-shedding modes.

Note: This could be elaborated further for a system that feeds into or can draw from the grid.  
For example, the system could wait to feed energy into the grid until the selling price is
optimal (based on machine learning...),
or could charge the battery from the grid based on another set of rules, e.g. to keep
the battery above 40% discharge state.

However, for simplicity, this describes an off-grid system.

An additional interesting issue this scenario raises is how "eco" mode is determined.
Ideally each device would provide a simple boolean control to turn this on and off
and would then determine internally how to save power.

## Energy management for commercial buildings

Reduce load charge power to stay under the peak power you get from the grid.
AC condition is monitored, charge power is reduced, if AC is on.

### Devices:
* Grid Simulation (Siemens)
* monitoring ECoG Charger, indicating power consumption, start charging (EcoG)
* Simulated Building management system (Siemens)
* Air conditioner (t.b.d.)


## Security Alert using person detection (industrial)

Scenario: Alert is raised when a person is detected entering a forbidden
region.  Other motion not due to a person (eg automation) is ignored.

### Description
A detection event from a PIR sensor triggers an application servient which
grabs an image from a camera and sends it to a person recognition service.
If the bounding box for any detected person returned from the person recognition
service is inside the forbidden zone,
an alert is raised (both a network event and some immediate indication
is given, such as a flashing light).
The person identification service is used to avoid false positives due to other
motion in the view of the camera.

## Charging demo
EcoG + Siemens + Panasonic

### Description:
Charging of a vehicle dependent on the energy consumption.

## Private smart home demo
Mozilla

### Description:
Mozilla's [WebThings Gateway](https://iot.mozilla.org/gateway) will run on the local Wi-Fi network and also be exposed to the Internet via a secure tunelling service.
Example commercial smart home devices from different vendors using different smart home protocols will be monitored, controlled and automated via a single web UI (hosted by the gateway) that can be
interacted with via a browser, or by third party apps and services using the [Web Thing API](https://iot.mozilla.org/wot/) and OAuth.
Example Maker/developer boards programmed as [web things](https://iot.mozilla.org/framework) which directly expose the Web Thing API will also operate on the local Wi-Fi network, and be managed by the gateway.

## Enhancing power efficiency for smart home
Monitors power consumption and detects exceed the limit, stops some appliances to reduce the consumption.

### Device interactions (Proposal)
* Smart meter monitors power consumption (Fujitsu)
* Turn on an air conditioner (Fujitsu)
* Turn on another air conditioner (Panasonic)
* EcoG stops charging (EcoG)
* Storage battery start discharging (Fujitsu)
* Smart home application monitors and controls these devices.

## Smart Home Demo
Home appliances communicate with the gateway using existing home protocol such as ECHONET Lite, OCF, etc. and provide functions through the WoT API.

### Device interactions (Proposal)
* Say "I'm home"/"Bye" to Google Home (Panasonic)
then
* Turn on/off home appliances in the smart home lab at Osaka Japan (Panasonic)
* Turn on/off bulletin board in Munich (Panasonic)
* Turn on/off buzzer (Fujitsu)
* Turn on/off Intel-OCF-LED (Intel)
* Turn on/off Blue Pump (Oracle)
* Turn on/off DotStar and HUE Lights (TUM)

## Additional Scenarios: 

### Enterprise integration scenarios
Ex: Asset management

### Transportation scenarios
Ex: Fleet management
Ex: Shipping and inventory control (supply chain management)

# Logistics

* A dry-run in an online-plugfest is planned for Tuesday 28th, 1pm CEST-4pm, 8pm JST-11pm JST with Webex / Google Hangouts etc.

## Wifi access:
Siemens provides a router for the entire event, i.e. from Friday, May 31 to Wednesday, June 5th.
tbd: Sebastian: add credentials and SSID here

### TDs:
Please place all TDs into the [TDs](TDs) directory.
TDs should implement the CR spec version.
Please put all TD drafts already into the TD directory, please validate your TD using the playground at:
http://plugfest.thingweb.io/playground/.

### Tools:
Please place all tools into the [tools](tools) directory.


### Cloud:
* Oracle IoT Cloud Service Instance  
  Like in the previous plug fests there is an instance of the Oracle IoT Cloud Service available for interoperability tests.  
  It is shared among all plug fest participants, so please coordinate with Michael.Lagally@oracle.com if you have questions.  
  The management console is available at:
  https://iotpoc8.oracleiotcloud.com/ui  

  The instance is using the same password, as previously communicated to individual companies. Please let Michael.Lagally@oracle.com know if you require access.

* Oracle Digital Twin Simulator  
  There is an instance of the Oracle Digital Twin Simulator for plug fest participants. It hosts several simulations, such as a HVAC, Pump, Truck, Connected Car. Instances of simulated devices can be provided for plug fest participants on request.  
  Please let Michael.Lagally@oracle.com know if you require a simulated device instance.  
  The login page is at: https://iotpoc8.oracleiotcloud.com/ds

* Mozilla WebThings Test Instance

  Mozilla hosts an instance of the WebThings Gateway software in the cloud at https://w3c-interop.mozilla-iot.org/things (**Email:** iot@mozilla.com **Password:** AreWeInter-opYet?).

  Further instructions on how to use this test instance can be found [here](https://github.com/mozilla-iot/wiki/wiki/Test-Gateway-Instance).


### Google Hangout:
   - Used to video stream remote devices such as Festo Live or Panasonic Lab
   - https://hangouts.google.com/call/Gbgym9gd5j4OUEppg5VJAEEE

# Documentation
For information about previous test fests see: https://github.com/w3c/wot/tree/master/testfest/2018-12-online

# Room setup and logistics:

1 Table per scenario (?),  , ... are possible
