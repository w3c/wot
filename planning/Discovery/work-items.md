# Web of Things (WoT) Discovery
## Work Items
Prioritized list of work items related to Discovery.
- Detailed descriptions of work items will be in a single list (in a separate document) to accomodate
  work items that impact more than one deliverable.
- Each work item has a link to its detailed description, and a link to the requirement(s) it satisfies or helps satisfy.
- Note that requirements will also link in turn to the use cases that motivate it.
- Priority is given by the ordering in the list, from most to least important.
     - No ties allowed; this is called force-ranking and is intentional.
 
### To do:
- Assign "categories" to work items to cluster them into a smaller number of "feature sets".
    - Right now have categories for "Direct" (internal Discovery feature),
      "Dependency" (involved in more than one deliverable), and "Process" (not really a spec feature,
      but a procedural matter).
- Following not yet actually prioritized, we may need to split into smaller work items first
- Update base URL to work-item list after it gets moved
- Need to add requirements and links from each work item, below only a couple of examples are given
     - Link to requirements in wot-architecture
     - We could also put these in a document, or in MD files under each deliverable
     - However, a single list of requirements would allow us to address requirements that span more than one deliverable

### Prioritized List

#### Higher Priority
1. [Discovery Query Filters](https://w3c.github.io/wot-charter-drafts/wot-wg-2023-details.html#discovery-query-filters-workitem)
    * [REQ: Discovery Filtering](https://w3c.github.io/wot-usecases/#REQ-discovery-filtering)
3. [Discovery JSON Path Query Language](https://w3c.github.io/wot-charter-drafts/wot-wg-2023-details.html#discovery-jsonpath-query-language-workitem)
    * [REQ: Discovery Filtering](https://w3c.github.io/wot-usecases/#REQ-discovery-filtering)
5. Placeholder - Sort-by Filtering
    * [REQ: Discovery Filtering](https://w3c.github.io/wot-usecases/#REQ-discovery-filtering)
    * Related to query filters, since can be used to prioritize results
    * Need to define what to do with TDs that don't have field used for sorting
6. Placeholder - Improve Security
    * Subset of [Discovery Improvements](https://w3c.github.io/wot-charter-drafts/wot-wg-2023-details.html#discovery-improvements-workitem)
11. Placeholder - Validation
    * Subset of [Discovery Improvements](https://w3c.github.io/wot-charter-drafts/wot-wg-2023-details.html#discovery-improvements-workitem)
12. Placeholder - TD Versions
    * Subset of [Discovery Improvements](https://w3c.github.io/wot-charter-drafts/wot-wg-2023-details.html#discovery-improvements-workitem)
13. Placeholder - Version Selection
    * Subset of [Discovery Improvements](https://w3c.github.io/wot-charter-drafts/wot-wg-2023-details.html#discovery-improvements-workitem)
14. Placeholder - Additional Introductions
    * To be researched, but to support additional ecosystems
    * Examples: MQTT Discovery, OPC UA Discovery
    * also improved local introductions (Andrea to propose concrete suggestions)

    
#### Lower Priority
1. [Discovery CoAP Directory](https://w3c.github.io/wot-charter-drafts/wot-wg-2023-details.html#discovery-coap-dir-workitem)
2. [Geolocation (Query Part)](https://w3c.github.io/wot-charter-drafts/wot-wg-2023-details.html#geolocation-workitem)
    * Assuming geolocation metadata added to TDs (a dependency), this would add geolocation query support to Discovery.
    * May be higher priority for some use cases - more analysis needed
    * Requirements: [https://github.com/w3c/wot-architecture/blob/main/REQUIREMENTS/geolocation.md]

#### Dependencies
* [Onboarding](https://w3c.github.io/wot-charter-drafts/wot-wg-2023-details.html#onboarding-workitem)
    * Onboarding is actually about establishing trust and identification but may be a preliminary to or related to TDD registration.
* [Geolocation (Metadata Part)](https://w3c.github.io/wot-charter-drafts/wot-wg-2023-details.html#geolocation-workitem)
    - [Requirements](https://github.com/w3c/wot-usecases/blob/main/REQUIREMENTS/geolocation-requirements.md)
* [Signing](https://w3c.github.io/wot-charter-drafts/wot-wg-2023-details.html#signing-workitem)
* [Canonicalization](https://w3c.github.io/wot-charter-drafts/wot-wg-2023-details.html#canon-workitem)
* [Normative TD Parsing, Consuming and Validation](https://w3c.github.io/wot-charter-drafts/wot-wg-2023-details.html#td-consumption-workitem)
    * Relevance: In order to support queries, TD content needs to be parsed by directory, and only valid TDs should be stored in TDDs.
* [TD Versioning](https://w3c.github.io/wot-charter-drafts/wot-wg-2023-details.html#td-versioning-workitem)
    * Impact on Discovery includes how or whether to maintain multiple versions of a single TD, and possibly filtering by version.
* [Interoperability Profiles](https://w3c.github.io/wot-charter-drafts/wot-wg-2023-details.html#profiles-workitem)
    * Should TDDs also satisfy a Profile?
    * This would specifically about changes to the TDD Thing Model to include a specific profile.

#### Process
* [WoT CG Coordination](https://w3c.github.io/wot-charter-drafts/wot-wg-2023-details.html#wotcg-coordination)
    * Gathering information on requirements, implementations, feedback on current versions, suggestions for improvement, etc.

#### Questionable/Tentative
1. Dependency - [Linting mechanism for TDs](https://w3c.github.io/wot-charter-drafts/wot-wg-2023-details.html#td-linting-workitem)
    * Tentative: if meant for development may not be relevant to TDDs; to discuss.
2. Direct - [Discovery of Thing Models](https://w3c.github.io/wot-charter-drafts/wot-wg-2023-details.html#discovery-thing-models-workitem)
    * Tentative - needs use cases clarified, we may or may not do it.

## Other/New/Proposed
Other possible work-items needed:
* sort-by filtering (was taken out at the last minute, but relates to query filters)
* break "improvements" into smaller individual work-items so they can be prioritized
    - Currently: "Various updates are expected to be needed to align the Discovery spec with updates to other proposed deliverables in this charter, for example updates to the information model, including support for all versions of the Thing Description specification, and to improve security and validation."
    - Break into:
        - Validation - Improve validation of TDs registered with TDDs
        - TD Versions - Update information model to allow TD 2.0 (and multiple different versions of TDs)
        - Version Selection - Fetch specific version of TD if available (including from TDDs) - e.g. fetch TD 1.1 if available, TD 2.0 if available, etc.
        - Improve Security - general
 
## Open Questions
* Backward compatibility (Discovery 1.1 vs. Discovery 2.0)
* Compability with existing discovery mechanisms
     - should confirm that WoT Discovery is in fact compatible with CoRE RD, well-known URLs, etc.
* Mapping from other forms of metadata and bridging to other ecosystems' discovery mechanisms
     - Should generation of TDs for devices that have other forms of metadata be part of Discovery?
     - Compatible with consideration of other discovery mechanisms, e.g. should WoT Discovery gather metadata proactively?
     - Should WoT Discovery act as a "bridge" to MQTT Discovery, Zigbee Discovery etc.?
     - Note that systems like Zigbee have standardized data models, so translation is not that difficult (just instantiate a standard Thing Model as a TD by filling in URLs, etc).
     - Closely related to Binding for particular ecosystems (which define what TDs should look like)
