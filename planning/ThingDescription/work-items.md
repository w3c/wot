# [DRAFT] Web of Things TD Work Items 

## Original Input

This is copied from https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf and should ideally be restructured and organized into the section later.

## Categories

The work items are split into three categories. 
The first category focuses on work items that are more about restructuring, redesigning, and improving the usability of the specification. These could pave the way for new features.
The second category is about work items that are directly linked to new features.
The third category is currently called supporting work items (can be renamed) and they improve various mechanisms but are not necessarily new keywords for TD instances.
Such categories can be reflected with labels and different views in the GitHub project management panel.
The task force will go through existing issues, pull requests and discussions, and categorize them accordingly.

- **Priorities:** The items below can be considered a flat list with no priorities set for now. Ideally, items that are dependencies to other items and those with concrete industry use cases will be prioritized.

- **Organization:** In order to have a better overview, the list of work items should be kept low, and small work items should be grouped into bigger ones. 
This allows us to better label and manage the items.

- **Details:** The details of different work items can be found at <https://github.com/w3c/wot/blob/main/proposals/deliverable-proposals/thing-description.md>. We will consolidate such details and link them appropriately.

### Protocol Binding
- Binding Submission Mechanism (e.g. Registry)
- Binding Mechanism
  - Integration of the Binding Templates into the TD document
  - Mapping TD elements to messages
  - Payload Driven Protocols (e.g. WS, SSE)
  - `href` and URI design
  - External Security Ontologies
    - Also see https://github.com/w3c/wot-charter-drafts/issues/57 , https://github.com/w3c/wot-thing-description/issues/1880

### Usability and Design Work Items
Changes that improve readability, the usability of the specification OR development, spec generation, bug fix, and testing of the specification do not need use cases.
- Reusable Elements and pointers (e.g. reusable payloads, initial connection)
- Restructuring the TD Specification and Specification Generation
  - This should be done while keeping the current content, e.g. grouping of normative requirements, common definitions section (usability improvements for not needing to "jump around" while reading)
  - While doing the refactoring, we should have a document to discuss the design of TD
- Inline Security
- Better integration of Thing Model
- TD Versioning: impacts signing and canonicalization (RDF canonicalization?)
- Normative Parsing, Validation, Consumption
#### Document reorganization
- Common definition section
- Grouping of normative requirements
- Start a TD (re)design document
#### Reusable Elements
- Reusable connections, for example a MQTT Broker connection that can be described at the top and used in the forms
- Data Schema mapping information/metadata
- Security schemes may need to be refactored and use the same pattern as other reusable elements
- Create a design document, scenarios, requirements, and use the same pattern for all reusable elements
- Review current state of the art in other standards
#### Uniform pattern/state machines between Actions, Events, and Properties
- Avoid doing the same thing in a different way, for example how to express observability and cancellation
- Relationships across affordances, for example when an Action changes the state of a Property
- Design document, etc. 
- Property vs. Action (also URI Variables redesign question)
#### Normative Consumption
- Do we want to proscribe how TDs are processed beyond text level?
- Degraded consumption rule for uniform degradation across consumers, e.g. TD too big
#### Single source of truth for build
- Make sure there are no gaps in the tooling and process for building index.html
### Feature Aiming Work Items


For new features (keywords or behavior), a use case (or user story) should exist in the first place.
While the refactoring topics are being worked on, new features should not be incorporated into the specification.
Instead, the TF will analyze current solutions, gather existing use cases and discussions, and write the requirements to shape the feature.

- Timeseries / Historical Data
- Manageable Actions
- Streaming
- Signing and Canonicalization (there is discussion on where this should belong)

### Supporting Work Items (to be renamed)

- Linting
- TD Testing for plugfest and testfests
- Bugfixes (updates for the TD next. Actual bugs for 1.1 should be handled as errata)

## Notes

- The points below are still open to discussion:
  - What to do with the existing issues and PRs that are postponed?
    - Option 1: If there are no use cases identified, they can be closed after some time.
  - What about the work items in the charter or details that are not linked to use cases?

## Roadmap

We have a roadmap for the TD specification that is aligned with the charter start and end dates.

- Charter End Date: 2 October 2025
- CR Transition (feature freeze): July 10, 2025 (worst estimate)
- Charter Start: October 2023

Notes:
- Stopping big features 6 months prior to CR Transition. That means January 10, 2025 -> End of 2024, we should be done with big features.
  - The bigger the implementation impact, the more time to implement
  - We can give something like "Story Points" to give a rough idea of the effort
- We should look at the schedule on a weekly basis, part of the agenda

### Refactoring Roadmap

In no particular order, we have the following:

- Incorporating Binding Mechanism
- Better integration of Thing Model
- Specification Generation Tooling
- Grouping of normative requirements (depends on specification generation tooling)
- Common definitions section (usability improvements for not needing to "jump around" while reading) (depends on specification generation tooling)
- Assertion id alignment: adding `td`, checking naming scheme
- Synchronization with other documents
- Example reorganization
- Testing Pipeline

### Redesign Roadmap

- Base connection design
- Data mapping
More to come here

## Related Resources

In addition to GitHub issues and Use Cases, there are various documents that should be read before starting the work

- Long Running Actions Proposals: https://github.com/w3c/wot-thing-description/tree/main/proposals
- Registry Analysis: https://github.com/w3c/wot/tree/main/registry-analysis
- Historical Data Landscape: https://github.com/w3c/wot/pull/1112
- Charter Details: https://w3c.github.io/wot-charter-drafts/wot-wg-2023-details.html
