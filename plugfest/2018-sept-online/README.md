# Online Plugfest
------------------------

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

# Logistics

* Oracle IoT Cloud Service Instance  
  Like in the previous plug fests there is an instance of the Oracle IoT Cloud Service available for interoperability tests.  
  It is shared among all plug fest participants, so please coordinate with Michael.Lagally@oracle.com if you have questions.  
  The management console is available at:
  https://129.150.200.242/ui  
  The instance is using the same password, as previously communicated to individual companies. Please let Michael.Lagally@oracle.com know if you require access.
  
* Oracle Digital Twin Simulator  
  There is an instance of the Oracle Digital Twin Simulator for plug fest participants. It hosts several simulations, such as a HVAC, Pump, Truck, Connected Car. Instances of simulated devices can be provided for plug fest participants on request.  
  Please let Michael.Lagally@oracle.com know if you require a simulated device instance.  
  The login page is at:
https://129.150.200.242/ds

* OpenVPN servers (McCool)
   - Running on DigitalOcean instances in Frankfurt
   - Addresses are vlan1:104.248.39.149 and vlan2:104.248.39.147
   - CA is at 104.248.39.148
   - If you want VPN access please send an email to michael.mccool@intel.com and indicate how many IPs you need. 
   - WIP: set up DNS records to make these vlan1.mmccool.net, vlan2.mmccool.net, ca.mmccool.net
   - Using this configuration: https://www.digitalocean.com/community/tutorials/how-to-set-up-an-openvpn-server-on-ubuntu-18-04 
   - Client configuration files (.ovpn) available upon request by email
   - All systems connected to the VPN can see each other as if they were on a local network
   - There is also a NAT between them and the internet
   - Currently the NAT is configured to only allow SSH traffic in, but anything else out
   - To connect to the VPN you need to use 1194/udp.  
   - If your local configuration does not allow this talk to me, I can configure a server using 443/tcp
* VPN Bridge (WIP; McCool)
   - Physical bridge to connect local network to VPN using hardware with multiple physical interfaces
   - To allow use of devices unable to run an OpenVPN client themselves
   - Something like this, using hostapd: https://askubuntu.com/questions/926116/share-my-vpn-connection-with-other-lan-users
* Oauth2 server (WIP; McCool)
   - Plan is to use the following: https://www.npmjs.com/package/node-oauth2-server
   - Server to be at auth.mmccool.net
* WebEx (Kaz) (Japan Time)
   - Tues 9:00am (-37h) (tentative, Monday night in some timezones)
   - Tues 2:00pm (-32h)
   - Tues 10:00pm (-24h)
   - Wed 9:00am (-13h)
   - Wed 2:00pm (-8h)
   - Main call: Wed 9:00pm (-1h)
   - Anchor: Testing/Plugfest call Wed 10:00pm
   - Thu 9:00am (+11h)
   - Thu 2:00pm (+16h)
   - Thu 10:00pm (+24h)
   - Fri 6:00am (+32h) (tentative, Friday morning in Asia)

|Time| US<br/>Pacific| US<br/>Eastern| UK| EU| China| Korea<br/>Japan|
|:---|:---|:---|:---|:---|:---|:---|
|A| 17:00-1d| 20:00-1d| 01:00| 02:00| 08:00| 09:00|
|B| 22:00-1d| 01:00| 06:00| 07:00| 13:00| 14:00|
|C| 06:00| 09:00| 14:00| 15:00| 21:00| 22:00|

Companies should note what slots they will be able to attend here:

