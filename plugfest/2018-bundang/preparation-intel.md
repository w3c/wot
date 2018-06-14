# PlugFest Preparation for Bundang F2F 2018
This document is for Intel's preparation and results.

# 1. Introduction
 
See the corresponding section of [preparation.md](preparation.md) for information on the last plugfest.

<table>
  <tr>
    <th>Participants</th>
    <th>Application</th>
    <th>=protocol=</th>
    <th>Remote proxy</th>
    <th>=protocol=</th>
    <th>Local proxy</th>
    <th>=protocol=</th>
    <th>Device</th>
  </tr>
  <tr>
    <th rowspan="3">Intel</th>
    <td>OCF Smart Home</td>
    <td>HTTPS</td>
    <td rowspan="3">Digital Ocean and AWS</td>
    <td>SSH Tunnel and Remote Proxy</td>
    <td>IoT REST API Server</td>
    <td>CoAP</td>
    <td>Button, Light, RGB LED, Buzzer, Temperature, Illuminance, Motion</td>
  </tr>
  <tr>
    <td>Web Camera</td>
    <td>HTTPS</td>
    <td>SSH Tunnel and Remote Port Forwarding</td>
    <td>Direct via tunnel</td>
    <td>HTTPS</td>
    <td>Camera</td>
  </tr>
  <tr>
    <td>Web Speech</td>
    <td>HTTPS</td>
    <td>SSH Tunnel and Remote Port Forwarding</td>
    <td>Direct via tunnel</td>
    <td>HTTPS</td>
    <td>Speaker</td>
  </tr>
</table>


# 2. Next plugfest

This section describes the Bundang plugfest held on June 30 and July 1.

## 2.1 Participants and Servients

This table is not 100% complete, as it does not describe all the services running on the gateway, yet.

<table>
  <tr>
    <th>Participants</th>
    <th>Application</th>
    <th>=protocol=</th>
    <th>Remote proxy</th>
    <th>=protocol=</th>
    <th>Local proxy</th>
    <th>=protocol=</th>
    <th>Device</th>
  </tr>
  <tr>
    <th rowspan="5">Intel</th>
    <td>OCF Smart Home</td>
    <td>HTTPS with<br/>
        Basic Auth or<br/>
        Digest Auth
    </td>
    <td rowspan="5">Digital Ocean and AWS</td>
    <td>SSH Tunnel and Remote Proxy</td>
    <td>IoT REST API Server</td>
    <td>CoAP (direct)<br/>
        HTTP (via local proxy)
    </td>
    <td>Button,<br/>
        Light,<br/>
        RGB LED,<br/>
        Buzzer,<br/>
        Temperature,<br/>
        Illuminance,<br/>
        Motion
    </td>
  </tr>
  <tr>
    <td>Web Camera</td>
    <td>HTTPS with<br/>
        Basic Auth or<br/>
        Digest Auth<br/>
    </td>
    <td>SSH Tunnel<br/>
         and<br/>
         Remote Port Forwarding</td>
    <td>Direct via tunnel</td>
    <td>HTTPS with
        non-local cert</td>
    <td>Camera</td>
  </tr>
  <tr>
    <td>Web Speech</td>
    <td>HTTPS with<br/>
        Basic Auth or<br/>
        Digest Auth<br/>
    </td>
    <td>SSH Tunnel<br/>
         and<br/>
         Remote Port Forwarding</td>
    <td>Direct via tunnel</td>
    <td>HTTPS with
        non-local cert</td>
    <td>Speaker</td>
  </tr>
  <tr>
    <td>Cloud Thing Directories (2)</td>
    <td>HTTPS with<br/>
        Basic Auth or<br/>
        Digest Auth<br/>
    </td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Local Thing Directories (2)</td>
    <td>HTTP
    </td>
    <td></td>
    <td></td>
    <td></td>
    <td>One local to plugfest,<br/>
        one behind NAT in Japan</td>
  </tr>
</table>

## 2.2 Checking points for the next plugfest

These were described in result.md in the Prague plugfest.

### (1) Connect with remote/local proxy
Remote access is supported by various mechanisms based on SSH tunnels and proxy services running on one of two cloud
servers (one based in California at Digital Ocean, one based in Japan at AWS):
1. Direct tunnel with remote port forwarding.  In this case, the device itself implements TLS but uses a certificate
   appropriate for the remote endpoint, not the local device.  The web service is hosted on the device but via the tunnel
   the port is made available on a cloud server and exposed to the internet.  
