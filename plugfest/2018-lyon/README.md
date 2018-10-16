# Lyon Plugfest
[Oct 20 and 21 at Université de Lyon](https://www.w3.org/WoT/IG/wiki/F2F_meeting,_20-26_October_2018,_Lyon,_France#PlugFest_.2820-21_Oct_2018.29)


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
   - Addresses are 
       - vlan1.mmccool.net (should be at 104.248.39.149) port 1194 (udp) - TUN
       - vlan2.mmccool.net (should be at 104.248.39.147) port 1194 (udp) - TAP
   - If you want VPN access please send an email to michael.mccool@intel.com
       - Indicate how many machines you will connect
       - I will send a `<config>.ovpn` file, where `<config>` will be a unique name for your device
   - To install openvpn client on Linux (see Digital Ocean link below for more info):
     ```
     sudo apt-get install openvpn
     ```
   - To run manually after installation:
     List the files in '/etc/openvpn'; if `update-resolve-conf` exists, edit the `<config>.ovpn` file
     and uncomment the three lines starting with `script-security`.  Save.
     Whenever you need to start the VPN, issue the following command,
     ```
     sudo openvpn <config>.ovpn
     ```
     where `<config>` should be replaced with the unique name for your device.
     Now look at output of `ifconfig`: you should see a new network, and the default gateway should
     be redirected so it is used automatically.
     To stop the VPN simply kill the above program.
   - To run as a service that starts automatically at boot
     First, edit the config file as above.  Then issue
     ```
     sudo cp <config>.ovpn /etc/openvpn/<config>.conf
     sudo systemctl start openvpn@<config>
     sudo systemctl enable openvpn@<config>
     ```
     where `<config>` should be replaced with the name of your config file, which is
     unique for each device on the network.  
     The VPN will be started and will start automatically at boot (note though that your IP may
     vary).
     To check the status, issue
     ```
     sudo tail -f /var/log/openvpn/openvpn.log
     ```
     You might have to create the directory first...
      ```
     sudo mkdir /var/log/openvpn
     ```
   - Details:
       - Only port 1194/UDP is supported for now 
       - If people have a firewall that blocks this, let me know and I can set up a 443/TCP server
       - VLAN1 and VLAN2 are intentionally separate networks.  
       - VLAN1 uses TUN, VLAN2 uses TAP
       - Only TAP can be bridged to an external network
       - They are both connected to the 
         internet via a one-way NAT (all outgoing traffic is permitted, no incoming traffic)
   - The TUN setup mostly follows this configuration from Digital Ocean:
       - https://www.digitalocean.com/community/tutorials/how-to-set-up-an-openvpn-server-on-ubuntu-18-04 
       - Note these are TUN (IP) networks and does not provide DCHP, mDNS, ARP discovery, etc
       - In practice this means you need to know the IP address of the device you wish to connect
       - Also, currently IP addresses may change each time you restart the VPN client on a device
       - You also have to run an OpenVPN client on each device you connect
    - The TAP setup is a modification of the above
       - And so not as well tested
    - Tweaks
       - Comments out the "user" and "group" lines in the config files to make teardown cleaner
* VPN Bridge (WIP; McCool)
   - Physical bridge to connect local network to VPN using hardware with multiple physical interfaces
   - Needs a TAP (ethernet VPN), not TUN... 
   - Should allow use of devices unable to run an OpenVPN client themselves; ideally, just need to run on a "router" 
   - Something like this, using hostapd: https://askubuntu.com/questions/926116/share-my-vpn-connection-with-other-lan-users
* Oauth2 server (WIP; McCool)
   - Plan is to use the following: https://www.npmjs.com/package/node-oauth2-server
   - Server to be at auth.mmccool.net
* WebEx (Kaz)
<!---
   (Japan Time)
   - Tues 3:00pm (-31h)
   - Tues 10:00pm (-24h)
   - Wed 9:00am (-13h)
   - Wed 3:00pm (-7h)
   - Main call: Wed 9:00pm (-1h)
   - Anchor: Testing/Plugfest call Wed 10:00pm
   - Thu 9:00am (+11h)
   - Thu 3:00pm (+17h)
   - Thu 10:00pm (+24h)
   - Fri 6:00am (+32h) (tentative, Friday morning in Asia)
-->
   Click "A", "B" or "C" within the tables below to get the concrete WebEx information for each time slot.

|Time| US<br/>Pacific| US<br/>Eastern| UK| EU| China| Korea<br/>Japan|
|:---|:---|:---|:---|:---|:---|:---|
|[A](https://lists.w3.org/Archives/Member/member-wot-wg/2018Sep/0019.html)| 17:00-1d| 20:00-1d| 01:00| 02:00| 08:00| 09:00|
|[B](https://lists.w3.org/Archives/Member/member-wot-wg/2018Sep/0020.html)| 23:00-1d| 02:00| 07:00| 08:00| 14:00| 15:00|
|[C](https://lists.w3.org/Archives/Member/member-wot-wg/2018Sep/0021.html)| 06:00| 09:00| 14:00| 15:00| 21:00| 22:00|

Companies should note what slots they will be able to attend here:

|Time| `Tue.`<br/>`Sep. 25`| `Wed.`<br/>`Sep. 26`| `Thu.`<br/>`Sep. 27`| `Fri.`<br/>`Sep. 28`|
|:---|:---                 |:---                 |:---                 |:---                 |
|[A](https://lists.w3.org/Archives/Member/member-wot-wg/2018Sep/0019.html)   |  | Intel <BR/> (Panasonic) <BR/> Smart Things <br/> => [Minutes](https://www.w3.org/2018/09/26-wot-pf-slot-a-minutes.html)| Intel <BR/> (Panasonic) <BR/> Smart Things <br/> => [Minutes](https://www.w3.org/2018/09/27-wot-pf-slot-a-minutes.html)| Intel <BR/> Smart Things <br/> => [Minutes](https://www.w3.org/2018/09/28-wot-pf-slot-a-minutes.html)|
|[B](https://lists.w3.org/Archives/Member/member-wot-wg/2018Sep/0020.html)   | Intel <BR/> Panasonic <BR/> Oracle <BR/> Fujitsu <BR/> Hitachi <BR/> Siemens <br/> => [Minutes](https://www.w3.org/2018/09/25-wot-pf-slot-b-minutes.html)| Intel <BR/> Panasonic <BR/> Oracle <BR/> Fujitsu <BR/> Hitachi <BR/> Siemens <br/> => [Minutes](https://www.w3.org/2018/09/26-wot-pf-slot-b-minutes.html) | Intel <BR> Panasonic <BR/>Oracle <BR/> Fujitsu <BR/> Hitachi <BR/> Siemens <br/> => [Minutes](https://www.w3.org/2018/09/27-wot-pf-slot-b-minutes.html)| Intel <BR/> Oracle <BR/> Fujitsu <BR/> Hitachi <BR/> Siemens <br/> => [Minutes](https://www.w3.org/2018/09/28-wot-pf-slot-b-minutes.html)|
|[C](https://lists.w3.org/Archives/Member/member-wot-wg/2018Sep/0021.html)  | Intel <BR> (Panasonic) <BR/> Oracle <BR/> Smart Things <BR/> (Fujitsu) <BR/> (Hitachi) <BR/> Siemens <br/> => [Minutes](https://www.w3.org/2018/09/25-wot-pf-slot-c-minutes.html) | Intel <BR> Panasonic<BR/> Oracle <BR/> Smart Things <BR/> Fujitsu <BR/> Hitachi <BR/> Siemens <br/> => [Minutes](https://www.w3.org/2018/09/26-wot-pf-slot-c-minutes.html)| Intel <BR> (Panasonic) <BR/> Oracle<BR/> Smart Things <BR/> (Fujitsu) <BR/> (Hitachi) <BR/> Siemens <br/> => [Minutes](https://www.w3.org/2018/09/27-wot-pf-slot-c-minutes.html)| Intel<BR/> Oracle<BR/> Smart Things <BR/> (Fujitsu) <BR/> (Hitachi) <BR/> Siemens <br/> => [Minutes](https://www.w3.org/2018/09/28-wot-pf-slot-c-minutes.html)|

* Spreadsheet for Test Pairings
   - https://lists.w3.org/Archives/Member/member-wot-wg/2018Sep/0029.html (W3C login required)
   - Add topics you want to work on and mark your organization in topic rows where you want to join
   - Add topics on the “heap” at the end of the document if not sure about the time slot yet

* Google Hangout (Matthias)
   - Used to video stream remote devices such as Festo Live or Panasonic Lab
   - https://hangouts.google.com/call/zMIBFnSSTxd4KpiLcP5DAAEI
   
* Static IPs (for TAP VPN on vlan2 if not using DHCP); static 1-99, DHCP from 100-250
  NOT YET SET UP ... MAY NOT BE NEEDED!
   - Intel 10.8.2.(1-9)
   - Siemens 10.8.2.(10-19)
   - Fujitsu 10.8.2.(20-29)
   - Panasonic 10.8.2.(30-39)
   - Hitachi 10.8.2.(39-49)
   - Oracle 10.8.2.(40-49)
   - Smart Things 10.8.2.(50-59)

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



# Proxies

?

# Validation and Testing

* TD Validation
   - http://plugfest.thingweb.io/playground/
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
