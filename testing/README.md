# Testing and Validation

## Current Status

### TD Validation
* TD Playground 
    - Browser scripts that validate TD
    - Syntax of JSON Objects
    - Schema validation
    - Value validation
        - valid URL syntax for base
        - deferenceable @context
        - etc

Issues
* When does validation happen?
    - Instance vs. template/prototype/class
* JSON-LD 1.1
    - Frame tests, tooling, etc.
* Usage of ontologies
    - Using terms in the right context
    - Can't check external ontologies in general, not even iot.schema.org
    - Should (probably) provide hooks for ontology test plugins

### Implementation Test Cases
Charter requires at least two separate implementations.
What is an implementation, and how do we separate tests from those implementations?
* node-wot
    - TestThing
* Thing Test Bench

### Test Descriptions
Starting list:
* List of test cases under 2016 plugfest

More generally:
* Must have a test for each normative definition in the specification (MUST, SHOULD, MAY)

Need tests for
* Network Interface of an Exposed Thing
* Thing Description
* Scripting API

## To Do

### Test Descriptions
* Update from 2016 and track/derive from current specification
* Confirm spec converage (all normative assertions should be covered)

### TD Validation
* Scriptable TD validation tests
* Investigate JSON-LD 1.1 tooling

### Implementation Validation
* Includes TD (instance) validation
* Scripting API (internal tests) – only if implemented in an implementation
* Network interface testing: Multi-instance and interop testing
* Binding protocol testing (but... not deliverables; pick some for testing)

Needs to apply to multiple implementations
* At least two separate implementations required

Security testing
* Penetration testing, e.g. of exposed web APIs

### Specification Testing
* Review normative statements
* Security review

## Plan
* Investigate Spec Tracking tools
    - Kaz, Lagally – to investigate W3C requirements and tools 
    - Target date: third week of April
* Update specifications with clear normative assertions
    - Per task force - person assigned
    - Target date: beginning of May
* Extract normative assertions
    - Ideally automatic; but worst case, manual
    - Target date: mid-May
* Update Test Definitions
    - Per deliverable – satisfy W3C requirements
    - Should track specification updates
    - Could associate with pull requests
    - Target date: mid-June
* Implement tests
    - Compare with current tests; check off definitions
        - Target date: end of June
    - Fill gaps
        -Target date: ongoing; done by spec release

## To Consider
* Testing correct use of ontologies
    - iot:schema.org tooling – shape tooling
    - Scope issue
* Interoperation tests
    - End-to-end semantics
* Security testing
    - Of a specific implementation
* Service testing
    - Discoverability
    - Directory
* Test Bed
    - Virtual devices, gateways, etc.
    - Perhaps derived from plugfest use cases
    - Integrated through W3C test frameworks
* Specification test tooling
    - W3C tools
    - Spectrack



