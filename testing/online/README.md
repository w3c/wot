# Online Test Things and Systems

## [Intel - Smart Home Demo including OCF Devices and NAT Traversal](intel.md)
Intel provides a Smart Home Demo including a combination of devices with both
web-service and OCF network interfaces.
As an example web-based device,
a simple web camera directly supporting an HTTP network interface has been implemented which provides its
own Thing Description.
In addition, the system includes a running implementation of the OCF Smart Home Demo.
The OCF Smart Home Demo in turn includes a number of CoAP-based devices.
These OCF devices are supported by a CoAP/HTTP bridge service and a metadata translator service
running on a gateway.
The metadata translator automatically and dynamically generates Thing Descriptions from OCF metadata.
Multiple portals running in the cloud supports secure remote access, demonstrating both
end-to-end private tunnels and proxied tunnels for NAT traversal.
Secure remote access is supported by HTTPS and multiple authentication mechanisms.
Finally, simultaneous gateway
and cloud portal Thing Directory services support both local and remote discoverability and access.

## [Oracle - IoT CloudService and Digital Twin Simulator](oracle.md)
Oracle provides a test instance of the IoT Cloud Service product and the Digital Twin Simulator
for use by the WoT Workgroup for interoperability testing.  

Both services are continuously available and online for interoperability testing by WoT WG members.

They can be used for:

* integrating devices to monitor and control from the IoT Cloud Service
* monitoring and controlling simulated devices from node-WoT
* integrating other WoT reference implementations with the IoT Cloud Service

## [Mozilla - Things Gateway](https://github.com/mozilla-iot/wiki/wiki/Test-Gateway-Instance)

A test instance of Mozilla's open source Web of Things [gateway implementation](https://github.com/mozilla-iot/gateway) has been made available at https://w3c-interop.mozilla-iot.org/

**Note:** this gateway implements Mozilla's [Web Thing API](https://iot.mozilla.org/wot) proposal which currently diverges from the W3C WoT TD specification.
However, the Mozilla team hopes for it to converge with the Working Group's Thing Description specification over time.
There is some basic documentation on how to use the test instance on the [wiki](https://github.com/mozilla-iot/wiki/wiki/Test-Gateway-Instance).
All added "things" will be cleared every 24 hours.

If you have any questions you can ask them on [Discourse](https://discourse.mozilla.org/c/iot), or find us in #iot on irc.mozilla.org.
Ben Francis, the Mozilla contact, also hangs out in #wot on irc.w3.org. If you find bugs, please file them on [GitHub](https://github.com/mozilla-iot/gateway/issues).

## [Panasonic - WoT Server Simulator](panasonic.md)
Panasonic provides online WoT Server Simulator for use by the WoT Workgroup for interoperability testing.

This service is continuously available and online for interoperability testing by WoT WG members.

It can be used for testing particular functionality of WoT Client as well as validating corresponding piece of specification.
