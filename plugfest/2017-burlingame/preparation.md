# Plugfest preparation for TPAC2017

# 1. Servients structure

![images](Servients_TPAC2017.png)

# 2. Servients and Protocols for the Plugfest

| Servients | Fujitsu | Panasonic | Internet Research Institute | Siemens | Lemonbeat | Intel | SmartThings | EUROCOM | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Application | Scripting, NodeRED | Scripting, NodeRED | NodeRED | | | | | | | |
| =Protocol | HTTP(S) | HTTPS+WSS | HTTP(S) | | | | | | | |
| Remote proxy | Server | | | | | | | | | |
| =Protocol | HTTP(S) | | | | | | | | | |
| Local proxy | Gateway | | | | | | | | | |
| =Protocol | HTTP | | | | | | | | | |
| Device | LED light, Air conditioner, Blind | LED light, Air conditioner, Robot cleaner | | | | | | | | |

# 3. High level description of Issues

## Fujitsu’s issues
* Interface between Servients
* Authentication
  * Discovery and exchange of TDs
  * Firewall and NAT traversal
  * Event operation using HTTP
* Sequence diagram 
* Thing Description management
  * Life cycle management of TD
  * TD repositories on the Servient

## Panasonic’s issues
* Event operation using WSS
## Siemens’s issues
## Intel’s issues
## SmartThings’s issues
## IRI’s issues
## xxx’s issues

# 4. Deadline and Schedule

## Oct. 18
* Complete the table “Servient and protocol”
  * Who provides which servients?
* Collection of TD for the Servients on the plugfest
* Application scenarios
## Oct. 25
* Specify Inter-Servient interface
## Open: 9am-6pm on Nov. 4, 5
* 1st day: preparation and plugfest
* 2nd day: plugfest in the morning 
* demonstration and discussion in the afternoon