2. Tunnel to remote proxy.  In this case the device hosts only an unsecured protocol, such as HTTP, which is forwarded
   over a tunnel to a cloud server but NOT mapped directly to a remote port.  Instead a proxy service supporting
   HTTPS and authentication accepts access requests on the devices' behalf, authenticates and secures them, and then
   passes the requests and responses back and forth.  This is a transparent proxy: the accessing devices do not
   know they are talking to the proxy; it seems as if the device is running in the cloud.
3. Tunnel from local proxy.  The same proxy service as in 2 runs on the local gateway, and implements an authenticated
   service that is then tunnelled and mapped to a remote port as in 1.
Note that in the above scenarios local services may use HTTP and may be unprotected, except for local network security
(eg WiFi encryption).  If this is undesirable a self-signed certificate can be used locally OR local SSH tunnels can be used
to protect local traffic.

In addition to the above to support secure remote access, a proxy service, known as the "IoT REST API Server",
will be running on the local gateways to map OCF CoAP to and from HTTP.  

In general, there will be "local" services running at the plugfest (behind a NAT) and "local" services running
in a lab in Japan (behind a different NAT), both talking to two separate cloud portals.  This will allow testing of
scenarios involving NAT-NAT traversal.

Note that the remote devices will be observable via a network camera, a FOSCAM, which will be made available
via a transparent proxy as well.

### (2) Application servients

A single application servient will be written using node-woti.
It will consume Thing Descriptions for a sensor and an actuator and tie one to the other.
It can be used to test the coordination of multiple devices in simple scenarios.
We will investigate scenarios that involve coordinating local-local, local-cloud, and local-remote (behind a separate NAT) devices.

For example, this servient could be used to map an Event or change of state on a sensor, such as a button being pushed,
to change of state in an actuator, such as turning a light on.   This servient can be run locally (in which case it is a simple switch
allowing a light to be turned on) or using devices remote from each other (in which case the light can act as a notifier for the
event).  The initial setup will use a simple button but the same servient could be mapped to other input and output devices
from other participants during testing.  Initial implementation will use Observe/Long Polling rather than true Events
but will be upgraded during the plugfest to WS or SSE events if possible.

### (3) Connect with node-wot

Yes.  See 2.

### (4) Scripting API

Yes, to implement the behaviour in 2.

### (5) Thing Directory operation

Yes, using thingweb, running both local and remote instances.  In fact there will
be two cloud services and two gateways.  The gateways will be behind two different
NATs and the cloud services will have two separate base URLs (but will point to the same
set of devices behind both NATs).

We will be exploring various strategies to coordinate multiple Thing Directories
and manipulate Thing Descriptions appropriately (eg modifying the base URIs).

### (6) Device Servients

The Web Speech and Web Camera are simple endpoint devices that do have TDs but do not
consume other TDs or use node-wot in their implementation.

In addition, time permitting, a simple "device" endpoint will also be implemented using
node-wot.

### (7) Device simulators

In addition to the physical OCF devices, a set of simulated devices running on both
gateways will be available.

### (8) Semantic integration

All TDs will use semantic annotations drawn from iotschema.  In the case of OCF devices
these annotations will be based on a mapping of capabilities from OCF's resource type system.

The various Thing Directories will then provide semantic searches.  Time permitting,
integration with an AVS (AWS Voice Service) using semantic searches to find appropriate
device affordances will be attempted.

### (9) Security

All remote accesses will be protected by HTTPS and either (that is, both, on different ports)
Basic Authentication or Digest Authentication.  Time permitting, additional forms of
authentication may be attempted (eg OAuth).

Local protection will be by HTTPS using self-signed certs or via SSH tunnels.  Time permitting,
the (new) CoAPS ACL features of IoTivity may be activated and tested.

### (10) Accessibility

The simple servient noted above will still allow various accessibility scenarios to be
explored.  For example, turning on a light could also be extended to trigger a voice
notification.

### (11) Event handling

Long polling is supported by the Simple Web Camera.  Time permitting, true event notification
mechanisms may be supported.

## 2.3 Other issues

The following points are picked up from Koster-san's material.

### (1) Validate the simplified TD

