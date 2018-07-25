Status: Work in Progress

# W3C Web of Things Testing and Validation Plan
This document describes how the normative specifications in the following documents,
and implementations following them, are to be tested and validated:
- [W3C WoT Thing Description](https://w3c.github.io/wot-thing-description/)
- [W3C WoT Protocol Bindings](https://w3c.github.io/wot-binding-templates/)
- [W3C WoT Scripting API](https://w3c.github.io/wot-scripting-api/)

In addition, the [Web of Things WG Charter](https://www.w3.org/2016/12/wot-wg-2016.html)
also requires security validation.
General security and privacy considerations for all possible WoT implementations are
discussed in the 
[W3C WoT Security and Privacy Considerations](https://w3c.github.io/wot-security/) 
document but this document is non-normative.  In addition, the WoT specifications
do allow description of insecure interfaces by design (some existing 
"brownfield" devices may simply be insecure and describing them with a WoT 
Thing Description will not change this) but
the intention is that it is _possible_ to perform secure WoT implementations.
Therefore security testing is limited to the security configurations
defined in the  
[Best Practices](https://w3c.github.io/wot-security#best-practices)
section of the (non-normative)
[W3C WoT Security and Privacy Considerations](https://w3c.github.io/wot-security/) 
document.

## Thing Description Validation
Thing Description validation is the process of determining whether a given Thing Description file
satisfies the specification in the [W3C WoT Thing Description]() document.

In summary, Thing Descriptions can be validated at four levels:
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

## Thing Network Interface Testing

**TODO: Describe Ege's Network testing**

## Scripting API Testing

**TODO: Describe Scripting API Test Suite**

## Security Testing
Security Testing is the process of testing a given implementation of a Thing for
insecurities.  It is not possible to prove if the WoT specification is secure,
it's not even possible to prove if a specific implementation of Thing is secure,
but it is possible to test for known insecurities in the implementation of
a specific Thing.  What testing should demonstrate is that it is _possible_ to
implement a Thing satisfying the WoT specification that is free from a reasonably
complete set of known vulnerabilities.

WoT security testing should be focused on testing whether unauthorized access to
a specific device exposing a network interface described by a WoT Thing Description
is possible.  We do _not_ test the following:
1. Whether a device is safe from a malicious script, that is, we do not test
   whether the WoT Scripting API is secure.  This is based on the assumption that
   the scripts executed in a WoT runtime are from a trusted source.
2. Security of setup, key distribution, or provisioning.  WoT security testing
   only considers security testing during a device's "operational phase", 
   e.g. after on-boarding and key provisioning have been performed.
3. Protocols other than HTTP, CoAP, and MQTT.  The WoT TD specification has
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
   on implementations that _should_ be secure.
5. Delivery of the TD. Several aspects of security and privacy in a WoT
   system do depend on delivering the TD securely: preventing access to it
   by unauthorized users and validating that it was delivered without
   modification from a trusted and authenticated source.  However, the 
   WoT specification does not currently
   include a specification of TD delivery mechanisms, i.e. there is no
   standard interface for a Thing Directory or discovery mechanism.
6. Proxy services.  Practical WoT systems may have to use proxies or
   other mechanisms for NAT traversal, state caching, or privacy masking,
   among other applications.  These proxies may have web APIs
   that may be insecure.  We do not test for this and a security failure
   due to an insecure proxy should not necessarily be interpreted as 
   a security failure of the target Thing itself.
7. Gateway security.  Many WoT systems may have to direct network traffic
   through a gateway or other intermediate system.  We do not directly
   test the seecurity of these systems, but like proxies, a compromise
   of a gateway may lead to compromised WoT systems.

The following sections break down the testing strategy by protocol.

### HTTP
Things based on HTTP are essentially web services, and can be tested using
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

