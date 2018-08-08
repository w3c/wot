Status: Work in Progress

# W3C Web of Things Testing and Validation Plan
This document describes how the normative specifications in the following documents,
and implementations following them, are to be tested and validated:
- [W3C WoT Thing Description](https://w3c.github.io/wot-thing-description/)
- [W3C WoT Protocol Bindings](https://w3c.github.io/wot-binding-templates/)
- [W3C WoT Scripting API](https://w3c.github.io/wot-scripting-api/)

The [Web of Things WG Charter](https://www.w3.org/2016/12/wot-wg-2016.html)
also requires security validation.
General security and privacy considerations for WoT implementations are
discussed in the non-normative 
[W3C WoT Security and Privacy Considerations](https://w3c.github.io/wot-security/) 
document.
Note that the WoT specification
allows description of insecure interfaces by design (some existing 
"brownfield" devices may simply be insecure and describing them with a WoT 
Thing Description will not change this) but
the intention is that it is _possible_ to perform secure WoT implementations.
Therefore security testing is limited to the security configurations
defined in the
[Best Practices](https://w3c.github.io/wot-security#best-practices)
section of the (non-normative)
[W3C WoT Security and Privacy Considerations](https://w3c.github.io/wot-security/) 
document.

## Normative Assertions
The starting point for testing is the set of normative assertions
in the specifications.  For each normative assertion, a testing strategy
needs to be defined.  A tool has been developed to extract each normative
assertion from the specification documents and associate each one
with a specific test specification.  

Here are links to the 
current output of this tool for the relevant specifications:
- [W3C WoT Thing Description - Test Specifications](https://rawgit.com/mmccool/wot-thing-description/assertions2/testing/plan.html)
    * Currently incomplete, see [WoT TD PR#170](https://github.com/w3c/wot-thing-description/pull/170)
    * Also needs to be applied to protocol bindings and scripting API
    * Some normative assertions given in non-HTML form (SHACL, WDL, tables, etc.) are not yet covered

Structuring tests around the normative assertions
is important for validation of the standard, as each assertion
needs to be associated with a mechanism for testing it.
However, in practice testing of implementations falls into a set of
categories subject to particular tools, testing approaches, and "test suites".
These categories are described in the following sections.

### To Do
* Better coverage of normative assertions, e.g. for constraints specified in ontology files
* Specific testing plans for each normative assertion for Thing Description deliverable
* Normative assertions and specific testing plan for each for Scripting API deliverable

## Thing Description Validation
Thing Description validation is the process of determining whether a given Thing Description file
satisfies the specification in the
[W3C WoT Thing Description](https://w3c.github.io/wot-thing-description/)
document.

In summary, Thing Descriptions can be validated in the following ways:
1. JSON syntax validation.  This simply checks that a TD is a valid JSON document.
   Note that JSON-LD 1.1 files must also be valid JSON.
2. Validation against a JSON Schema.  A Thing Description can be validated
   using a JSON validator using a JSON Schema.  This checks for several normative
   structural requirements, for example, whether mandatory elements are present
   and whether they have acceptable types.  Note: a single JSON Schema cannot
   catch several classes of error in TDs due to extension vocabularies, which
   allow additional structures defined by the extension to occur in many places.
   Due to this, the base TD JSON Schema is necessarily tolerant of additional
   properties in these places.  It only checks that if defined terms are 
   present that they have the expected structure.
3. Validation against a JSONLD ontology. This tests the RDF structure and 
   vocabulary.  It can check that (for example) no terms are used that are
   not defined in an in-context vocabulary.
4. Validation against OWL ontology.  TD uses several interferencing rules
   based on OWL, and additional tests can be used to verify that inferenced
   values (for example) are consistent.
5. Special case processing (currently not performed; TBD).
   If necessary, special-purpose tools may need to be built to validate any requirements not
   captured by the above four approaches.

The application of the first four of the above tests is currently performed using the 
[Thingweb Playground](http://plugfest.thingweb.io/playground/) tool using
code and schemas defined in the
[Thingweb Playground Git Repo](https://github.com/thingweb/thingweb-playground).
These tests can now be run using either the browser or a command-line
scriptable interface.

### To Do:
   * Determine if any special-purpose processing is needed for any normative assertion.

## Thing Network Interface Testing
Things expose network APIs and these network APIs are described in Thing
Descriptions.  Part of testing a Thing should be to confirm that it actually
provides a network API consistent with its Thing Description.

The [WoT Test Bench](https://github.com/jplaui/testbench) tool does this.
Given a TD, it generates and executes a set of network calls to exercise and
validate the described API.

### To Do:
   * A limitation of this tool is that it cannot validate aspects of
     the network API that must be initiated by the Thing, such as events.
   * We may want to consider augmenting Things with a standard test API
     so that a Thing can be put into a "test mode" and events triggered
     remotely.
 
## Fuzz Testing
Thing Network Testing primarily checks functionality, but not behaviour
under unexpected input.  This form of testing is especially useful for
revealing security vulnerabilities, including unknown vulnerabilities.

There are
[many fuzz testing suites available](https://wildfire.blazeinfosec.com/fuzzing-proprietary-protocols-with-scapy-radamsa-and-a-handful-of-pcaps/)
for HTTP-based web services
and some of these can be extended to CoAP and MQTT.  An example is
[Scapy](https://scapy.net/); other options include
[Burp](https://en.wikipedia.org/wiki/Burp_suite) (which is however limited to HTTP)
and [Radamsa](https://gitlab.com/akihe/radamsa).

One issue is how to generate input so that it tests the appropriate levels of 
security in the Thing's interface, e.g. input should reach the protocol bindings
level without getting discarded earlier.

### To Do
   * Determine if any of the tools above are suitable for fuzz testing WoT devices
     or if we should extend the Thing Network Interface Testing tool.

## Scripting API Testing
Currently the [node-wot](https://github.com/eclipse/thingweb.node-wot)
implementation of the WoT Scripting API and servient
runtime includes a set of test cases and a "Test Thing".

### To Do:
   * These should be decoupled from node-wot, turned into an
     independent test suite, and be made applicable to any WoT
     runtime implementation.
   * Normative assertions in the WoT Scripting API that need to be 
     tested as part of the Test Suite need to be identified and 
     suitable tests implemented.
   * As part of the WoT Scripting API is specified using WebIDL and/or
     TypeScript definitions these aspects can be verified using those
     tools rather than implementation tests.  In particular, the 
     signature of the WoT Scripting API calls can be verified using
     these tools rather than (or in addition to) runtime tests.

## Security Testing
Security Testing is the process of testing a given implementation of a Thing for
insecurities.  It is not possible to prove if the WoT specification is secure,
it's not even possible to prove if a specific implementation of Thing is secure,
but it is possible to test for known insecurities in the implementation of
a specific Thing.  WoT testing should demonstrate is that it is _possible_ to
implement a Thing satisfying the WoT specification that is free from a reasonably
complete set of known vulnerabilities, and is robust enough in the face of 
unexpected input that we can have some confidence that it is free of unknown
vulnerabilities.

Even though we cannot prove a negative, we should test both positive and negative security.
* Positive security testing checks an interface under normal operation and verifies that access is not
  granted if incorrect credentials are supplied, and is if they are.  This is essentially
  just functional testing of the security implementation, and will consist of a set
  of specific test cases both with and without the correct credentials.
* Negative security checks for vulnerabilities, i.e. unintentional, non-functional behaviour
  that allows unauthorized access.

The latter "negative" form of WoT security testing should be focused on testing whether
unauthorized access to a specific device exposing a network interface described by a
WoT Thing Description is possible.  We do _not_ test the following:
1. Whether a device is safe from a malicious script, that is, we do not test
   whether the WoT Scripting API is secure.  This is based on the assumption that
   the scripts executed in a WoT runtime are from a trusted source.
2. Security of setup, key distribution, or provisioning.  WoT security testing
   should only consider security testing during a device's "operational phase", 
   e.g. after on-boarding and key provisioning have been performed.
3. Protocols other HTTP, CoAP, and MQTT.  The WoT TD specification has
   extension points to allow the description of Things with network
   interfaces based on other protocols.  However it would be impossible
   to define tests for any possible protocol, so we limit testing to those
   of immediate practical importance.
4. Things not following the 
   [WoT Security Best Practices](https://w3c.github.io/wot-security#best-practices)
   It is perfectly possible and even reasonable to use the WoT standard to describe
   network interfaces to insecure devices, for example, Things with no
   access controls or payload security.  However, in this case, security
   testing does not tell us anything we don't know.  Instead we focus testing
   on implementations that _should_ be secure.  In particular, we will not
   only limit testing to HTTP, CoAP, and MQTT, we will limit testing to 
   the _secure variants_ of these protocols: HTTPS, CoAPS, 
   and [MQTTS](https://www.hivemq.com/blog/mqtt-security-fundamentals-tls-ssl),
   which combine the base protocol with either TLS or DTLS.
5. Delivery of the TD. Several aspects of security and privacy in a WoT
   system depend on delivering the TD securely: preventing access to it
   by unauthorized users and validating that it was delivered without
   modification from a trusted and authenticated source.  However, the 
   WoT specification does not currently
   include a specification of TD delivery mechanisms, i.e. there is no
   standard interface for a Thing Directory or discovery mechanism.
6. Proxy services.  Practical WoT systems may have to use proxies or
   other mechanisms for NAT traversal, state caching, or privacy masking,
   among other applications.  These proxies may also have web APIs for
   management functions that may be insecure.
   We do not test for this and a security failure
   due to an insecure proxy should not necessarily be interpreted as 
   a security failure of the target Thing itself.
7. Gateway security.  Many WoT systems may have to direct network traffic
   through a gateway or other intermediate system.  We do not directly
   test the seecurity of these systems, but like proxies, a compromise
   of a gateway may lead to compromised WoT systems.

The following sections break down the testing strategy by protocol.

### HTTPS
As noted above, we only test the secure variant of HTTP, HTTPS, which
combines the base HTTP protocol with TLS.  HTTP inself is known to be
insecure.

Things based on HTTPS are essentially web services, and can be tested using
existing best practices for testing the security of such services.

For example, TLS security can be tested using online services such as
the [Qualys SSL Server Test](https://www.ssllabs.com/ssltest/index.html).
This will check if the target system is protected against known
vulnerabilities such as Heartbleed.

A more comprehensive testing framework for web services is provided
by [OWASP](https://www.owasp.org/index.php/OWASP_Testing_Project).
Commercial tools that automate web service penetration tests include
[Netsparker](https://www.netsparker.com/penetration-testing-tool/),
[Acunetix](https://www.acunetix.com/penetration-testing/), and
[Metasploit](https://www.metasploit.com/).
These can be used to automatically scan webservices for large
numbers of known vulnerabilities.
The Acunetix tool, for example, scans for over 4,000 vulnerabilities.

Other tools used by penetration testers include 
[Wireshark](https://www.wireshark.org/) 
(for protocol scanning), 
[SATAN](http://www.porcupine.org/satan/),
[nmap](https://nmap.org/) (for network exploration),
and password cracker tools.  Tools for
browser exploitation and social engineering also exist
but are not relevant to the WoT context.

Protocol and network scanning tools are useful in the hands
of a skilled penetration test team but do not necessarily provide
complete, automated solutions for security testing.
While useful in a production environment, 
password cracking tools (looking for weak passwords) is
not really an issue for WoT testing since 
[WoT Security Best Practices](https://w3c.github.io/wot-security#best-practices)
recommends the use (for obvious reasons) strong passwords not
subject to brute-force attack. The use of a weak password is
not a failure of the implementation itself, which is what we want
to detect.  

### CoAPS
As noted above, we only test secure variants of protocols.
For CoAP, this is DTLS, so we can use DTLS testing tools.
In addition, CoAP devices may have already been tested
following the requirements of other standards, eg. OCF or LwM2M.
We will not repeat those tests, although our positive testing
may have to satisfy the access requirements of such standards
in order to allow other forms of testing.

#### To Do
   * Details of DTLS testing

### MQTTS
MQTT has no standard secure variant.  However, it can be encapsulated
in TLS.  We define and use such a secure variant for testing.  This
secure variant should be based on variants in common use.  An example
would be the secure configuration supported by AWS IoT.

#### To Do
   * Details of MQTT TLS test encapsulation

### Network Configuration Testing
Several services associated with the WoT, such as proxies, need to be 
tested in the context of specific network configurations, such as 
segmented networks (eg a network with Things located behind one or
more NATs and needing the help of proxies to provide access from
the rest of the network).

While proxy services and NAT traversal mechanisms are not part of the
formal normative deliverables for the WoT, their correct functioning
are important to the practical usage and deployment of a WoT system.

### To Do:
   * In order to test such services, a suitable network configuration needs
     to be established.
   * This can be done using VLAN technology, e.g. by setting up
     software-defined virtual networks mimicing appropriate test configurations.
   * Enabling remote access to such virtual test networks would
     also be useful to support "virtual plugfests".

## Task Tracker
* Investigate Spec Tracking tools
    - Kaz, Lagally – to investigate W3C requirements and tools 
    - Target date: third week of April
    - Status: Done; no suitable existing tools found; will continue to investigate.
* Update specifications with clear normative assertions
    - Per task force - person assigned
    - Follow RFC2119
    - Target date: beginning of May
    - Status: Partially done.  Some gaps and needs to be updated in revised specifications.
* Extract normative assertions
    - Ideally automatic; but worst case, manual
    - Target date: mid-May
    - Status: Partially done. Tool implemented, TD assertions marked up, but PR needs to be merged.   
      The tool is only deployed so far for TD, needs to also be applied to Scriptiong API.
* Update Test Definitions
    - Per deliverable – satisfy W3C requirements
    - Should track specification updates
    - Could associate with pull requests
    - Target date: mid-June
    - Status: Still in progress.  Normative assertion extraction tool does support a separate file giving test specifications.
* Implement tests
    - Compare with current tests; check off definitions
        - Target date: end of June
    - Fill gaps
        -Target date: ongoing; done by spec release
    - Test suite - own repo
    - Online things and simulators - for continuous regression testing
    - Status: Still in progress.

