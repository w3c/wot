# Normative Privacy Revisions
Following the meeting at TPAC 2019 in Fukuoka, in order to strengthen the privacy of systems based on WoT standards
the WoT WG agreed to explore adding normative privacy assertions to the WoT specifications
and to re-submit a CR including these additional assertions.
We are also considering a few other normative changes, specifically making certain items
optional so that they can be filtered out in privacy-sensitive contexts.

This document summarizes the proposed changes so that they can be reviewed in joint meetings between the WoT WG and the Privacy IG.

We propose consolidating the privacy and security considerations (and new normative statements) into
a single normative specification, the *Web of Things (WoT) Thing Description*.
Changes to the TD specification will include changes to existing assertions and normative content
and new assertions in a new normative "Privacy Mitigations" section.

## Privacy Risks
Privacy risks in the WoT fall into three broad categories: 
1. Data transmitted from a device (such as sensor data) that is associated with an identifiable person.
2. Personally identifiable information included in a Thing Description.
3. Information that can be inferred about a person from the information contained in a Thing description.

The WoT architecture is intended to reduce privacy risks due to Category 1 by encouraging an
open ecosystem (rather than a set of opaque proprietary systems) and making more visible the kinds of data that
a device is producing and sending to other devices.
Such visibility will allow devices to be better managed and the flows of such data controlled.
For example, a gateway could use rules to control whether certain types of information can leave the local network.
The tradeoff is the necessary *description* of the data produced by a device leads to increased risks in Categories 2 and 3.

TDs currently only have a few possible risks in Category 2 such as optional support emails, which we need to 
clarify should not be used for the email of an identifiable person associated with the device.
It is also possible for TDs to be misused
and for developers to embed PII in free-form description fields (such as names of people, such as naming a device
"John's Insulin Monitor").  This should be explicitly forbidden in privacy-sensitive contexts.

In Category 3, PII can be inferred from the type of the device, which can be determined either directly
(through a link with a type-of relationship to a Thing Template), through semantic metadata explicitly giving the 
type of device, or by fingerprinting the set of affordances provided.
The first two mechanisms can be disallowed explicitly in privacy-sensitive contexts.
The last mechanism can be mitigated by filtering of affordances to a minimal set.

Risks in Categories 2 and 3 can also be mitigated by controlling the distribution of TDs and filtering them
(removing unnecessary information) when appropriate.

## Changes to Existing Assertions

### IDs to be made optional.
There are use cases where IDs are essential, i.e. device inventory management.
However,
in order to state assertions that require IDs to be omitted in some privacy-critical situtations,
they need to be made optional.
For example, an ad-hoc, one-time connection to a Thing may access a Thing Description only in order to
invoke a single action, and if the Consumer does not need to store the Thing Description or refer to it again
there is no need for an ID.
Even if an ID is used internally or in other contexts (eg when registering a device with a gateway)
it can be filtered out when providing the TD to consumers that do not need it.

Note: omitting the ID mitigates tracking risks but does not eliminate them.
In particular, it may be possible to infer the type of device by fingerprinting the set of affordances in
the TD and if the type of device is unusual, then it may be possible to use it for tracking.
This possibility can be reduced by further filtering the affordances provided in a TD for such ad-hoc
connections to a minimum number of affordances (or even just one).

#### Design Alternatives
An option here is to make the ID mandatory but use a workaround such as a temporary ID or an ID specific to each consumer.
However, if the intent is really to make the Thing anonymous simply omitting the ID is more straightforward.
Temporary IDs may still be necessary in some use cases, however.

### Title at the Thing level to be made optional
Currently the title (name) of a Thing at the top level is mandatory.  However, there are 
circumstances where we may want to filter out all human-readable information, and the title has
similar risks as the ID, in that it is often designed to distinguish a particular instance 
of a device.

#### Design Alternatives
As with IDs, a "fake" temporary title could also be used.
However in the contexts where such a temporary title would be used it is clearer and simpler to simply
omit the title.

### Data Schemas to be made optional
Currently, according to the information model they are in fact already technically optional, but this should
be clarified, particularly in the case of properties.  Also to allow this, we may have to relax or modify some
existing assertions that require Consumers to produce data according to the data schema and for Consumers to
accept it (one resolution would be to add the phrase "if present" to these assertions).

If Data Schemas are omitted, then the Consumer needs to
somehow already know how to process the data or needs to treat it as opaque.
The reason for omitting Data Schemas in these cases is to minimize fingerprinting risk.

Note however that if we want to support ad-hoc interoperability, there are relatively few circumstances in
which Data Schemas can be omitted.

### URI Templates to be made optional
We may want to omit these for the same reason as the Data Schemas.  However, we should ensure that even
if URI templates defining query parameters are not present that a Consumer can still use them if it has
apriori knowledge.

Note however that if we want to support ad-hoc interoperability, there are relatively few circumstances in
which URI Templates can be omitted.

## Mandatory Privacy Mitigations
These assertions will apply to any context where a device described by a TD may be associated with
a particular person.  We will call these "privacy sensitive contexts".  Note that a device or TD does not
need to generate or contain explicit PII to be privacy sensitive.  If PII can be inferred from the 
information contained in a TD, and that Thing is associated with an identifiable person, then it is
potentially privacy sensitive.

All the following assertions should be read as if they begin with the phrase "In a privacy sensitive context
associated with an identifable person ..."

### TDs MUST not contain PII.
For example, a TD must not contain the email of a person with which it is associated or embed their name, address, or other PII 
in a description or title field, unless specifically required by the use cases. 

**ML: It must be under the descretion of the owner of the thing to chose to whom to expose which PII.
There are cases where a TD without PII is useless.**

