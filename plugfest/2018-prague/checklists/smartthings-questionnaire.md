# General WoT Plugfest Participant Questionnaire

## Goals and Purpose
The purpose of this questionnaire is to build a collective plan for the Plugfest
- Collect information about Plugfest entries and participants
- Enable exchange of scenario and role information to provide use case alignment
- Developers should document both what they ARE doing for their plugfest contribution
  and what they SHOULD be doing for a practical deployment

## Application Scenarios (see also the Scenario Questionnaire)
Each Plugfest participant provides components to build one or more application scenarios.
A participant may bring all of the components needed to create an application or
they may bring some components, expecting other participants to provide the rest of the
components needed to complete the application. Describe the application scenario(s) you
expect to participate in.
- What is the problem being solved?
  * How can a 3rd party application or service easily integrate into the users IoT experience?
  * How can a user easily create and advertize web API instances for selected devices and capabilities, in order to integrate these 3rd party applications and services?
- How does the application handle life cycle events and phases
  * Registration and Discovery
    - The application uses a Thing Directory, and hosts its own directory in addition to using the plugfest shared directory
    - A server or agent registers TD(s) with a relatively short lifetime (600 seconds)
    - The server or agent sends refresh requests frequently (300 seconds)
    - The server includes semantic annotation from iotschema
    - The application developer uses the iotschema semantic repository to annotate an application "recipe" to drive discovery of input and output capabilities and interactions
    - The client does semantic queries to match required capability and interaction types
  * Configuration of resources
    - The server uses TD templates to create instances of exposed interactions
    - The client selects interaction instances (Properties, Actions...) to retrieve, observe, and update for actuation in order to fill in the recipe ingredient lists
    - For example, a recipe may be implemented as a Node-RED flow that configures its input and output nodes based on semantic annotation and discovery. (uses input nodes, output nodes, common directory nodes, common servient nodes)
  * Operational Data Exchange
    - Operational data exchanges uses http, CoAP, and MQTT protocols
    - Observe and Event notifications may use CoAP Observe, http long poll, or MQTT pub/sub
  * Shutdown and de-registration
    - I will use a registration client that tracks registered TD IDs on the server and tries to delete them as soon as the server instance is disabled or destroyed.
    - Registered TD instances have short lifetimes, so will expire shortly after the server
    is shut down or disconnected.
    - Registered things may offer a "management thing" interface which allows some platform and network state changes, for example re-register, cold re-start, etc.
  * Security life cycle
    - A client should exchange asymmetric key pairs with the servient in order to validate exchanges using key hashes as API credentials
    - Oauth may be used to incorporate user identity at the client end into the generation of the key pairs.
    - A third party authentication and authorization service (AS) may provide a kerberos token and refresh token.
    - Somehow this all works together to secure the access of the client to the server, and can be used to set up fine grain permissions such as ACLs

## Functionality and Roles implemented
  Describe the system components you are providing and the role performed in
  your application by each component. Provide some simple diagrams as needed.
  - What components of the application are you providing?
  - What components of your application can be provided by other participants?
    * Client
      - node-web servient, Node-RED based application
    * Client Application
      - Node-RED flows and node-wot Scripts
      - Simple recipe-based input, algorithm, output constructs
      - Node.js language
    * Server
      - node-wot Servient
      - Node-RED based server on Raspberry Pi
    * Server Application
      - node-wot: cloud instance, wot-proxy SmartThings Endpoint App
      - Node-RED: Server flows for local Raspberry Pi and cloud instances
    * Proxy
      - Plan to use hosted WoT Proxies from other Participants
      - May host proxy for cloud => local if needed for SmartThings LAN access
    * Thing Directory
      - Hosting a cloud instance of Thing Directory for the SmartThings Demo
      - Will also use shared local and cloud directories hosted on thingweb.io

# Addressing Target Requirements

## Thing Directory
- How is the life cycle of registration managed?
  * Registration client for Node-RED that uploads and refreshes periodically
  * node.js library for registration upload, refresh, cleanup life cycle
- How does the client application use Discovery/Thing Directory?
  * The client does semantic queries to match required capability and interaction type
- Is your application able to use SPARQL queries in discovery?
  * yes, also interested in graphQL query serialization using POST with response, etc.
- What are the TDs expected to be registered by servers and proxies?
  * (see TD folder, light, motion sensor, temperature sensor, illuminance sensor, loudness sensor)
