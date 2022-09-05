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
      way to encode geolocation metadata is needed and query mechanisms
      that can filter by this metadata.  Geolocation metadata should be 
      aligned with existing standards, and should support both static and
      dynamic situations.</li>
</ul>
<p>In addition, WoT Discovery may have to be updated to accomodate
   security bootstrapping using the WoT Onboarding process proposed as
   another deliverable.
</p>
