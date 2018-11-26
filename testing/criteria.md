# Validation Criteria
This document is meant to clarify the interpretation of W3C requirements to reach REC status.

## W3C Exit Criteria
The page at http://w3c.github.io/test-results/html52/exit-criteria.html has a good summary of the CR exit criteria.
See also https://www.w3.org/2018/Process-20180201/.   In summary:

The Working Group must show:

Adequate implementation experience, described as:
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
To be considered an "independent" implementation, a system should be independently developed
from other implementations and have a distinct code base.  
In some cases software modules or distributed service components may be shared among implementations.
In this cases the features supported by such shared modules
will only be counted as if they appeared in a single implementation.
