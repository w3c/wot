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
- Close window blinds (Fujitu)
- Clean the room (Panasonic)
- Turn on a MQTT device (Siemens)
- Turn off the lights (Smart Things)
- Turn on a surveillance camera (Intel)
- Control other devices (Hitachi)

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
- Turn off all air conditioners (Panasonic)
- Flash the lights (Smart Things)
- Make voice announcements (Intel)
- Broadcast an alert message (Hitachi)

## Possible Future Scenarios: 
# Enterprise integration scenarios
Ex: Access control and security system
Ex: Energy management in a smart building/smart city
# Transportation scenarios
Ex: Fleet management
Ex: Shipping and inventory control (supply chain management)

