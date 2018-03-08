# Security and Privacy Considerations

## Goals
- Define standard format for plugfest objectives related to security and privacy
- Developers should document a concrete scenario
- Developers should document both what they ARE doing for their plugfest contribution
  and what they SHOULD be doing for a practical deployment
- Focus should be on operational phase of the system but it would be useful as well
  if the lifecycle can be described: how the system is set up, how it is decommissioned, etc.

In the following examples are given but these are only meant to be example
responses to the questions, not recommendations.

## Agents and Roles
Who are your...
- Users
- Owners
- Maintainers
- Attackers

Note that in some scenarios there may be more than one kind of person in each of these categories.

**Example:** in a retail IoT scenario,
you might have three kinds of users: customers, clerks, and store managers.
In this context the owner might be mall management, with maintenance outsourced to a third party.
For each agent, you will have to describe the various levels of access,
how keys are managed (and revoked, when necessary), and so on.
For attackers, you may want to consider both outsiders and insiders.

## Topology
- Please indicate the major components of your system
  and mark the security domains and the boundaries between them.
- Give these regions and boundaries names so you can refer to them in later discussion.
- Identify the types, sources, and destination of data, and how sensitive it is if disclosed.
- Do not forget to include metadata (eg Thing Descriptions) in your topology.

## Confidentiality and Privacy
**Confidentiality:** Information can only be read by the intended (authorized) party.
- In which sections of the topology do you need confidentiality,
  and who has to protect it from whom?
- How is data protected while at rest (if it is)?
    * **Example:** Encryption with AES
- How is data protected while in transit (if it is)? 
    * **Example:** TLS
- If encryption is used, how are keys provisioned, protected, and updated?
    * **Example:** Self-provisioning of private keys, protection in TPM, auto-update

**Privacy:** How is data related to users’ identities (personally identifiable information)
protected from unauthorized disclosure?
    * **Example:** Rules for collection, storage,
      and disposal of PII are established and followed, and all PII is
      encrypted while at rest and while in transit.

## Integrity and Availability
**Integrity:** Information is protected from modification, corruption or loss.
- How are systems securely updated when security patches are required?  
    * **Example:** Signed updates
- How are systems protected from Denial of Service attacks?
    * **Example:** Limit cost of services provided without authentication
- How are compromised systems identified and remedied?
    * **Example:** IDS (Intrusion Detection System) and HCF (self bricking)
- In a multitenant system that supports scripting,
  how are the tenants protected from each other?
    * **Example:** Sandboxed execution environments and isolated process memory spaces

## Authentication and Discovery
**Authentication:** Identify of agents can be confirmed.
- How are agents’ identities validated?
    * **Example:** Use Certificates, digital signatures, authentication server
- How do users discover services they are authorized to use?
    * **Example:** Semi-public discovery service and ticket vendor (account signup)
    
## Authorization
**Authorization:** What rights are given to (authenticated) users and how are these managed?
- Who has access to the Thing Description and other metadata?
- How is use of the TD discovery service authorized?
- Who can access different parts of a Thing's network interface?
    * **Example:** Access Control Lists, Service Tokens
- Who can load scripts into a WoT runtime and define the behavior of Things?
    * **Example:** The manufacturer (initial configuration and updates only) and the owner

## Validation
**(Security) Validation:** Ensure correct operation even when under attack.
- How will the implementation be validated?
    * **Example:** Fuzz testing to identify potential vulnerabilities
    * **Example:** OWASP web penetration testing (for HTTP-based web APIs) to
      check for known vulnerabilities.
