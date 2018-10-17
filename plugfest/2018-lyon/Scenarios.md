# Scenarios

The following scenarios validate the interoperability of devices across different manufactuers.

Note: we may want to define some smaller, simpler scenarios for testing; but we also need a "meaty" scenario for demonstration
purposes at TPAC.

## Home integration scenarios

Scenario 1: Automatically turn off devices when user leaves the room  

### Description:
The KETI environment sensor is capable of identifying when a room is empty by measuring the oxygen level.
When the "room empty" condition is detected by the Oracle IoT-Cloud Service Asset Monitoring application,
the room is cleaned by a vacuum cleaner, the lights are turned off, window blinds are closed and
a survceillence camera is turned on.

### Device interactions
- Monitor room occupancy (KETI Sensor)  
- Detect when room is empty and trigger the following actions (Oracle)
- Close window blinds (Fujitsu)
- Clean the room (Panasonic)
- Turn off the lights (Panasonic)

![Home_Scenario](images/Home_Scenario.png)



Scenario 2: Detections and actuations in the home (inserted by Fujitsu)

### Description:
There are some sensors and actuators in the home. If a sensor detects changes in the home such as brightness, 
the smart home application controls some home appliances such as room light. In this demonstration, when the application
turns on the room light, the illumination sensor detects when the room becomes bright and another room light is turned on.
As as a result, the illumination sensor in this room detects to become bright and the light in the third room is turned on.
This application monitors some sensors in the same time and controls the light correspoinding to the sensor.<br>
In this demonstration, all sensors and lights are connected to the local proxies the cloud application control 
these devices using the remote proxy.

### Device interactions
- Turn on the room light (Fujitsu)
- Detect when the room becomes bright (Fujitsu)
- Turn on the light (Intel)
- Detect when the room becomes bright (Intel)
- Turn on the light (SmartThings)
- Detect when the room becomes bright (SmartThings)
- Turn off the room light (Fujitsu)
- Detect when the room becomes dark (Fujitsu)
- Turn off the room light (Intel)
- Detect when the room becomes dark (Intel)
- Turn off the room light (SmartThings)
- Detect when the room becomes darks (SmartThings)
- Turn off the room light (Fujitsu)

## Industrial integration scenarios

Scenario 1: Automatically alert and protect citizens when a chemical plant has an accident

### Description
The KETI environment sensor is capable of measuring air quality by measuring the oxygen level.
When a low oxygen condition is detected by the Oracle IoT-Cloud Service Asset Monitoring application,
connected devices take the appropriate action to protect and alert citizens,
such as draining a tank in the factory, turning off all air-conditioners, flash alert and warning lights,
pubish alert messages and make voice announcements.

### Device interactions
- Monitor environment condition in multiple locations (KETI-sensors)
- Discover anomaly, critical condition and trigger the following actions (Oracle)
- Drain the tank in a chemical factory (Siemens)
- Flash a warning light (Fujitsu)
- Change light color depending on tank level (Intel)
- Turn off all air conditioners (Panasonic)
- Make voice announcement (Intel)

![Industrial_Scenario](images/Industrial_Scenario.png)

## Proxy integration scenarios (Fujitsu)

Scenario 1: Home sensors and appliances integrated with proxies

### Description:
Fujitsu will provide 2 local proxies and 1 remote proxy Servient. One local proxy is in the smart home in Japan and 
connected with some sensors and appliacnces. Another local proxy is in the Lyon and can be connected with 
the participants home devices. The remote proxy Servient is connected with these 2 local proxy and provide WoT interface
to control the devices connected with these 2 local proxies.
In this scenario, the application connected to the remote proxy can monitor the sensors in the smart home and 
detect when something changes with the sensors. These changes make one or more operations to the appliances.

### Device interactions
- Turn on the room light (Fujitsu)
- Detect when the room becomes bright (Fujitsu)
- Close the window blind (Fujitsu)
- Turn on the air conditioner (Fujitsu)
- Detect when the sensors in the room change (???)
- Trun on something (???)

We hope this sequence of device interactions is made longer. Please add your device interactions to this.

Scenario 2: Industrial sensors and facilities integrated with proxies

### Description

### Device interactions
- Detect when the dust in the room increases (Fujitsu)
- Turn on the rotating light (Fujitsu)
- Detect when some sensors change (???)
- Turn on something (???)

## Possible Future Scenarios: 
# Enterprise integration scenarios
Ex: Access control and security system
Ex: Energy management in a smart building/smart city
# Transportation scenarios
Ex: Fleet management
Ex: Shipping and inventory control (supply chain management)

