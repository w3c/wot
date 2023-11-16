# [DRAFT] Web of Things TD Work Items 

This is copied from <https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf> and is further restructured here.

## Categories

The work items are split into four categories.

1. The first category is Binding Templates, which involves specifying the mechanism but also the submission mechanism.
2. The second category focuses on work items that are more about restructuring, redesigning, and improving the usability of the specification. These could pave the way for new features.
3. The third category is about work items that are directly linked to new features.
4. The fourth category is currently called supporting work items (can be renamed) and they improve various mechanisms but are not necessarily new keywords for TD instances.

Such categories can be reflected with labels and different views in the GitHub project management panel.
The task force will go through existing issues, pull requests, and discussions, and categorize them accordingly.

- **Priorities:** The items below can be considered a flat list with no priorities set for now. Ideally, items that are dependencies to other items and those with concrete industry use cases will be prioritized.

- **Organization:** In order to have a better overview, the list of work items should be kept low, and small work items should be grouped into bigger ones.
This allows us to better label and manage the items.

- **Details:** The details of different work items can be found at <https://github.com/w3c/wot/blob/main/proposals/deliverable-proposals/thing-description.md>. We will consolidate such details and link them appropriately.

### Binding Templates

- Binding Submission Mechanism (e.g. Registry)
- Binding Mechanism
  - Integration of the Binding Templates into the TD document
  - Mapping TD elements to messages
  - Payload Driven Protocols (e.g. WS, SSE)
  - `href` and URI design
  - External Security Ontologies
    - Also see https://github.com/w3c/wot-charter-drafts/issues/57 , https://github.com/w3c/wot-thing-description/issues/1880

### Usability and Design Work Items

Changes that improve readability, the usability of the specification OR development, spec generation, bug fixes, and testing of the specification do not need use cases.
These have more priority since they can impact how new features look like in a TD instance.

#### Design Document

We should start a TD (re)design document that explains the idea behind the design of different features. See [issue 1889](https://github.com/w3c/wot-thing-description/issues/1889).

#### Document reorganization

Changes that should be done while keeping the current content

- Common definition section: Usability and readability improvements for not needing to "jump around" while reading
- Grouping of normative requirements
- Assertion id alignment: adding `td`, checking naming scheme
- Better integration of Thing Model

#### Synchronization with other documents

- Moving binding templates core document content to TD
- Moving discovery-related text from TD to Discovery

#### Reusable TD Elements

- Reusable connections, for example, an MQTT Broker connection that can be described at the top and used in the forms
- Data Schema mapping information/metadata
- Security schemes may need to be refactored and use the same pattern as other reusable elements
- Inline Security
- Scenarios, requirements, and use the same pattern for all reusable elements
- Review the current state of the art in other standards

#### Uniform pattern/state machines between Actions, Events, and Properties

- Avoid doing the same thing in a different way, for example how to express observability and cancellation
- Relationships across affordances, for example when an Action changes the state of a Property
- Property vs. Action (also URI Variables redesign question)

#### Normative Parsing, Validation, Consumption

- What is a valid TD, are there any levels of validness?
  - A TD validator can do only JSON Schema validation but that is not enough to test everything.
  - A TD may be not completely valid but usable by a "degraded consumer" (see below) or a TD can be completely valid according to all the assertions and protocol bindings but not be usable by some consumers.
- Do we want to prescribe how TDs are processed and consumed beyond the text level?
- Degraded consumption rule for uniform degradation across consumers, e.g. TD too big, protocol or protocol options unknown, contentType unknown, etc.

#### Single source of truth for build

- Make sure there are no gaps in the tooling and process for building index.html

### Feature Aiming Work Items

For new features (keywords or behavior), a use case (or user story) should exist in the first place.
While the refactoring topics are being worked on, new features should not be incorporated into the specification.
Instead, the TF will analyze current solutions, gather existing use cases and discussions, and write the requirements to shape the feature.
These are contained in this folder with the `analysis-` prefix.

- Timeseries / Historical Data
- Manageable Actions
- Streaming
- Signing and Canonicalization (there is discussion on where this should belong)
  - TD Versioning

### Supporting Work Items (to be renamed)

- Linting
- TD Testing for plugfest and testfests: Currently it is at Eclipse Thingweb Playground at <https://github.com/eclipse-thingweb/playground/tree/master/packages/assertions> but we should move it here.
- Bugfixes (updates for the TD next. Actual bugs for 1.1 should be handled as errata)
- Examples reorganization: It would be better to have complete TD examples that can be validated but at the same time we can show a part of it for specific features. Also, see <https://github.com/w3c/wot-thing-description/issues/1851>.

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

Notes:

- We need to link back to the items above. A project management tool can help

In no particular order, we have the following:

- Incorporating Binding Mechanism
- Better integration of Thing Model
- Specification Generation Tooling
- Grouping of normative requirements (depends on specification generation tooling)
- Common definitions section (usability improvements for not needing to "jump around" while reading) (depends on specification generation tooling)
- Assertion id alignment: adding `td`, checking the naming scheme
- Synchronization with other documents
- Example reorganization
- Testing Pipeline

### Redesign Roadmap

- Base connection design
- Data mapping
More to come here

## Related Resources

In addition to GitHub issues and Use Cases, there are various documents that should be read before starting the work

- Long Running Actions Proposals: <https://github.com/w3c/wot-thing-description/tree/main/proposals>
- Registry Analysis: <https://github.com/w3c/wot/tree/main/registry-analysis>
- Historical Data Landscape: <https://github.com/w3c/wot/pull/1112>
- Charter Details: <https://w3c.github.io/wot-charter-drafts/wot-wg-2023-details.html>