The updated TD playground will be running *as a service* on the two cloud servers and the two gateways and 
support validation of the new TD.  An option will be provided to validate TDs before submitting them
to the Thing Directories.

### (2) Extended Actions

The Web Speech system currently uses a "long response": the request to speak does not return until the
speech is complete.  Time permitting, implementing one of the recommended new patterns for monitoring and cancelling
actions may be attempted.

### (3) Notification - websockets, webhooks

Time permitting, more advanced patterns supporting true Events may be added to one of the
existing services.

### (4) Discovery using Feature of Interest annotation

These annotations can be added although it should be noted that we haven't yet solved the
problem of validating TDs using diverse external vocabularies so it may be necessary to
bypass validation when registering TDs using experimental vocabularies with the Thing Directories.

### (5) Application Scenarios, recipes

Just going to explore simple stimulus-response application patterns for now, but will
focus on doing so securely while traversing multiple NATs and the internet.

### (6) Proxy integration with Thing Directory

We have our own proxy system but will attempt to register with other proxy services
if they are available.

### (7) New security patterns

In addition to Basic and Digest, OAuth authentication will be attempted, time permitting.

### (8) Test Framework

Will submit devices and TDs to a test service, if it is available.

### (9) Other

As noted above, the setup will support NAT-cloud-NAT scenarios. 

## 2.3 Use cases

1. Remote alarms
2. Accessibility (translating events into notifications in different sensory modalities)
3. Environmental sensing (how's the temperature in my lab in Japan?)

# 3 Schedule

Sat 30.6.18:  9:00-18:00  
Sun 1.7.18:  9:00-18:00  

Venue: TTA

# 4 Requirements for PlugFest Setting

Devices being brought to plugfest:
1. 1x Sensor Node.
    - Supporting physical OCF Smart Home Demo sensors.
2. 1x UP Core
    - Web Speech.   
    - Simple Web Camera   
3. 1x UP Squared Gateway   
    - IoT REST API Server
    - OCF Metadata Translator
    - Thing Directory
    - Thing Validator
    - SSH Reverse Tunnel "callers" (call into cloud servers to bypass NAT)
    - OCF Smart Home simulated devices
    - Application servient(s) (node-wot)

Devices remaining in Japan but accessible over the network:
1. 2x Sensor Node.
    - Supporting physical OCF Smart Home Demo sensors.
2. 1x UP Core
    - Web Speech.   
    - Simple Web Camera   
3. 1x UP Squared Gateway   
    - IoT REST API Server
    - OCF Metadata Translator
    - Thing Directory
    - Thing Validator
    - SSH Reverse Tunnel "callers" (call into cloud servers to bypass NAT)
    - OCF Smart Home simulated devices
    - Application servient(s) (node-wot)
4. FOSCAM IP Camera
    - tilt/pan, zoom, streaming, night vision, and speaker/microphone
    - REST API + WS, made available via cloud proxy
5. Power Management
    - so all devices can be power-cycled
    - REST API made available via cloud proxy
6. Remote Lamp
    - to provide light for the camera when it is night in Japan
    - the camera can function using only IR, but then color is not available
7. Power cycling control of network bridges
    - via a backup network

Devices 1 and 2 will have TDs.  Devices 4 and 5 have REST APIs, and (time
permitting) *may* be set up
with TDs describing a subset of their services (but note that power-cycling the 
gateway may disrupt other services!  I may set up one port with a light though
so operating on it can be observed via the FOSCAM camera).
Device 6 and 7 are available via Sonoff 
devices which have a proprietary service to control them (not accessible to WoT,
at least not yet).


| Participant | Number of Participants | Number of Power outlets | Network | Remarks |
|-------------|------------------------|-------------------------|---------|---------|
| Intel       | 1                      | 1                       | Wi-Fi and/or wired Ethernet | External ports: 22, 80, 443. Will bring own router and power bar.   |

# 5 Implementation guidelines

The "name" field of Thing Description shall be of the following form: "IntelDeviceNumberLocation", where
Location will be one of "Local" (at the Plugfest) or "Remote" (in the remote lab).  Number will be
used to distinguish multiple copies of the same kind of device (the sensor nodes are mostly duplicates
of each other).  The Number will always be at least 1 even if there is only one kind of device.

Examples:
  * IntelRGB2Remote
  * IntelButton1Local
  * IntelSpeech1Remote
  * IntelCamera1Local
  * IntelFOSCAM1Remote


