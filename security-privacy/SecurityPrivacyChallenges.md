*Note: current contents present an initial draft state. They serve the discussion in the WoT IG*

This artifact identifies aspects that are specific for WoT and that have an impact on WoT security and privacy. Common properties/practices in the traditional Web as well as office resp. enterprise IT are used as a reference for presenting them.

# System Scale
The overall number of system actors/entities grows significantly:

####Number of callers who are to-be-authenticated and authorized: grows by a factor of ca. 10
* *Traditional Web and office IT*: up to 7’’ users (global population)
* *Web-of-Things*: up to 50’’ devices (estimation for 2020)

####Number of callees that are to-be-authenticated: grows by a factor of ca. 10000
* *Traditional Web*: ca. 5’ certificates issued to Web servers (estimation for 2015)
* *Web-of-Things*: 50’’ devices (estimation for 2020)

# System Capabilities
The capabilities of individual system actors/entities resp. their networks degregates significantly:

####Devices: constrained devices added
* *Traditional Web and office IT*: average devices have a computational power that ranges factors above IETF RFC 7228 class 2/1/0 devices (see [Bor14])
* *Web-of-Things*: adds IETF RFC 7228 class 2/1/0 devices

####Networks: constrained networks added
* *Traditional Web and office IT*: (fairly) reliable networks and transports 
* *Web-of-Things*: lossy networks, intermittent connectivity, unreliable transports

# Management
New system management actors (individual end users) and new system management approaches (e.g. actors dynamically introducing other entities) appear:

####Administration: adds end users as system managers
* *Traditional Web and office IT*: admin-managed systems, owned by legal entities
* *Web-of-Things*: admin-managed systems, owned by legal entities (e.g. industrial Internet, I4.0) as well as end user-managed systems, owned by individuals (e.g. smart home)

####Bootstrapping: from a priori to a posteriori knowledge
* *Traditional Web and office IT*: callers/callees have some a priori knowledge about each other in order to interact
* *Web-of-Things*: not all callers/callees can be assumed to have a priori knowledge about each other

# Nature of resources
Integration of physical things does happen:

####Physical goods: in addition to digital goods
* *Traditional Web and office IT*: concerned with digital goods e.g. Web pages, messages, contact/mapping information, mp3 file where reproduction, relocation of item instances at almost no cost
* *Web-of-Things*: also concerned with physical goods e.g. cars, lighting devices, smoke sensors, thermostats, wind turbines where reproduction, relocation of item instances comes at cost

####Sustaining: more tedious
* *Traditional Web and office IT*: system updating/patching straight-forward. Keeping all components of a system up-to-date is feasible
* *Web-of-Things*: system updating/patching not straight-forward (e.g. firmware on constrained network devices).Keeping all components of a system up-to-date during their lifetime may be hard (note that physical things can have a long lifetime, for instance 10-20 years in case of critical infrastructure components, software components in general and cryptographic algorithms in particular could become outdated during their lifetime) 

# Exercising control
Generalizations are needed:

####Ownership: needs to be reflected
* *Traditional Web and office IT*: change of ownership tends to be neglected resp. is addressed in trivial fashion (such as: create copy and assign to new owner or swap credentials) 
* *Web-of-Things*: change of ownership changes the authority of authorization. Trivial solutions for change of ownership will fall short

####Authorization: from pull to push
* *Traditional Web and office IT*: pull models in style of the following are a commonplace 
  * Resource endpoint gets a request along with credentials that establish a subset of the information which is needed for decision making e.g. the identifier of a caller
  * Resource endpoint consults a backend system to obtain additional information e.g. group membership or role assignment
* *Web-of-Things*: interaction with backend systems present an issue (extra roundtrips), push models might be preferred

# Security mechanisms
Additonal mechanisms are needed:

####Cryptographic mechanisms: downscaling needed 
* *Traditional Web and office IT*: current mechanisms (including cryptographic primitives, cryptographic objects, security tokens, security protocols) cover IETF RFC 7228 class 2++ devices
* *Web-of-Things*: current mechanisms may be used with IETF RFC 7228 class 2 devices, but rather not with classes 1 and 0

####Risk management mechanisms: de-perimeterization
* *Traditional Web and office IT*: enforcement (including intrusion detection/prevention, throttling, risk-based authentication) focuses on perimeters / system premises
* *Web-of-Things*: perimeters / system premises disappear (esp. for IETF RFC 7228 classes 2/1) resp. their granularity changes
