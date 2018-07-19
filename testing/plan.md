Status: Work in Progress

# W3C Web of Things Testing and Validation Plan
This document describes how the normative specifications in the following documents,
and implementations following them, are to be tested and validated:
[W3C WoT Thing Description]()
[W3C WoT Protocol Bindings]()
[W3C WoT Scripting API]()

In addition, the [Web of Things WG charter] also requires security validation.
General security and privacy considerations for all possible WoT implementations are
discussed in the [W3C WoT Security and Privacy Considerations]() document
but this document is non-normative.  In addition, the WoT specifications
do allow description of insecure interfaces by design (some existing devices
may simply be insecure and the WoT description will not change this) but
the intention is that it is _possible_ to perform secure implementations.
Therefore security testing is limited to the security configurations
defined in the non-normative [W3C WoT Best Security Practices].

## Thing Description Validation
Thing Description validation is the process of determining whether a given Thing Description file
satisfies the specification in the [W3C WoT Thing Description]() document.

## Thing Network Interface Testing

## Security Testing
Security Testing is the process of testing a given implementation of a Thing for
insecurities.  It is not possible to prove if a Thing is secure, but it is possible
to test for known insecurities.  

WoT security testing is is focussed on testing whether unauthorized access to
a device exposing a network interface described by a WoT Thing Description
is possible.  We do _not_ test the following:
1. Whether a device is safe from a malicious script, that is, we do not test
   whether the Scripting API is secure.  This is based on the assumption that
   the scripts executed in a WoT runtime are from a trusted source.
2. Security of setup, key distribution, or provisioning.  WoT security testing
   only considers security testing during a device's "operational phase", 
   e.g. after on-boarding and key provisioning have been performed.
3. Protocols other than HTTP, CoAP, and MQTT.  The WoT TD does have
   extension points to allow the description of Things with network
   interfaces based on other protocols.  However it would be impossible
   to define tests for any possible protocol, so we limit testing to those
   of immediate practical importance.
4. Things not following the [W3C WoT Best Security Practices]().  It is 
   perfectly possible and even reasonable to use the WoT standard to define
   network interfaces to insecure devices, for example, Things with no
   access controls or payload security.  However, in this case, security
   testing does not tell us anything we don't know.  Instead we focus testing
   on implementations that _should_ be secure.
5. Delivery of the TD. Several aspects of security and privacy in a WoT
   system do depend on delivering the TD securely: preventing access to it
   by unauthorized users and validating that it was delivered without
   modification from a trusted and authenticated source.  However, the 
   WoT specification does not currently
   include a specification of TD delivery mechanisms, i.e. there is no
   standard interface for a Thing Directory or discovery mechanism.
6. Proxy services.  Practical WoT systems may have to use proxies or
   other mechanisms for NAT traversal. These proxies may have web APIs
   that may be insecure.  We do not test for this and a security failure
   due to an insecure proxy should not necessarily be interpreted as 
   a security failure of the WoT system in particular.
7. Gateway security.  Many WoT systems may have to direct network traffic
   through a gateway or other intermediate system.  We do not directly
   test the seecurity of these systems, but like proxies, a compromise
   of a gateway may lead to compromized WoT systems.

The following sections break down the testing strategy by protocol.

### HTTP
Things based on HTTP are essentially web services, and can be tested using
existing best practices for testing the security of such services.

**TODO: Details: TLS testing, OWASP recommendations, etc.**

### CoAP

**TODO: Details: DTLS testing, OCF/LwM2M certification, etc.**

### MQTT

**TODO: Details: DTLS testing, password cracking, etc.**

## Task Tracker
* Investigate Spec Tracking tools
    - Kaz, Lagally – to investigate W3C requirements and tools 
    - Target date: third week of April
    - Status: Done; no suitable existing tools found; will continue to investigate.
* Update specifications with clear normative assertions
    - Per task force - person assigned
    - Follow RFC2119
    - Target date: beginning of May
    - Status: done, but needs to be updated in revised specifications.
* Extract normative assertions
    - Ideally automatic; but worst case, manual
    - Target date: mid-May
    - Status: Tool implemented, but PR now not mergable.
* Update Test Definitions
    - Per deliverable – satisfy W3C requirements
    - Should track specification updates
    - Could associate with pull requests
    - Target date: mid-June
    - Status: Still in progress.
* Implement tests
    - Compare with current tests; check off definitions
        - Target date: end of June
    - Fill gaps
        -Target date: ongoing; done by spec release
    - Test suite - own repo
    - Online things and simulators - for continuous regression testing
    - Status: Still in progress.