- What information do you expect to use for discovery, e.g. semantic tags?
  * iotschema capability and interaction annotations
- What additional information and metadata about installed things
and their context would you like to use in discovery?
  * Feature of Interest annotations
- How would you like to add additional information and metadata about installed things
the Thing Directory?
  * FoI annotation included by adding links ("link" keyword) which contain relations and point to terms registered with iotschema (for the time being, link URLS are not likely to be validated in TD processing)

## Semantic Integration
- What are the thing types and capabilities you are planning to deploy
at the Plugfest?
  * light, motion sensor, temperature sensor, illuminance sensor, loudness sensor
- What are the interactions and data types exposed?
  * Properties, events, actions on simple data types and some multi-parameter actions
- How will your client application know what filter terms to use in discovery?
  * Application developer uses the information at iotschema.org to construct queries and present information to users
- How will your application or client library adapt to different data types and engineering units?
  * Multiple versions of code to convert units and types to normalize to a common internal application type
  * Manually at first, creating prototypes of automated conversions based on DataSchema information
  * Semantic annotation will be used to locate DataValues in schemas, in order to construct outgoing representations and extract DataValues from incoming representations. This can present applications with an abstract and normalized data model interface based on interactions and DataValues using programming constructs native to the programming language binding.

## Protocol Binding
- What network transfer protocols do your things, clients, proxies, directories, and applications support?
  * MQTT, CoAP, HTTP
- How does your client consume or otherwise use the information in the protocol bindings?
  * construct requests using a generic protocol layer (methods, options)
- How are Observable Properties handled in your protocol(s)?
  * Private instance of MQTT broker, and http long polling
- How are Events handled in your protocol(s)?
  * MQTT or http long polling
- How do you generate the protocol bindings for exposed things?
  * Servient exposes capabilities of its embedded or connected functions, and constructs the TD from corresponding TD fragment templates. The Servient uses a consistent pattern for a given underlying platform.

## Proxy
- How does your proxy maintain WAN connectivity to the LAN, including NAT and Firewall traversal?
  * MQTT broker in cloud instance
  * HTTP with TCP/TLS and keep-alive sockets, transactions initiated from behind firewall
- What protocols does your proxy consume?
  * HTTP, CoAP, MQTT
- What protocols does your proxy expose?
  * HTTP, CoAP, MQTT
- Does your proxy translate between protocols for a particular virtual thing?
  * Using scripts to consume a thing and proxy it to a different thing. Automation of DataSchemas and protocol bindings can make this east to orchestrate at scale
- Does your proxy use caching? If so, does it use web cache protocols e.g. max-age?
  * Yes, it will take advantage of web caching
- How does your proxy integrate with Thing Directory?
  * The proxy will discover exposed things to consume using a Thing Directory and register the exposed proxy things with a Thing Directory.
- How does your proxy create protocol bindings for exposed things?
  * It can either re-use the binding from the exposed thing or use a protocol translation rule and create a new binding

## Security Summary (see also the Security Questionnaire)
- What transport security methods are supported? **Example:** DTLS
  * DTLS and SSL are used in the low-level connected thing interfaces
- What access control features are implemented? **Example:** HTTP basic auth, kerberos tokens, ACLs
  * ACLs should be implemented for Web Resources and matched to subject/role identifiers such as kerberos tokens.
  * No access control is implemented in the plugfest demo WoT resources
- How is security material obtained and configured?
  * Security life cycle
    - A client should exchange asymmetric key pairs with the Servient in order to validate exchanges using key hashes as API credentials
    - Oauth may be used to incorporate user identity at the client end into the generation of the key pairs.
    - A third party authentication and authorization service (AS) may provide a kerberos token and refresh token.
    - Somehow this all works together to secure the access of the client to the server, and can be used to set up fine grain permissions such as ACLs
- What additional services are needed/provided such as Auth Server (AS)?
  * none

## Accessibility
- What Accessibility scenario(s) are being modeled?
  * none at this time
  * unassisted person with limited ability to use a cell phone but has physical mobility
  * may need to exclude sound, vision, or touch as primary interaction methods
  * may need some non-intrusive activity tracking and modeling
- What alternate modes of interaction are provided by the client and application?
  * none
  * voice
  * gesture + haptic
  * Learning algorithm assistance
- What are additional requirements on the Thing Directory, Server and Proxy to support your Accessibility Scenario?
  * Store and expose extended context information
