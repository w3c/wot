# Services
Web services that are not Things (do not have a Thing Description).

## Available

### Infrastructure
* OpenVPN TAP server: vlan2.mmccool.net:1194/udp (mailto:Michael.McCool@intel.com for access)
* Oracle IoT Cloud Service Instance: https://129.150.200.242/ui (mailto:Michael.Lagally@oracle.com)
* Google hangout: https://hangouts.google.com/call/zMIBFnSSTxd4KpiLcP5DAAEI (mailto:Matthias.Kovatsch@siemens.com))

### Validation 
* TD validation: http://plugfest.thingweb.io/playground/

### Directories
Lets you find devices and services, whether or not they are Things.
* ThingWeb Thing Directory (version 0.10.0): http://plugfest.thingweb.io:8081
* [TD Directory](http://wot.f-ncs.ad.jp/Things) running on Fujitsu's Remote Proxy Servient 
    - An application servient can retreive a TD with http://wot.f-ncs.ad.jp/Things/<id>
    - A device servient can register a TD to http://10.8.2.21/Things/register<id> (local to vlan2)
    - If a device does not have authentication capability, remote proxy provides basic authentication to the application and rewrites 
  the security metadata in TD for adding a term "basic". (mailto:sano.takeshi@jp.fujitsu.com)
* OCF Devices resource directory: http://upsq0.local:8000/api/oic/res (local to vlan2) (mailto:Michael.McCool@intel.com)
    - This will in theory find ALL OCF devices on vlan2, no matter where they connect from in the world

### Simulators
* Oracle Digital Twin Simulator: https://129.150.200.242/ds (mailto:Michael.Lagally@oracle.com)

### Proxies, Gateways, and Translators
* OCF-WoT Metadata translator: http://upsq0.local:8091 (local to vlan2) (mailto:Michael.McCool@intel.com)
    - Dynamically generates TDs for all OCF devices in the resource directory

### Authorization
* Eurecom OAuth/OAuth2 authorization server: https://18.197.31.47/oauth/token (mailto:klotz@eurecom.fr)

## Work in Progress 
* Local ThingWeb Thing Directory (version 0.10.0) http://upsq0.local:8080 (mailto:Michael.McCool@intel.com)
* OAuth2 authorization server (mailto:Michael.McCool@intel.com)

# Things
Services which are also Things (have a Thing Description).

## Work in Progress
* Network validation tool




