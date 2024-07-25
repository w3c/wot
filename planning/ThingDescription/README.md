# Thing Description Planning

In this folder, you can find resources to help with understanding how the next version of the Thing Description deliverable is planned.
First, work items are listed and then a roadmap with priorities is provided per category.

## Work Items

### Categories

The work items are split into four categories.

1. [Binding Templates](./td-next-work-items/binding-templates.md): The first category is Binding Templates, which involves specifying the mechanism but also the submission mechanism.
2. [Usability and Design](./td-next-work-items/usability-and-design.md): The second category focuses on work items that are more about restructuring, redesigning, and improving the usability of the specification. These could pave the way for new features.
3. [New Features](./td-next-work-items/new-features.md): The third category is about work items that are directly linked to new features.
4. [Testing and Tooling](./td-next-work-items/testing-and-tooling.md): The fourth category is comprised of items that help the specification management and maintain consistency.

Such categories can be reflected with labels and different views in the GitHub project management panel.
The task force will go through existing issues, pull requests, and discussions, and categorize them accordingly.

- **Priorities:** The items in each markdown under [td-next-work-items](./td-next-work-items) are a flat list with no priorities set for now. Ideally, items that are dependencies to other items and those with concrete industry use cases will be prioritized.

- **Details:** The details of different work items can be found at <https://github.com/w3c/wot/blob/main/proposals/deliverable-proposals/thing-description.md>. We will consolidate such details and link them appropriately.

#### Related Resources

In addition to GitHub issues and Use Cases, there are various documents that should be read before starting the work

- Long Running Actions Proposals: <https://github.com/w3c/wot-thing-description/tree/main/proposals>
- Registry Analysis: <https://github.com/w3c/wot/tree/main/registry-analysis>
- Historical Data Landscape: <https://github.com/w3c/wot/pull/1112>
- Charter Details: <https://w3c.github.io/wot-charter-drafts/wot-wg-2023-details.html>

### Notes

- The points below are still open to discussion:
  - What to do with the existing issues and PRs that are postponed?
    - Option 1: If there are no use cases identified, they can be closed after some time.
  - What about the work items in the charter or details that are not linked to use cases?

## Roadmap

We should have a roadmap for the TD specification that is aligned with the charter start and end dates.
Concrete roadmaps with the order of items are below at [Individual Roadmaps](#individual-roadmaps).

### Charter-Related Information

#### WoT WG Charter Details

- Charter End Date: 2 October 2025
- CR Transition (feature freeze): July 10, 2025 (worst estimate)
- Charter Start: October 2023

#### Schedule for TD Deliverable

- We will stop work big features 6 months prior to the CR Transition. That means January 10, 2025. In other words, we should be done with big features by the end of 2024. Please see https://github.com/w3c/wot/blob/main/planning/schedule.md
- As a result, we should indicate whether a feature is considered a big feature. Some notes on this:
  - The bigger the implementation impact, the more time to implement.
  - We can give something like "Story Points" to give a rough idea of the effort.

### Category-based Roadmaps

Each section contains a list of work items to be done in an order.

#### Specification Refactoring

1. [Incorporating Binding Mechanism](./td-next-work-items/binding-templates.md#binding-templates-integration)
2. [Synchronization with other documents](./td-next-work-items/usability-and-design.md#synchronization-with-other-documents) (might be a long process, so it should happen asynchronously or in the background with syncs in the calls)
3. [Common definitions section](./td-next-work-items/usability-and-design.md#common-definition-section)
4. [Grouping of normative requirements](./td-next-work-items/usability-and-design.md#grouping-of-normative-requirements)
5. [Better Integration of Thing Model](./td-next-work-items/usability-and-design.md#better-integration-of-thing-model)
6. [Security Schemes Refactoring](./td-next-work-items/usability-and-design.md#security-schemes-refactoring)

#### Specification Tooling

1. [Specification Generation Tooling](./td-next-work-items/testing-and-tooling.md#spec-generation)
2. [Example reorganization](./td-next-work-items/testing-and-tooling.md#examples-reorganization)

#### Implementation Report Testing

1. [Testing Pipeline](./td-next-work-items/testing-and-tooling.md#testing-procedure) (less priority since we are not close to the testing phase at all)

#### Usability and Design

An example list of usability and design items with an order:

- Initial connection
- Data mapping

#### New Features

They are not ordered yet. See [here](./td-next-work-items/new-features.md) for more information.