### TDs MUST be transmitted only to Authenticated and Authorized consumers.
Services providing TDs must require authentication (for example, using OAuth or PKI) of the requester to ensure they
are who they say they are.  In addition, the system needs to ensure that the requester is authorized to receive TDs.

### Consumers MUST accept TDs only from Authenticated producers
In other words, communication of TDs between producers and consumers must be over mutually authenticated channels.

**ML: ...or the authenticity of a producer is validated by some other means (e.g. cryptographic signatures).**

### TDs provided to a Consumer MUST be filtered to remove any optional information not required by that Consumer.
For example, 
* If a Consumer does not need human-readable titles or descriptions in a TD, these should be removed.
  ** ML: How does a producer know about the capabilities / requirements of a consumer? We don't have a mechanism to convey this information. In many scenarios a TD producer does not know about the potential consumers. This comment applies also to the points below.**
* If a Consumer does not need to maintain state related to the consumed device, then an ID is not necessary and should be omitted.
* If a Consumer does not do semantic processing, then all semantic annotations can be omitted.
  **ML: It still is useful for documentation purposes and should be preserved.**
* If a Consumer does not do link processing then links should be omitted.
* Metadata (such as TD creation time) should be omitted if the Consumer does not need it.
* If the Consumer already "knows" the Data Schema or does not process the data (for example, if it only caches it) then data schemas can
be omitted; likewise for URI templates. **ML: How is this "knowledge" conveyed to the consumer?**

### Mechanisms to request TDs MUST include query parameters to specify the information provided.
The mechanism to request a TD should include query parameters to state the kinds of information necessary and the delivered
TD should be filtered to only include that information.
Query parameters should allow indication of at least the following classes of information:
human-readable information (titles and descriptions); 
semantic annotations;
affordances or types of affordances (for example, only properties, or only one specific property by name);
links (identified by relation type);
metadata (creation time, modification time, support, and version information);
data schemas;
and URI templates.
**ML: This mechanism is not part of the current specs.**

### TDs MUST be protected by encryption when at rest.
TDs must be stored in an encrypted data store, and access to this store should be limited to authorized users.
**ML: This goes a bit far - We should constrain it to "TDs containing PII"**

### TDs MUST be protected by encryption when transmitted.
**ML: again constrain to "TDs with PII"**
TDs must not be transmitted in plaintext.

### TDs MUST be stored in Consumers for only a limited time appropriate to the application.
**ML: again constrain to "TDs with PII"**
Note that this rule does not apply to Producers or system inventory managers, which may need to store
TDs for the lifetime of the device.

### TDs MUST NOT be forwarded to other parties without explicit approval of any person the Thing is associated with.
Ideally TDs would not be forwarded at all and each Consumer would go directly to the source and
authenticate as appropriate.
However there are situations, such as local networks behind a NAT,
where TDs will need to be forwarded, i.e. by a proxy service.
In this case they can also be filtered to remove unnecessary information.

### Things MUST delete IDs and other data specific to use by a particular person when decommissioned
Here "decommissioning" should occur when a device is offboarded from a security domain, when all authorizations are revoked,
or the device is reset to factory settings.
"Other data" includes all sensor logs, e.g. any historical data should be deleted.

### Newly developed Things MUST use Authentication, Authorization, and Encryption for data
The WoT cannot control the use of TDs to *describe* existing brownfield devices with poor or no security.
However, "new" greenfield Things developed to work with the WoT MUST be designed to protect data related to specific individuals
using appropriate security mechanisms.
In particular, "nosec" and non-encrypted protocols (http, coap) MUST not be used if there is any chance the data
can be intercepted.
Note that use of "nosec" and "http" may be acceptable in a TD in such cases
if the data is protected by another layer of authentication and encryption, for example if data traffic is
carried on a private network (for example, an encrypted VLAN).

### Context files MUST NOT be dereferenced if these dereferences can be associated with specific Things
**ML: This is a requirement for a consumer that cannot be enforced.**
Context file dereferences can cause a privacy issue similar to a DNS leak.
Therefore Consumers should use the URLs given in the context field of a TD only to 
identify vocabularies already "known" (built-in) to the Consumer.

NOTE: an exception needs to be made for inventory systems doing semantic processing on a set of Things in a database.
This is why we limit this restriction to "specific Things".

### Consent MUST be obtained before a TD is provided to a Consumer
Consent does not need to be obtained every time that a TD is provided to a particular Consumer as long as the 
person associated with a device is aware of the set of Consumers that can access a Thing.  For example, when 
a person onboards a new Thing to a home gateway, as part of the onboarding process they can be asked for their
consent to allow other devices also onboarded the to same gateway to access the TD of the new device.

### TDs from which PII can be inferred should be managed as if they contained explicit PII
This assertion is to make it clear that inference is as much of a risk as explicit personal information.
The latter will generally not be in a TD and is relatively easy to avoid.  Managing the risk of
inferencing is much harder.  This assertion does have legal implications: for example, it means that in some
legal jurisdictions, consent must be obtained to acquire and store TDs, limits are placed on how long they
can be retained, and so forth.  This is the intent of this assertion.

Some of the above assertions may be redundant in locations that have strong legal protections for 
privacy.  But it is worthwhile still including the "redundant" assertions for locations that do not
have such protections.

## Other Points of Discussion
* There are cases when instead of omitting identifiers we need to use context-dependent or temporary identifiers.
  What assertions should be associated with these usages?
* Note that the W3C cannot make compliance mandatory; these are still recommendations.  However, systems not in
  compliance can be identified and public notice given, just like other aspects of non-compliance.
* A better definition of a "privacy sensitive context" is needed.

