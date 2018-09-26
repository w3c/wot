# PlugFest Preparation for Online September 2018 - Oracle

This document describes the Online PlugFest on Sept 25 to 28.

**FIRST DRAFT: Work in Progress**

Features marked with <i>italics</i> are work-in-progress, and hence not confirmed to be available during the PlugFest.

## 1 PlugFest Infrastructure
This section lists the infrastructure available for the PlugFest, which can be used for individual testing (see [Section 3.1](#31-testing-individually))


### 1.1 Public Thing Directories

N/A

### 1.2 Public Proxies

N/A

### 1.3 Public Tools

### 1.3.1 Oracle IoT Cloud Service 

Management console at https://129.150.200.242/ui

Login credentials are available from Michael.Lagally@oracle.com.

### 1.3.2 Oracle IoT Digital Twin Simulator 

Simulator console at https://129.150.200.242/ds

Login credentials are available from Michael.Lagally@oracle.com.

### 1.3.3 Simulated Devices

The following simulated devices are available:

Device | Description | TD
--------|------------|------
Blue_Pump_Siemens	| Pump Instance for Siemens | [Blue_Pump_Siemens.jsonld](TDs/Oracle/Blue_Pump_Siemens.jsonld)
Blue_Pump_Fujitsu	| Pump instance for Fujitsu | [Blue_Pump_Fujitsu.jsonld](TDs/Oracle/Blue_Pump_Fujitsu.jsonld)
Blue_Pump_SmartThings	| Pump instance for SmartThings | [Blue_Pump_SmartThings.jsonld](TDs/Oracle/Blue_Pump_SmartThings.jsonld)
Blue_Pump_Hitachi |Pump instance for Hitachi | [Blue_Pump_Hitachi.jsonld](TDs/Oracle/Blue_Pump_Hitachi.jsonld)
Blue_Pump_Intel	| Pump instance for Intel |	[Blue_Pump_Intel.jsonld](TDs/Oracle/Blue_Pump_Intel.jsonld)
Blue_Pump_Panasonic	| Pump instance for Panasonic | [Blue_Pump_Panasonic.jsonld](TDs/Oracle/Blue_Pump_Panasonic.jsonld)
Connected_Car_Shared	| Shared Connected Car instance | [Connected_Car_Shared.jsonld](TDs/Oracle/Connected_Car_Shared.jsonld)
HVAC_Shared | Shared HVAC instance | [HVAC_Shared.jsonld](TDs/Oracle/HVAC_Shared.jsonld)
Truck_Shared | Shared Truck instance | [Truck_Shared.jsonld](TDs/Oracle/Truck_Shared.jsonld)
Festo_Shared | Shared Festo instance | [Festo_Shared.jsonld](TDs/Oracle/Festo_Shared.jsonld)
KETI_Shared | Shared KETI Simulator instance | [KETI_Sim_Environment_Sensor_Tokyo.jsonld](TDs/KETI/KETI_Sim_Environment_Sensor_Tokyo.jsonld)

## 2 Participants and Servients

<table>
  <tr>
    <th>Participant</th>
    <th>Appliations</th>
    <th>=protocol=</th>
    <th>Remote Proxy</th>
    <th>=protocol=</th>
    <th>Local Proxy</th>
    <th>=protocol=</th>
    <th>Things</th>
  </tr>
  <!-- adapt rowspan as needed to have each application and each Thing in their own cells -->
  <tr>
    <th rowspan="8">Oracle</th>
    <td rowspan="3">IOT Cloud Service</td>
    <td rowspan="3">HTTPS</td>
    <td rowspan="3">N/A</td>
    <td rowspan="3">N/A</td>
    <td rowspan="3">N/A</td>
    <td rowspan="3">N/A</td>
    <td>various devices (simulated and real physical devices)</td>
  </tr>
  <tr>
    <th rowspan="8">Oracle</th>
    <td rowspan="3">IOT Digital Twin Simulator/td>
    <td rowspan="3">HTTPS</td>
    <td rowspan="3">N/A</td>
    <td rowspan="3">N/A</td>
    <td rowspan="3">N/A</td>
    <td rowspan="3">N/A</td>
    <td>various simulated devices for TDs of plug fest participants</td>
  </tr>
  <tr>
    <th rowspan="8">Oracle</th>
    <td rowspan="3">IOT Asset Monitoring Application/td>
    <td rowspan="3">HTTPS</td>
    <td rowspan="3">N/A</td>
    <td rowspan="3">N/A</td>
    <td rowspan="3">N/A</td>
    <td rowspan="3">N/A</td>
    <td>Monitoring and actions on devices connected to the IoT Cloud service</td>
  </tr>
</table>

## 3 Checking points for the next plugfest

### 3.1 Testing Individually
The following checking points can be completed by the participant alone by using the PlugFest infrastructure (TD Playground, Thing Directory, Proxies).

#### 3.1.1 Validate TDs

* Oracle will validate all TDs of plug fest participants and will create simulated devices in the Digital Twin Simulator.

#### 3.1.2 Register with Thing Directory

* Oracle will generate TDs of simulated devices which can be registered with Thing Directories provided by other companies.
  These devices can be used via node-WoT or the Fujitsu proxy.

#### 3.1.3 Connect with Remote/Local Proxy

* The Oracle IoT Cloud service has already been integrated into the Fujitsu proxy for the Bundang Plugfest.

#### 3.1.4 Connect with node-wot

* The Oracle IoT Cloud service has already been integrated into node-wot for the Prague Plugfest.

#### 3.1.5 Scripting API

* N/A

### 3.2 Testing in Client Role
<i>The following checking points must be completed together with a partner in server role.</i>

#### 3.2.1 Metadata Handling

* tbd.

#### 3.2.2 Read Property

##### HTTP

* YES

##### CoAP

* NA

##### MQTT

* NA

##### Other

* NA

#### 3.2.3 Write Property

##### HTTP

* YES

##### CoAP

* NA

##### MQTT

* NA

##### Other

* NA

#### 3.2.4 Observe Property

##### HTTP+Longpoll

* tbd

##### HTTP+Webhooks

* tbd

##### CoAP

* NA

##### MQTT

* NA

##### Other

* tbd

#### 3.2.5 Invoke Action

##### HTTP

* tbd

##### CoAP

* NA

##### MQTT

* NA

##### Other

* NA

#### 3.2.6 Subscribe Event

##### HTTP+Longpoll

* tbd

##### HTTP+Webhooks

* tbd

##### CoAP

* NA

##### MQTT

* NA

##### Other

* tbd

#### 3.2.7 Security

* tbd

#### 3.2.8 Semantic integration

* N/A

#### 3.2.9 Accessibility
Accessibility turns a machine-understandable WoT Interface described by a TD into an accessible user interface of certain kind.

* tbd

### 3.3 Testing in Server Role
The following checking points must be completed together with a partner in client role.

#### 3.3.1 Metadata

* Oracle will provide TDs for various devices [archived TDs](https://github.org/w3c/wot/plugfest/2018-sept-online/TDs/Oracle).

#### 3.3.2 Read Property

##### HTTP

* YES

##### CoAP

* NA

##### MQTT

* NA

##### Other

* NA

#### 3.3.3 Write Property

##### HTTP

* YES

##### CoAP

* NA

##### MQTT

* NA

##### Other

* NAL

#### 3.3.4 Observe Property

##### HTTP+Longpoll

* tbd

##### HTTP+Webhooks

* YES

##### CoAP

* NA

##### MQTT

* NA

##### Other

* tbd

#### 3.3.5 Invoke Action

##### HTTP

* YES

##### CoAP

* NA

##### MQTT

* NA

##### Other

* NA

#### 3.3.6 Subscribe Event

##### HTTP+Longpoll

* tbd

##### HTTP+Webhooks

* YES

##### CoAP

* NA

##### MQTT

* NA

##### Other

* tbd

#### 3.3.7 Security

The Oracle IoT Cloud Service offers:
* basic
* Oauth2

#### 3.3.8 Semantic integration

* NA

### 3.4 Other issues

#### 3.4.1 Producing Running Actions and Event Instances

* tbd

#### 3.4.2 Consuming Running Actions and Event Instances

* tbd

#### 3.4.3 New Security Patterns

* NA

#### 3.4.4 Miscellaneous

* NA

## 4 Use cases

Oracle intends to address a home integration and industrial integration scenarios to 
demonstrate the benefits of an interoperable Web of Things ecosystem.

The two scenarios were already presented at the last day of the Bundang Plugfest:
https://www.w3.org/WoT/IG/wiki/images/e/ed/WoT_adoption.pptx

These scenarios will be implemented by a combination of simulated and real physical devices.
Where a real device integration is not available, we intend to create a simulation 
based on the TD of that device.
 
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



## 5 Requirements for PlugFest Environment

| Participant | Number of People | Number of Power outlets | Network                     | Remarks |
|-------------|------------------|-------------------------|-----------------------------|---------|
| Oracle | 1                | ?                       | Oracle's IOT Cloud service instance is publicly available for WoT members |         |

## 6 Implementation Guidelines
This section should cover documentation of own implementation including tools in Section 1 or requests to others.
