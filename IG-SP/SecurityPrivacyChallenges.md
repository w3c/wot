*Note: current contents present an initial draft state. They serve the discussion in the WoT IG*

This artifact identifies challenges that drive security and privacy in WoT. The security and privacy practices in the traditional Web as well as office resp. enterprise IT are used as a reference for presenting these challenges.

# System Scale
The overall number of system actors/entities grows significantly<br/>
##Number of callers who are to-be-authenticated and authorized: grows by a factor of ca. 10
* *Traditional Web and office IT*: up to 7*’ users (global population)
<br/>
* *Web-of-Things*: up to 50*’ devices (estimation for 2020)
##Number of callees that are to-be-authenticated: grows by a factor of ca. 10000
* *Traditional Web*: ca. 5* certificates issued to Web servers (estimation for 2015)
<br />
* *Web-of-Things*: 50*’ devices (estimation for 2020)
# System Capabilities
The capabilities of individual system actors/entities resp. their networks degregates significantly<br/>
##Devices: constrained devices added
* *Traditional Web and office IT*: average devices have a computational power that ranges factors above IETF RFC 7228 class 2/1/0 devices (see [Bor14])
<br />
* *Web-of-Things*: adds IETF RFC 7228 class 2/1/0 devices<br/> 
##Networks: constrained networks added
* *Traditional Web and office IT*: (fairly) reliable networks and transports 
<br />
* *Web-of-Things*: lossy networks, intermittent connectivity, unreliable transports
# Management
New system management approaches (e.g. actors dynamically introducing other entities) and new system management actors (individual end users) appear:<br/>
##Bootstrapping: from a priori to a posteriori knowledge
* *Traditional Web and office IT*: callers/callees have some a priori knowledge about each other in order to interact
<br />
* *Web-of-Things*: not all callers/callees can be assumed to have a priori knowledge about each other<br/>
##Administration: adds end users as system managers
* *Traditional Web and office IT*: admin-managed systems, owned by legal entities
<br />
* *Web-of-Things*: admin-managed systems, owned by legal entities (e.g. industrial Internet, I4.0) as well as end user-managed systems, owned by individuals (e.g. smart home)
# Nature of resources
Integration of physical things with the Web does happen:<br/>
##Physical goods: in addition to digital goods
* *Traditional Web and office IT*: concerned with digital goods e.g. Web pages, messages, contact/mapping information, mp3 file where reproduction, relocation of item instances at almost no cost
<br />
* *Web-of-Things*: also concerned with physical goods e.g. cars, lighting devices, smoke sensors, thermostats, wind turbines where reproduction, relocation of item instances comes at cost<br/>
##Sustaining: more tedious
* *Traditional Web and office IT*: system updating/patching straight-forward
<br />
* *Web-of-Things*: system updating/patching not straight-forward (e.g. firmware on constrained network devices)
# Exercising control
Generalizations are needed:
##Authorization: from pull to push
* *Traditional Web and office IT*: pull models in style of the following are a commonplace 
  * Resource endpoint gets a request along with a security token that only provides a subset of the information which is needed for decision making e.g. an identifier of the caller
  * Resource endpoint consults a backend system to obtain needed information e.g. group membership or role assignment
* *Web-of-Things*: interaction with backend systems present an issue (extra roundtrips), push models are preferred
##Ownership: needs to be modelled
* *Traditional Web and office IT*: change of ownership is addressed in trivial fashion (create copy and assign to new owner, swap credentials) 
<br />
* *Web-of-Things*: change of ownership continues to be an issue as such events change the authority of authorization. Trivial solutions for change of ownership fall short 
# Security mechanisms
Additonal mechanisms are needed:<br/>
##Cryptographic mechanisms: downscaling needed 
* *Traditional Web and office IT*: current mechanisms (including cryptographic primitives, cryptographic objects, security tokens, security protocols) cover IETF RFC 7228 class 2++ devices
<br />
* *Web-of-Things*: current mechanisms may be used with IETF RFC 7228 class 2 devices, but rather not with classes 1 and 0<br/>
##Risk management mechanisms: de-perimeterization
* *Traditional Web and office IT*: enforcement (including intrusion detection/prevention, throttling, risk-based authentication) focuses on perimeters / system premises
<br />
* *Web-of-Things*: perimeters / system premises disappear (esp. for IETF RFC 7228 classes 2/1) resp. their granularity changes
