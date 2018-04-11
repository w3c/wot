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

