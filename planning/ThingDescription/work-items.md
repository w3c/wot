# Web of Things TD Work Items

## Original Input

This is copied from https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf and should ideally be restructured and organized into the section later.

### Classification Proposal

- For new features (keywords or behavior), a use case (or user story) should exist in the first place.
- Changes that improve readability, the usability of the specification OR development, spec generation, bug fix, and testing of the specification do not need use cases
  - What to do with the existing issues and PRs that are postponed?
    - Option 1: If there are no use cases identified, they can be closed after some time.
  - What about the work items in the charter or details that are not linked to use cases?
- Topics that have multiple dependencies on them should be prioritized
- Such categories can be reflected with labels and different views in the GitHub project management panel

### Big Tasks List Proposal

- Restructure TD document while keeping the current content, e.g. grouping of normative requirements, common definitions section (usability improvements for not needing to "jump around" while reading)
- ThingModel integration into TD document
- Protocol Binding integration into TD document
- Binding Mechanisms for interaction data in the message body or URI, protocol metadata in payload, etc.
  - Relates to presentation by Luca
- Design registry and documentation requirements for binding specifications
- Security refactor
- Spec Generation
- TD Testing (each TF responsible for its own testing)
- Bugfixes

### Organization

- Ideally, we have a small list of such tasks. Smaller tasks should be grouped into them.
- In the GitHub Projects, we want to ideally have one view per big task. A small task can have multiple big task labels, thus appearing in multiple views.
- While doing the refactoring, we should have a document to discuss the design of TD

## Restructuring with Categories

The work items are split into two categories. The first category focuses on work items that are more about restructuring, redesigning and improving the usability of the specification. These could pave the way to new features.
The second category is about work items that are directly linked to new features.

Also, see https://w3c.github.io/wot-charter-drafts/wot-wg-2023-details and https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf (July 5 Agenda)

**Priorities:** The items below can be considered a flat list with no priorities set for now. Ideally, items that are dependencies to other items and those with concrete industry use cases will be prioritized.

**Details:** The details of different work items can be found at https://github.com/w3c/wot/blob/main/proposals/deliverable-proposals/thing-description.md . We will consolidate such details and link them appopriately.

### Usability and Design Work Items

- Binding Submission Mechanism (e.g. Registry)
- Binding Mechanism
  - Mapping TD elements to messages
  - Payload Driven Protocols (e.g. WS, SSE)
  - `href` and URI design
  - External Security Ontologies
- Reusable Elements and pointers (e.g. reusable payloads, initial connection)
- Restructuring the TD Specification and Specification Generation
- Inline Security

### Feature Aiming Work Items

- Timeseries
- Manageable Actions
- Streaming

### Supporting Work Items (to be renamed)

- Linting
- Normative Parsing, Validation, Consumption
- Signing and Canonicalization
- TD Versioning

### Notes

We should use <https://github.com/w3c/wot/blob/main/proposals/deliverable-proposals/thing-description.md> to find relevant issues
