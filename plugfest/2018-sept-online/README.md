# Goals

## Target Features
* Security
   - all devices should support secure access
   - test more schemes, including for CoAP and MQTT
   - definitions
* Event subscription and cancellation
   - input and output data
* Action and event descriptions

## Out of Scope Features (Defer until Lyon)

## Testing
* Demonstrate WoT interoperability across products for different domains:
   - Interoperability scenario for industrial IoT
   - Interoperability scenario for home IoT  
* Functional Test Development

# Scenarios

The following scenarios validate the interoperability of devices across different manufactuers.

## Home integration scenario

Scenario: Automatically turn off devices when user leaves the room  

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

## Industrial integration scenario

Scenario: Automatically alert and protect citizens when a chemical plant has an accident

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

# Possible Future Scenario: Enterprise integration scenario
Ex: Access control and security system

# Logistics

* OpenVPN server 
   - Virtual LAN (McCool)
* Virtual NAT 
   - Bridge in OpenVPN server to internet (McCool)
* WebEx (Kaz) (Japan Time)
   - Tues 6:00am (-40h) (tentative, Monday night in some timezones)
   - Tues 2:00pm (-32h)
   - Tues 10:00pm (-24h)
   - Wed 6:00am (-16h)
   - Wed 2:00pm (-8h)
   - Main call: Wed 9:00pm (-1h)
   - Anchor: Testing/Plugfest call Wed 10:00pm
   - Thu 6:00am (+8h)
   - Thu 2:00pm (+16h)
   - Thu 10:00pm (+24h)
   - Fri 6:00am (+32h) (tentative, Friday morning in Asia)
   
|Time| US<br/>Pacific| US<br/>Eastern| UK| EU| China| Korea<br/>Japan|
|:---|:---|:---|:---|:---|:---|:---|
|A| 14:00-1d| 17:00-1d| 22:00-1d| 23:00-1d| 05:00| 06:00|
|B| 22:00-1d| 01:00| 06:00| 07:00| 13:00| 14:00|
|C| 06:00| 09:00| 14:00| 15:00| 21:00| 22:00|

Companies should note what slots they will be able to attend here:

|Time| `Tue.`<br/>`Sep. 25`| `Wed.`<br/>`Sep. 26`| `Thu.`<br/>`Sep. 27`| `Fri.`<br/>`Sep. 28`|
|:---|:---   |:---   |:---   |:---   |
|A   |       | Intel | Intel | Intel |
|B   | Intel | Intel | Intel | Intel |
|C   | Intel | Intel | Intel | Intel |

* Google Hangout (Matthias)

# Projects

## Accessibility
* Companies: Intel and ...
* Goals: ...
* Logistics: Joint session on XXX from YYY to ZZZ

## Testing
* Companies:
* Goals:
* Logistics: 

## Security
* Companies:
* Goals:
* Logistics: 

## Semantics
* Companies:
* Goals:
* Logistics: 

## Proxies
* Companies:
* Goals:
* Logistics: 

## Industrial Scenario Development
* Companies:
* Goals:
* Logistics: 

## Home Scenario Development
* Companies:
* Goals:
* Logistics: 

# Services

* OAuth2 authorization server (McCool)
   - maybe also distribute VPN keys
   - supported by Intel
* Thing directory service

# Proxies

? 

# Validation and Testing

* TD Validation (McCool)
   - Syntactic validation
   - Semantic validation
* Network Testing Tool (Ege)
* Security Validation (McCool)
* Scripting API Testing (Matthias)

# Documentation

* [Panasonic simulator tools/panasonic.html]
* [Preparation template preparation-TEMPLATE.md] (Matthias)
* [Results template result-TEMPLATE.md] (Matthias)
* [https://www.w3.org/WoT/IG/wiki/images/e/ed/WoT_adoption.pptx]
