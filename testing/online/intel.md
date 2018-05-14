# Online Test Things and Systems

## Intel

### Simple Web Camera
Example image is given below.  Note that this does not auto-update; I am working on that, but it needs client-side script support (eg to follow the frame "observe" interaction) so will have to be implemented in HTML.

![Example image from camera 0](IMAGES/intel_light_observe.jpeg)

[Authentication information](https://lists.w3.org/Archives/Member/member-wot-ig/2018May/0000.html) - W3C WoT membership required to access.  Please do not repost in a public forum (for example, do not check the keys into a public github repo as part of a test suite...).

Summary of network API (see TDs for details):
* `/api` - get Thing Description
    * `/frame` - get last frame captured
        - `/observe` get next frame captured when ready (long polling)
    * `/exposure` - get/set manual exposure
        - `/observe` - observe changes in (manual) exposure (long polling)
    * `/crop` - get cropped version of last frame captured (an action using POST)
          
#### HTTPS and Basic Auth
* Camera 0 via California Digital Ocean Portal:
    [TD](https://portal.mmccool.net:28443/api) -
    [frame](https://portal.mmccool.net:28443/api/frame)
          [(observe)](https://portal.mmccool.net:28443/api/frame/observe) -
    [exposure](https://portal.mmccool.net:28443/api/exposure)
          [(observe)](https://portal.mmccool.net:28443/api/exposure/observe) -
    [crop](https://portal.mmccool.net:28443/api/crop)
* Camera 0 via Japan AWS Portal:
    [TD](https://tiktok.mmccool.org:28443/api) -
    [frame](https://tiktok.mmccool.org:28443/api/frame)
          [(observe)](https://tiktok.mmccool.org:28443/api/frame/observe) -
    [exposure](https://tiktok.mmccool.org:28443/api/exposure)
          [(observe)](https://tiktok.mmccool.org:28443/api/exposure/observe) -
    [crop](https://tiktok.mmccool.org:28443/api/crop)

#### HTTPS and Digest Auth
* Camera 0 via California Digital Ocean Portal:
    [TD](https://portal.mmccool.net:28444/api) -
    [frame](https://portal.mmccool.net:28444/api/frame)
           [(observe)](https://portal.mmccool.net:28444/api/frame/observe) -
    [exposure](https://portal.mmccool.net:28444/api/exposure)
           [(observe)](https://portal.mmccool.net:28444/api/exposure/observe) -
    [crop](https://portal.mmccool.net:28444/api/crop)
* Camera 0 via Japan AWS Portal:
    [TD](https://tiktok.mmccool.org:28444/api) -
    [frame](https://tiktok.mmccool.org:28444/api/frame)
           [(observe)](https://tiktok.mmccool.org:28444/api/frame/observe) -
    [exposure](https://tiktok.mmccool.org:28444/api/exposure)
           [(observe)](https://tiktok.mmccool.org:28444/api/exposure/observe) -
    [crop](https://tiktok.mmccool.org:28444/api/crop)
    
      
### Web Speak
Speech synthesizer service.

TO DO: working, need to get it online still (using a similar structure to the camera service above).
However, it is hard to test this service
remotely unless I also implement a "microphone" service.
I should look into adding the capability to return an
audio file both for this service and for a microphone service.

### OCF Smart Home Demo
Simulated OCF devices as well as actual physical instantiation using Grove sensors and Edisons.
See [repo](https://github.com/intel/SmartHome-Demo).  As an example, try the following (but you may have to
look up an updated `di` in the TD or the `oic/res`, as well as providing the "basic" authentication information in the headers):
* [https://portal.mmccool.net:9023/api/oic/a/led0mosfet?di=ea16d184-95ad-4af7-bfc9-53e86f55f3a4] - MOSFET LED 0
    - GET - returns JSON payload for light status
    - POST - updates light status with JSON payload
    
For example, to get the current status of the light, using the URL above and the authentication information below,
you can issue a GET using
```
curl <url> --basic --user "<username>:<password>"
```
To turn on the light, you can issue a POST using
```
curl <url> --basic --user "<username>:<password>" -d '{"value":true}'
```
and to turn it off, another POST using
```
curl <url> --basic --user "<username>:<password>" -d '{"value":false}'
```
Of course you can also try `--digest` and other URLs given in the resources below.
    
You can use the camera service above to check if the light is physically on or off.  Note that this is a very
bright light and will tend to wash out the camera exposure when it is on.

[Authentication information](https://lists.w3.org/Archives/Member/member-wot-ig/2018May/0003.html) - W3C WoT membership required to access.  Please do not repost in a public forum (for example, do not check the keys into a public github repo as part of a test suite...).

TDs are available from the services below, but in case the services
are down [here are cached results](intel_sample_tds.jsonld).

**Caveats**:
* TD registration with the Thing Directory is currently broken so the Thing Directories are empty.
* Only TDs with local addresses are currently provided.  However, the actual devices are accessible through
  the cloud portal.  Replace the `base` with a base address for one of the portals, such
  as `https://portal.mmccool.net:9023/api/oic`, to get a TD usable from outside the local network.
  
#### Guide to Resources
As the resources are available under multiple URLs (different portals and authentication mechanisms)
common elements are explained here.
* OCF Gateway (IoT REST API Server; running on gateway) - Normally Hidden.
    - Access to network API provided by IoT REST API Server running on the local gateway,
      which translates OCF CoAP network interfaces to HTTP network interfaces.
    - These are visible only for test purposes.  In an actual deployment they should be hidden (eg 
      blocked by the gateway firewall locally and definitely not tunnelled up to the cloud portal)
      to enhance privacy and security.  In particular, listing what IoT devices are available is
      a privacy risk and advertising what software and hardware is running
      on a gateway is a security risk (as it makes it easier to identify vulnerable systems.)
    - **oic/res**: OCF resource metadata.
    - **system**: Description of gateway hardware. 
* Metadata Bridge (ocf-wot-metadata-bridge running on gateway) - Normally Hidden.
    - Access to network API of OCF-WoT metadata bridge.
      Normally access to this would not
      be provided, even over the local network, as the API just provides a list of TDs generated and
      debugging information.  As the TDs are made available to via the Thing Directories in normal
      operation, this API is only relevant for testing.
    - **md**: Returns an array of generated TDs with global links.
    - **emd**: Returns an array of generated TDs with local links.
* Thing Directory (thingweb-directory)
    - Allows semantic search (SPARQL queries) of registered Thing Descriptions.
    - **tdir**: Thing Directory.  Returns TDs with global links.  Running in cloud portal, can consolidate TDs from
      multiple edge systems.
    - **etdir**: Edge Thing Directory.  Returns TDs with local links.  Running on gateway.
      Given here for information only, normally access to this service would not be provided outside the local
      network serviced by a particular gateway, as the links use IPv4 addresses only valid locally.
      However, on the local network this 
      Thing Directory allows access to local devices without needing to go to the cloud, which has advantages
      in some use cases (enhanced privacy, lower latency, greater resilience, etc).

#### HTTPS Proxy and Basic Auth
Via California Digital Ocean Portal:
* OCF Gateway: [oic/res](https://portal.mmccool.net:9023/api/oic/res) -
               [system](https://portal.mmccool.net:9023/api/system)
* Metadata Bridge: [emd](https://portal.mmccool.net:9029) -
                   [md](https://portal.mmccool.net:9031)
* Thing Directories: [etdir](https://portal.mmccool.net:9025) -
                     [tdir](https://portal.mmccool.net:9027)
    
#### HTTPS Proxy and Digest Auth
Via California Digital Ocean Portal:
* OCF Gateway: [oic/res](https://portal.mmccool.net:9024/api/oic/res) -
               [system](https://portal.mmccool.net:9024/api/system)
* Metadata Bridge: [emd](https://portal.mmccool.net:9030) -
                   [md](https://portal.mmccool.net:9032)
* Thing Directories: [etdir](https://portal.mmccool.net:9026) -
                     [tdir](https://portal.mmccool.net:9028)

Also have plans to get working on
alternative hardware (eg Artik dev kit and/or ESP32) using 
[iotivity-constrained](https://github.com/iotivity/iotivity-constrained).
