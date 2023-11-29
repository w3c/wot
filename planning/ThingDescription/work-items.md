# [DRAFT] Web of Things TD Work Items 

This is copied from <https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf> and is further restructured here.

## Categories

The work items are split into four categories.

1. [Binding Templates](./td-next-work-items/binding-templates.md): The first category is Binding Templates, which involves specifying the mechanism but also the submission mechanism.
2. [Usability and Design](./td-next-work-items/usability-and-design.md): The second category focuses on work items that are more about restructuring, redesigning, and improving the usability of the specification. These could pave the way for new features.
3. [New Features](./td-next-work-items/new-features.md): The third category is about work items that are directly linked to new features.
4. [Testing and Tooling](./td-next-work-items/testing-and-tooling.md): The fourth category is comprised of items that help the specification management and maintain a consistency.

Such categories can be reflected with labels and different views in the GitHub project management panel.
The task force will go through existing issues, pull requests, and discussions, and categorize them accordingly.

- **Priorities:** The items in each markdown under [td-next-work-items](./td-next-work-items) is a flat list with no priorities set for now. Ideally, items that are dependencies to other items and those with concrete industry use cases will be prioritized.

- **Details:** The details of different work items can be found at <https://github.com/w3c/wot/blob/main/proposals/deliverable-proposals/thing-description.md>. We will consolidate such details and link them appropriately.

## Notes

- The points below are still open to discussion:
  - What to do with the existing issues and PRs that are postponed?
    - Option 1: If there are no use cases identified, they can be closed after some time.
  - What about the work items in the charter or details that are not linked to use cases?

## Roadmap

We should a roadmap for the TD specification that is aligned with the charter start and end dates.

### WoT WG Charter Details

- Charter End Date: 2 October 2025
- CR Transition (feature freeze): July 10, 2025 (worst estimate)
- Charter Start: October 2023

#### Schedule for TD Deliverable

- We will stop work big features 6 months prior to CR Transition. That means January 10, 2025. In other words, we should be done with big features by the end of 2024.
- As a result, we should indicate whether a feature is considered a big feature. Some notes on this:
  - The bigger the implementation impact, the more time to implement.
  - We can give something like "Story Points" to give a rough idea of the effort.
- We should look at the schedule on a weekly basis, part of the meeting agenda.

### Refactoring Roadmap

In no particular order, we have the following:

- [Incorporating Binding Mechanism](./td-next-work-items/binding-templates.md#integration-of-the-binding-templates-into-the-td-document)
- [Better integration of Thing Model](./td-next-work-items/usability-and-design.md#td-testing-for-plugfest-and-testfests)  
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
