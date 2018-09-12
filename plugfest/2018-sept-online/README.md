# Goals

## Target Features
* Security
    - All devices should support secure access
    - Test all schemes and protocol combinations
      in [security best practices](https://github.com/w3c/wot-security/blob/master/wot-security-best-practices.md)
    - Definitions
* Action and event patterns
   - Input and output data for actions
   - Event subscription and cancellation
   - Action and event descriptions (at least one implementation)
* Semantics
   - Exercise iotschema.org to achieve interoperability in scenarios below
* Protocol Bindings
   - URI Templates

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
|:---|:---                 |:---                 |:---                 |:---                 |
|A   | (Panasonic) <BR/> Smart Things | Intel <BR/> (Panasonic) <BR/> Smart Things | Intel <BR/> (Panasonic) <BR/> Smart Things | Intel <BR/> Smart Things |
|B   | Intel <BR/> Panasonic <BR/> (Oracle) <BR/> Fujitsu <BR/> Hitachi | Intel <BR/> Panasonic <BR/> (Oracle) <BR/> Fujitsu <BR/> Hitachi | Intel <BR> Panasonic <BR/>(Oracle) <BR/> Fujitsu <BR/> Hitachi | Intel <BR/> (Oracle) <BR/> Fujitsu <BR/> Hitachi |
|C   | Intel <BR> (Panasonic) <BR/> Oracle <BR/> Smart Things <BR/> (Fujitsu) <BR/> (Hitachi) | Intel <BR> Panasonic<BR/> Oracle <BR/> Smart Things <BR/> Fujitsu <BR/> Hitachi | Intel <BR> (Panasonic) <BR/> Oracle<BR/> Smart Things <BR/> (Fujitsu) <BR/> (Hitachi) | Intel<BR/> Oracle<BR/> Smart Things <BR/> (Fujitsu) <BR/> (Hitachi)|


* Google Hangout (Matthias)

# Projects

## Accessibility
* Companies: Intel and ...
* Goals: ...
* Logistics: Joint session on XXX from YYY to ZZZ

## Testing
* Companies: Intel and ...
* Goals:
* Logistics:

## Security
* Companies: Intel, Panasonic and ...
* Goals:
  - (Panasonic) Verify access control to servient endpoint is working correctly according to thing description
* Logistics:
  - (Panasonic)
    - Our servients support access control via bearer token.
    - Server available at 24/7 on Tue, Wed and Thu. Basic standby time is from 10:00 to 17:00 JST on Tue, Wed and Thu. Please ask for support outside of these slots if necessary.

## Semantics
* Companies: Intel, Panasonic and ...
* Goals:
  - (Panasonic) Demonstrate how semantic annotation can benefit real world application.
* Logistics:
  - (Panasonic)
    - We will register TD of online things manually to thingweb directory and search them by semantic annotation.
    - Server available at 24/7 on Tue, Wed and Thu. Basic standby time is from 10:00 to 17:00 JST on Tue, Wed and Thu so we can try semantic search during these slots. Please ask for support outside of these slots if necessary.

## Proxies
* Companies: Intel, Panasonic (if possible) and ...
* Goals:
  - (Panasonic) Verify local thing in VPN is accessible from the internet
* Logistics:
  - (Panasonic)
    - We will register local thing (simulator) manually to local proxy in the VPN.
    - We will access to the thing from client (Generic, NodeRED), via remote proxy on the internet.
    - Basic standby time is from 10:00 to 17:00 JST on Tue, Wed and Thu so we can try registration and access during these slots. Please ask for support outside of these slots if necessary.

## Industrial Scenario Development
* Companies:Panasonic and ...
* Goals:
  - (Panasonic) Demonstrate how WoT works in Smart industry area
* Logistics:
  - (Panasonic)
    - We will provide air-conditioner servient through cloud (both real/simulator)
    - Basic standby time is from 10:00 to 17:00 JST on Tue, Wed and Thu. Please ask for support outside of these slots if necessary.

## Home Scenario Development
* Companies:Panasonic and ...
* Goals:
  - (Panasonic) Demonstrate how WoT works in Smart home area.
* Logistics:
  - (Panasonic)
    - We will provide robotics-cleaner servient through cloud (both real/simulator)
    - Basic standby time is from 10:00 to 17:00 JST on Tue, Wed and Thu. Please ask for support outside of these slots if necessary.

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

* Resources from CMA testing framework:
   - https://cta-wave.github.io/WMAS2017/
   - https://webapitests2017.ctawave.org/
   - https://github.com/cta-wave/WMAS2017/blob/master/wmas2017-subset.sh
   - https://github.com/web-platform-tests/wpt
   - https://www.w3.org/2017/12/webmediaapi.html
   - https://github.com/cta-wave/WMAS2017

# Documentation

* [Panasonic simulator tools/panasonic.html]
* [Preparation template preparation-TEMPLATE.md] (Matthias)
* [Results template result-TEMPLATE.md] (Matthias)
* [https://www.w3.org/WoT/IG/wiki/images/e/ed/WoT_adoption.pptx]
