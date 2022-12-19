# Discovery

## Motivation
The original WoT Discovery spec had to defer certain topics due to lack of
maturity, including geolocation and support for JSONPath queries.  In addition
work may be needed to align with proposed TD 2.0 features, such as signatures,
and updating the TD/TM for a WoT Thing Description Directory.

There are a set of [labelled issues in the wot-discovery repo](https://github.com/w3c/wot-discovery/labels/defer%20to%20Discovery%202.0)
that should be considered.  Note that "2.0" is used however we may or may not
want to have either a 1.1 (backward compatible) or 2.0 (not backward compatible)
deliverable in the next charter.  We also have to consider how this
relates to the various versions of TD; e.g. should all versions of TDs
be supported in a single directory?  Some features like signatures
may only be possible with the newer TD specification.

## Description

<p>During the previous charter a mechanism for discovery of Thing Descriptions (TDs)
   was defined:
   <a href="http://www.w3.org/TR/wot-discovery">WoT Discovery (TD)</a>.
   However, the published version of the WoT Discovery process needed to omit
   several important features.  This deliverable would define a set of
   ideally backward-compatible extensions to support new features such as:
</p>
<ul>
  <li>Integrity protection.  A mechanism for signing JSON-LD documents
      was under discussion in the last charter but was not mature enough to
      include.  Adding support for RDF canonicalization and signing in 
      alignment with those standards would be helpful to ensure that 
      TDs are not intercepted and modified by third parties.  This may
      also require a definition of TD canonicalization.</li>
  <li>JSON Path Queries.  JSON Path is still currently under discussion
      as an IETF RFC but was not mature enough to include during the last
      charter.  This would complement the current SPARQL-based query support
      but would be lighter-weight to implement and use.</li>
  <li>Geolocation.  Many WoT use cases have identified a need to 
      limit discovery by geographic location.  To support this, a standard
      way to encode geolocation metadata is needed (or several ways, each
      identified using a profile) and query mechanisms
      that can filter by this metadata.  Geolocation metadata should be 
      aligned with existing standards, and should support both static and
      dynamic situations.</li>
</ul>
<p>Due to some limitations expected in JSONPath, in particular lack of
   support for scripting and limitations on keyword searches, it may be 
   necessary to define additional chainable filters for geolocation and
   other specific use cases, such as semantic type checking.  Prefix
   expansion also needs to be dealt with, ideally in a way that does not
   require full RDF processing.  See discussion in issues.
</p>
<p>In addition, WoT Discovery may have to be updated to accomodate
   security bootstrapping using the WoT Onboarding process proposed as
   another deliverable.
</p>
<p>Updates are also expected in related standards, such as DID, and new
   Introduction types and protocol support may be added (for example, a
   CoAP API for directories) and TD serialization formats (e.g. YAML or CBOR).
</p>

## Other Discussion

- Filters can be a general mechanism that can also encapsulate common queries,
  such as searching by keyword or id.  We should look at some common use cases
  for additional filters.  We also need a "base" query that just gives the whole
  directory (which is then passed through filters).
  Example of what a filter chain might look like (applied to a query URL):
  ```
    https://tdd.example.com/list?filter="geo(lat=45.5,long=123.3,r=15)|keyword('light')"
  ```
  Filtering based on time would also be useful (e.g. time of last update).
  Filters may also apply to events and event payloads.
- Thing Model support.  Storing TMs in TDDs, and allowing links from TDs to be
  resolved.  It would be helpful to also be able to validate a TD against a TM.
  May also align with work on Digital Twins.  We need to understand how this
  fits into a Thing lifecycle - it's a different use case for "Discovery" than
  what we have been focused on.
- Validation by TDDs during registration could be improved.  Hopefully this will
  be improved in TD 2.0 and TDD implementations should follow suit.  For example,
  validation of extensions would be useful, but mechanisms for this need to be
  defined in the TD spec, not Discovery.
- Other protocols: CoAP and MQTT.  Would be nice to have standard TDD APIs using
  these protocols - currently we only have HTTP and allow CoAP only for TD Servers.
  Then there is support for HTTP/3 and QUIC.
- Additional security features: object security/JOSE, ranking/evaluation of
  multiple TDDs, key distribution via DID/VC, etc.
- Additional checks during registration, e.g. checking if a Thing is accessible
  via the URLs given in the TD.  Not really clear how to generally do an
  aliveness check however since affordances are optional, and only properties
  are "safe".  There would need to be some way to "tag" an affordance as being
  usable for an aliveness check.
- Alignment with other specs, e.g. Scripting.
