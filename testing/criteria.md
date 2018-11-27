# Validation Criteria
This document is meant to clarify the interpretation of W3C implementation reporting requirements
needed to reach REC status.

## W3C Exit Criteria
The page at http://w3c.github.io/test-results/html52/exit-criteria.html has a good summary of the CR exit criteria.
The page https://www.w3.org/2018/Process-20180201/ is the official process reference.   In summary:

The Working Group must show "adequate implementation experience", described as:
1. The specification is sufficiently clear, complete, and relevant to market needs, 
to ensure that independent interoperable implementations of each feature of the specification will be realized 
https://www.w3.org/2015/Process-20150901/#implementation-experience
2. The document has received wide review.

## Charter Requirements
In addition, the [WoT WG charter](https://www.w3.org/2016/12/wot-wg-2016.html) 
includes the following requirements which have validation implications:
1. In order to enhance the security of WoT systems, 
   we will also generate and implement a security testing plan 
   which will include both functional and adversarial testing of 
   the proposed standards and their implementations. 
   We will only recommend an implementation of the proposed standards for 
   use in production once it has passed such testing.
2. In order to advance to Proposed Recommendation, 
   each specification is expected to have at least two independent implementations 
   of each of feature defined in the specification.
3. Each specification should contain a section detailing any known security or privacy 
   implications for implementers, Web authors, and end users.
4. (Under "Other Deliverables") WoT Test Cases: This document is part of the 
   W3C CR process test suite and defines test cases corresponding to technical issues 
   addressed by the WG. They also help to evaluate the interoperability among the test 
   suite implementations as well as external implementations, e.g., open source projects.
   
## Term Definitions

### Implementation
An "implementation" will consist of either

* A system producing a TD by programmatic means for a device or service with a network interface.

OR

* A system consuming a TD and using it to access a device or service with a network interface.

Some implementations may do both.

To be considered an "independent" implementation, a system should be independently developed
from other implementations and have a distinct code base.  
In some cases software modules or distributed service components may be shared among implementations.
In this case the features supported by such shared modules
will only be counted towards "implementation experience" as if they appeared in a single implementation.

Note that it is not in general necessary for the server itself to generate or be aware of the
TD (i.e. it may or may not be the TD producer), but the client (TD consumer) generally will be.

We will also accept as implementations services that accept, store, and process TDs, such as
proxies and directories, even if they themselves do not have a network interface described by a TD.
They are still useful to provide "implementation experience" in the context of an IoT system
based on the WoT architecture.

#### Non-Implementations
Non-implementations of the TD specification include:

1. Example TDs, either hand-written or automatically generated, that do not describe the network interface of an actual device or service.
2. Use of generic browsers or clients without any native capablity to use the information in a TD, such as a Web browser just rendering and displaying a TD as a JSON file for a human to interpret, or a tool like PostMan, Copper, or curl used to generate generic HTTP, CoAP, or MQTT requests under direct human control.

These are useful for testing and validation but do not themselves constitute adequate evidence of "implementation experience".
