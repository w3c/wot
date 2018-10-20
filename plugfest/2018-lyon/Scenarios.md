# Scenarios

The following scenarios validate the interoperability of devices across different manufactuers.

Note: we may want to define some smaller, simpler scenarios for testing; but we also need a "meaty" scenario for demonstration
purposes at TPAC.

## Home integration scenarios

### Scenario 1: Automatically turn off devices when user leaves the room  

#### Description
The KETI environment sensor is capable of identifying when a room is empty by measuring the oxygen level.
When the "room empty" condition is detected by the Oracle IoT-Cloud Service Asset Monitoring application,
the room is cleaned by a vacuum cleaner, the lights are turned off, window blinds are closed and
a survceillence camera is turned on.

#### Device interactions
- Monitor room occupancy (KETI Sensor)  
- Detect when room is empty and trigger the following actions (Oracle)
- Close window blinds (Fujitsu)
- Clean the room (Panasonic)
- Turn off the lights (Panasonic)

![Home_Scenario](images/Home_Scenario.png)

#### Environment
KETI environment sensor connected to the Oracle IOT Cloud Service via client library, Oracle Asset Monitoring application running on the IOT Cloud Service, node-WoT + Oracle binding running bridge servients for devices.

### Scenario 2: Detections and actuations in the home

#### Description
There are some sensors and actuators in the home. If a sensor detects changes in the home such as brightness, 
the smart home application controls some home appliances such as room light. In this demonstration, when the application
turns on the room light, the illumination sensor detects when the room becomes bright and another room light is turned on.
As as a result, the illumination sensor in this room detects to become bright and the light in the third room is turned on.
This application monitors some sensors in the same time and controls the light correspoinding to the sensor.<br>
In this demonstration, all sensors and lights are connected to the local proxies the cloud application control 
these devices using the remote proxy.

#### Device interactions
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

### Scenario 1: Automatically alert and protect citizens when a chemical plant has an accident

#### Description
The KETI environment sensor is capable of measuring air quality by measuring the oxygen level.
When a low oxygen condition is detected by the Oracle IoT-Cloud Service Asset Monitoring application,
connected devices take the appropriate action to protect and alert citizens,
such as draining a tank in the factory, turning off all air-conditioners, flash alert and warning lights,
pubish alert messages and make voice announcements.

#### Device interactions
- Monitor environment condition in multiple locations (KETI-sensors)
- Discover anomaly, critical condition and trigger the following actions (Oracle)
- Drain the tank in a chemical factory (Siemens)
- Flash a warning light (Fujitsu)
- Change light color depending on tank level (Intel)
- Turn off all air conditioners (Panasonic)
- Make voice announcement (Intel)

#### Environment
KETI environment sensor connected to the Oracle IOT Cloud Service via client library, Oracle Asset Monitoring application running on the IOT Cloud Service, node-WoT + Oracle binding running bridge servients for devices.

![Industrial_Scenario](images/Industrial_Scenario.png)



## Possible Future Scenarios: 
# Enterprise integration scenarios
Ex: Access control and security system
Ex: Energy management in a smart building/smart city
# Transportation scenarios
Ex: Fleet management
Ex: Shipping and inventory control (supply chain management)