|Time| `Tue.`<br/>`Sep. 25`| `Wed.`<br/>`Sep. 26`| `Thu.`<br/>`Sep. 27`| `Fri.`<br/>`Sep. 28`|
|:---|:---                 |:---                 |:---                 |:---                 |
|A   | (Panasonic) <BR/> Smart Things | Intel <BR/> (Panasonic) <BR/> Smart Things | Intel <BR/> (Panasonic) <BR/> Smart Things | Intel <BR/> Smart Things |
|B   | Intel <BR/> Panasonic <BR/> (Oracle) <BR/> Fujitsu <BR/> Hitachi <BR/> Siemens | Intel <BR/> Panasonic <BR/> (Oracle) <BR/> Fujitsu <BR/> Hitachi <BR/> Siemens | Intel <BR> Panasonic <BR/>(Oracle) <BR/> Fujitsu <BR/> Hitachi <BR/> Siemens | Intel <BR/> (Oracle) <BR/> Fujitsu <BR/> Hitachi <BR/> Siemens |
|C   | Intel <BR> (Panasonic) <BR/> Oracle <BR/> Smart Things <BR/> (Fujitsu) <BR/> (Hitachi) <BR/> Siemens | Intel <BR> Panasonic<BR/> Oracle <BR/> Smart Things <BR/> Fujitsu <BR/> Hitachi <BR/> Siemens | Intel <BR> (Panasonic) <BR/> Oracle<BR/> Smart Things <BR/> (Fujitsu) <BR/> (Hitachi) <BR/> Siemens | Intel<BR/> Oracle<BR/> Smart Things <BR/> (Fujitsu) <BR/> (Hitachi) <BR/> Siemens |


* Google Hangout (Matthias)

# Projects

## Accessibility
* Companies: Intel and ...
* Goals: ...
* Logistics: Joint session on XXX from YYY to ZZZ
* Plan:

## Automated Testing and Validation
* Companies: Intel, Siemens, and Smart Things (semantics) ...; Ege
* Goals:
   - Review testing frameworks: W3C and CMA
   - Prototype some testing tools and approaches
* Logistics:
* Plan:
   - Review existing tools
   - Prototype some testing approaches

## Security
* Companies: Intel, Panasonic and (Siemens) ...
* Goals:
  - (Panasonic) Verify access control to servient endpoint is working correctly according to thing description
* Logistics:
* Plan:
  - (Panasonic)
    - Our servients support access control via bearer token.
    - Server available at 24/7 on Tue, Wed and Thu. Basic standby time is from 10:00 to 17:00 JST on Tue, Wed and Thu. Please ask for support outside of these slots if necessary.

## Semantics
* Companies: Intel, Panasonic, Smart Things and ...
* Goals:
  - (Panasonic) Demonstrate how semantic annotation can benefit real world application.
* Logistics:
* Plan:
  - (Panasonic)
    - We will register TD of online things manually to thingweb directory and search them by semantic annotation.
    - Server available at 24/7 on Tue, Wed and Thu. Basic standby time is from 10:00 to 17:00 JST on Tue, Wed and Thu so we can try semantic search during these slots. Please ask for support outside of these slots if necessary.

## Proxies
* Companies: Intel, Panasonic (if possible), Fujitsu and ...
* Goals:
  - (Panasonic) Verify local thing in VPN is accessible from the internet
* Logistics:
* Plan:
  - (Panasonic)
    - We will register local thing (simulator) manually to local proxy in the VPN.
    - We will access to the thing from client (Generic, NodeRED), via remote proxy on the internet.
    - Basic standby time is from 10:00 to 17:00 JST on Tue, Wed and Thu so we can try registration and access during these slots. Please ask for support outside of these slots if necessary.

## Industrial Scenario Development
* Companies: Panasonic, Oracle and ...
* Goals:
  - (Panasonic) Demonstrate how WoT works in Smart industry area
* Logistics:
* Plan:
  - (Panasonic)
    - We will provide air-conditioner servient through cloud (both real/simulator)
    - Basic standby time is from 10:00 to 17:00 JST on Tue, Wed and Thu. Please ask for support outside of these slots if necessary.

## Home Scenario Development
* Companies: Panasonic, Oracle and ...
* Goals:
  - (Panasonic) Demonstrate how WoT works in Smart home area.
* Logistics:
* Plan:
  - (Panasonic)
    - We will provide robotics-cleaner servient through cloud (both real/simulator)
    - Basic standby time is from 10:00 to 17:00 JST on Tue, Wed and Thu. Please ask for support outside of these slots if necessary.

# Services

* OAuth2 authorization server (McCool)
   - maybe also distribute VPN keys
   - supported by Intel
   - Plan A is everyone should have an internet-visible service with authentication
   - VPN is just for emulating a local network for testing
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
