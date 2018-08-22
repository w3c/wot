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


## Home integration scenario

Scenario: Automatically turn off devices when user leaves the room  
- Monitor room occupancy (KETI Sensor)  
- Detect when room is empty and trigger the following actions (Oracle)
- Close window blinds (Fujitu)
- Clean the room (Panasonic)
- Turn on a MQTT device (Siemens)
- Turn off the lights (Smart things)
- Turn on a surveillance camera (Intel)
- Control other devices (Hitachi)

## Enterprise integration scenario

Scenario: Access control and security system

## Industrial integration scenario

Scenario: Automatically protect citizens when a chemical plant has an accident
- Monitor environment condition in multiple locations (KETI-sensors)
- Discover anomaly, critical condition and trigger the following actions (Oracle)
- Drain the tank in a chemical factory (Siemens)
- Flash a warning light (Fujitsu)
- Turn off all air conditioners (Panasonic)
- Deliver a video stream of the critical location (Intel)
- Broadcast an alert message (Hitachi)

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
   
| US<br/>Pacific| US<br/>Eastern| UK| EU| China| Korea<br/>Japan| `Tue.`<br/>`Sep. 25`| `Wed.`<br/>`Sep. 26`| `Thu.`<br/>`Sep. 27`| `Fri.`<br/>`Sep. 28`|
|:---|:---|:---|:---|:---|:---|:---|:---|:---|:---|
| 14:00-1d| 17:00-1d| 22:00-1d| 23:00-1d| 05:00| 06:00| -| -| -| -|
| 22:00-1d| 01:00| 06:00| 07:00| 13:00| 14:00| -| -| -| -| 
| 06:00| 09:00| 14:00| 15:00| 21:00| 22:00| -| -| -| -|

* Google Hangout (Matthias)

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
