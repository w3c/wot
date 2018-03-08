# General WoT Plugfest Participant Questionnaire

## Goals and Purpose
The purpose of this questionnaire is to build a collective plan for the Plugfest
- Collect information about Plugfest entries and participants
- Enable exchange of scenario and role information to provide use case alignment
- Developers should document both what they ARE doing for their plugfest contribution
  and what they SHOULD be doing for a practical deployment

## Application Scenarios (see also the Scenario Questionnaire)
Each Plugfest participant provides components to build one or more application scenarios.
A participant may breing all of the components needed to create an application or
they may bring some components, expecting other participants to provide the rest of the
components needed to complete the application. Describe the application scenario(s) you
expect to participate in.
- What is the problem being solved?
- How does the application handle life cycle events and phases
  * Registration and Discovery
  * Configuration of resources
  * Operational Data Exchange
  * Shutdown and de-registration

## Functionality and Roles implemented
  Describe the system components you are providing and the role performed in
  your application by each component. Provide some simple diagrams as needed.
  - What components of the application are you providing?
  - What components of your application can be provided by other participants?
    * Client
    * Client Application
    * Server
    * Server Application
    * Proxy
    * Thing Directory

# Addressing Target Requirements

## Thing Directory
- How is the life cycle of registration managed?
- How does the client application use Discovery/Thing Directory?
- Is your application able to use SPARQL queries in discovery?
- What are the TDs expected to be registered by servers and proxies?
- What information do you expect to use for discovery, e.g. semantic tags?
- What additional information and metadata about installed things
and their context would you like to use in discovery?
- How would you like to add additional information and metadata about installed things
the Thing Directory?

## Semantic Integration
- What are the thing types and capabilities you are planning to deploy
at the Plugfest?
- What are the interactions and data types exposed?
- How will your client application know what filter terms to use in discovery?
- How will your application or client library adapt to different data types and engineering units?

## Protocol Binding
- What network transfer protocols do your things, clients, proxies, directories, and applications support?
- How does your client consume or otherwise use the information in the protocol bindings?
- How are Observable Properties handled in your protocol(s)?
- How are Events handled in your protocol(s)?
- How do you generate the protocol bindings for exposed things?

## Proxy
- How does your proxy maintain WAN connectivity to the LAN, including NAT and Firewall traversal?
- What protocols does your proxy consume?
- What protocols does your proxy expose?
- Does your proxy translate between protocols for a particular virtual thing?
- Does your proxy use caching? If so, does it use web cache protocols e.g. max-age?
- How does your proxy integrate with Thing Directory?
- How does your proxy create protocol bindings for exposed things?

## Security Summary (see also the Security Questionnaire)
- What transport security methods are supported? **Example:** DTLS
- What access control features are implemented? **Example:** HTTP basic auth, kerberos tokens, ACLs
- How is security material obtained and configured?
- What additional services are needed/provided such as Auth Server (AS)?

## Accessibility
- What Accessibility scenario(s) are being modeled?
- What alternate modes of interaction are provided by the client and application?
- What are additional requirements on the Thing Directory, Server and Proxy to support your Accessibility Scenario?
