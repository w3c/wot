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
