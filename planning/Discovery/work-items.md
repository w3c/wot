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
1. Direct - [Discovery Query Filters](https://w3c.github.io/wot-charter-drafts/wot-wg-2023-details.html#discovery-query-filters-workitem)
2. Direct - [Discovery JSON Path Query Language](https://w3c.github.io/wot-charter-drafts/wot-wg-2023-details.html#discovery-jsonpath-query-language-workitem)
3. Direct - Placeholder - Sort-by Filtering
    * Related to query filters, since can be used to prioritize results
    * Need to define what to do with TDs that don't have field used for sorting
4. Direct - Placeholder - Improve Security
    * Subset of [Discovery Improvements](https://w3c.github.io/wot-charter-drafts/wot-wg-2023-details.html#discovery-improvements-workitem)
5. Dependency - [Signing](https://w3c.github.io/wot-charter-drafts/wot-wg-2023-details.html#signing-workitem)
6. Dependency - [Canonicalization](https://w3c.github.io/wot-charter-drafts/wot-wg-2023-details.html#canon-workitem)
7. Dependency - [Normative TD Parsing, Consuming and Validation](https://w3c.github.io/wot-charter-drafts/wot-wg-2023-details.html#td-consumption-workitem)
    * Relevance: In order to support queries, TD content needs to be parsed by directory, and only valid TDs should be stored in TDDs.
(https://github.com/w3c/wot-usecases/blob/main/REQUIREMENTS/geolocation-requirements.md)
8. Dependency - [TD Versioning](https://w3c.github.io/wot-charter-drafts/wot-wg-2023-details.html#td-versioning-workitem)
    * Impact on Discovery includes how or whether to maintain multiple versions of a single TD, and possibly filtering by version.
9. Dependency - [Interoperability Profiles](https://w3c.github.io/wot-charter-drafts/wot-wg-2023-details.html#profiles-workitem)
    * Should TDDs also satisfy a Profile?
10. Process - [WoT CG Coordination](https://w3c.github.io/wot-charter-drafts/wot-wg-2023-details.html#wotcg-coordination)
    * Gathering information on requirements, implementations, feedback on current versions, suggestions for improvement, etc.
11. Direct - Placeholder - Validation
    * Subset of [Discovery Improvements](https://w3c.github.io/wot-charter-drafts/wot-wg-2023-details.html#discovery-improvements-workitem)
12. Direct - Placeholder - TD Versions
    * Subset of [Discovery Improvements](https://w3c.github.io/wot-charter-drafts/wot-wg-2023-details.html#discovery-improvements-workitem)
13. Direct - Placeholder - Version Selection
    * Subset of [Discovery Improvements](https://w3c.github.io/wot-charter-drafts/wot-wg-2023-details.html#discovery-improvements-workitem)
14. Direct - Placeholder - Additional Introductions
    * To be researched, but to support additional ecosystems
    * Examples: MQTT Discovery, OPC UA Discovery
    
#### Middle Priority
1. Direct - [Discovery CoAP Directory](https://w3c.github.io/wot-charter-drafts/wot-wg-2023-details.html#discovery-coap-dir-workitem)
2. Dependency - [Geolocation](https://w3c.github.io/wot-charter-drafts/wot-wg-2023-details.html#geolocation-workitem)
    * Assuming geolocation data added to TDs, this would add geolocation query support to Discovery.
    * May be higher priority for some use cases - more analysis needed
    * Requirements: [https://github.com/w3c/wot-architecture/blob/main/REQUIREMENTS/geolocation.md]
3. Dependency - [Onboarding](https://w3c.github.io/wot-charter-drafts/wot-wg-2023-details.html#onboarding-workitem)
    * Onboarding is actually about establishing trust and identification but may be a preliminary to or related to TDD registration.

#### Lower Priority

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
* additional introductions
    - e.g. MQTT Discovery, etc.
    - also improved local introductions (Andrea to propose concrete suggestions)
