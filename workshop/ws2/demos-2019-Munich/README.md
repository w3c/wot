# WoT Workshop, June 3-5th, Siemens Munich
## W3C Web of Things Interoperability Demos



# Participating companies

NOTE: We should explicitly invite Mozilla.

| Company   | Things/Devices/System/Tools         | Infrastructure requirements, e.g. open ports, power sockets, Wifi | Comments           |
|-----------|-------------------------------------|-------------------------------------------------------------------|--------------------|
| Oracle    | IoT Cloud Service                   | Wifi                                                              | Application t.b.d. |
| Siemens   | Industry Automation                 | Wifi / Lan                                                        | Application t.b.d. |
| Siemens   | Building Automation                 | Wifi / Lan                                                        | Application t.b.d. |
| TU Munich | ...                                 | ...                                                               | ...                | 
| Intel     | OCF Bridge (1,4)                    | Wifi / Lan; ext ports 22, 8090, 8091, 8094, 8095; 1 power         | ...                |
| Intel     | Person Recognition (1,2,4)          | Wifi / Lan; ext ports 22, 8100, 8101                              | ...                |
| Intel     | OCF Smart Home Devices (3)          | Wifi / Lan; local network only (CoAP/UDP); 2 power                | ...                |
| Intel     | Web Camera (4)                      | Wifi / Lan; ext ports 22, 8098, 8099; 1 power                     | ...                |
| Intel     | Voice Output (Web Speak) (4)        | Wifi / Lan; ext ports 22, 8096, 8097; 1 power                     | ...                |
| Intel     | Solar Power System (5)              | Wifi / Lan; ext ports 22, 8102, 8103; window                      | ...                |
| Hitachi   | Cross-domain application development tool using Node-RED | Wifi                                                               | ...                |
| Fujitsu   | Remote and Local proxies (8)        | Wifi / Lan; 1 power                                               | Application t.b.d. |
| Fujitsu   | Cloud and endpoint devices (6)      | Wifi / Lan; 1 power                                               | Application t.b.d. |
| Panasonic | Smart home lab in Osaka (7)         | Wifi / Lan; ext ports 443, 8003, 8443                             | ...                |
| Panasonic | Bulletin Board in local (9)         | Wifi / Lan; ext ports 443, 8002, 8003, 8443; 2 power              | ...                |
| Panasonic | Online simulator (10)                | Wifi / Lan; ext ports 443, 3000-3011, 8003, 8443                  | ...                |
| Panasonic | Local simulator (11)                | Wifi / Lan; 1 power                                               | ...                |
| EcoG | Vehicle charging demo  (12)                | tbd                                         | ...                

## Notes
1. Services running on a single gateway
2. WIP. OpenVino service that can track multiple people, give bounding box.  Needs JPEG input image. 
3. Devices: 2 lights; 4 LEDs; 1 RGB Led; 2 push buttons; 2 PIR sensors; 2 temp sensors; 1 buzzer
4. Ports are negotiable... go through a proxy, so will try to converge these onto a single standard 443 (https) port
5. WIP. Solar charger, battery, and solar panel.  Needs to be near a window...
6. Devices: 1 rotating light, 1 sensor in local, 1 LED, 1 air conditioner, 1 blind in Smart home in Japan
7. Devices: [Air Conditioner](TDs/Panasonic/airConditioner_p1.jsonld), [Robotics Cleaner](TDs/Panasonic/cleaner_p1.jsonld), [Bulletin Board 1](TDs/Panasonic/electricBulletinBoard_p1.jsonld), [Bulletin Board 2](TDs/Panasonic/electricBulletinBoard_p2.jsonld), [Philips Hue lighting](TDs/Panasonic/huegroup_p1.jsonld)
8. Local proxy can connect members' devices and expose them as virtual devices.
9. Devices: [Bulletin Board 3](TDs/Panasonic/electricBulletinBoard_p3.jsonld)
10. Devices: [Air Conditioner](TDs/Panasonic/PanaSimAirConditioner5.jsonld), [Robotics Cleaner](TDs/Panasonic/PanaSimCleaner5.jsonld), [Philips Hue lighting](TDs/Panasonic/PanaSimHueGroup5.jsonld), [Room lighting](TDs/Panasonic/PanaSimRoomLight5.jsonld)
11. Devices: Air Conditioner, Robotics Cleaner, Philips Hue lighting, Room lighting, ... (more devices could be added to discuss about cross domain business models, use cases and scenarios.)



# Scenarios

The following scenarios demonstrate the interoperability of devices across different manufactuers.

## Home integration scenarios

Scenario: Automatically turn off devices when user leaves the room  

### Description:
An environment sensor is capable of identifying when a room is empty by measuring the oxygen level.
When the "room empty" condition is detected.
the room is cleaned by a vacuum cleaner,  lights are turned off, window blinds are closed and a surveillence camera is turned on.

### Device interactions

environment sensor - cloud service  
...

## Industrial integration scenarios

Scenario: Automatically alert and protect citizens when a chemical plant has an accident

### Description
An environment sensor is capable of measuring air quality by measuring the oxygen level.
When a low oxygen condition is detected by the Oracle IoT-Cloud Service Asset Monitoring application,
connected devices take the appropriate action to protect and alert citizens,
such as draining a tank in the factory, turning off all air-conditioners, flash alert and warning lights,
pubish alert messages and make voice announcements.

### Device interactions

environment sensor - cloud service  
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

## Additional Scenarios: 

### Enterprise integration scenarios
Ex: Asset management

### Transportation scenarios
Ex: Fleet management
Ex: Shipping and inventory control (supply chain management)


# Logistics

### TDs:
Please place all TDs into the TDs directory. 

### Tools:
Please place all tools into the tools directory. 


### Cloud:
* Oracle IoT Cloud Service Instance  
  Like in the previous plug fests there is an instance of the Oracle IoT Cloud Service available for interoperability tests.  
  It is shared among all plug fest participants, so please coordinate with Michael.Lagally@oracle.com if you have questions.  
  The management console is available at:
  \<t.b.d.\>  

  The instance is using the same password, as previously communicated to individual companies. Please let Michael.Lagally@oracle.com know if you require access.
  
* Oracle Digital Twin Simulator  
  There is an instance of the Oracle Digital Twin Simulator for plug fest participants. It hosts several simulations, such as a HVAC, Pump, Truck, Connected Car. Instances of simulated devices can be provided for plug fest participants on request.  
  Please let Michael.Lagally@oracle.com know if you require a simulated device instance.  
  The login page is at: \<t.b.d.\>
  

### Google Hangout:
   - Used to video stream remote devices such as Festo Live or Panasonic Lab
   - \<t.b.d.\>

# Documentation

* 
