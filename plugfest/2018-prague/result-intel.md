# Plugfest Results - Intel

![Test System](images/intel_test_system.png)

## Test Hardware

* UP2 Gateway with USB Camera and Speakers
* Edison Endpoint Node with Grove Sensors (Button, RGB LED, Illuminance, Motion) and USB Camera
* Local switch

### Test Software

### Things
* Web Camera Thing
    * HTTP API
    * Operations: 
        - frame get, frame observe (JPEG image)
        - exposure set, exposure get, exposure observe (JSON number)
        - crop (action; JSON input, JPEG image output)
    * Observe implemented using long polling
    * Security: HTTPS + Basic Authentication (mostly disabled locally during plugfest)
    * NAT Traversal: SSH Tunnel to cloud
    * Automatic Thing Directory registration
    * Thing Description introspection
    
* Web Speech Thing
    * HTTP API
    * Operations:
        - action: speak (given text string, says it)
        - returns when action is complete
    * Security: HTTPS + Basic Authentication (mostly disabled locally during plugfest)
    * NAT Traversal: SSH Tunnel to cloud
    * Automatic Thing Directory registration (Siemens Thing Directory)
    * Thing Description introspection
    
* OCF Smart Home
    * Subset of OCF test Devices supported by "Smart Home Demo"
        - LED
        - Button
        - Motion sensor
        - RGB LED
        - Buzzer
    * OCF Devices running as services on Edison with CoAP/CBOR network interfaces
    * An instance of the `iot-rest-api-server` running on gateway
        - Translates CoAP/CBOR to HTTP/JSON
    * Metadata translator running on gateway 
        - Automatically generates TDs dynamically from OCF metadata
        - Both CoAP and HTTP network interfaces
    * Automatic Thing Directory registration (Siemens Thing Directory)
        - Relatively short timeout allows updates when devices disabled
