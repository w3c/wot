# Usability and Design Work Items

Changes that improve readability, the usability of the specification OR development, spec generation, bug fixes, and testing of the specification do not need use cases.
These have more priority since they can impact how new features look like in a TD instance.

## Design Document

We should start a TD (re)design document that explains the idea behind the design of different features. See [issue 1889](https://github.com/w3c/wot-thing-description/issues/1889).

## Document reorganization

Changes that should be done while keeping the current content

- Common definition section: Usability and readability improvements for not needing to "jump around" while reading
- Grouping of normative requirements
- Assertion id alignment: adding `td`, checking naming scheme
- Better integration of Thing Model

## Synchronization with other documents

- Moving binding templates core document content to TD
- Moving discovery-related text from TD to Discovery

## Reusable TD Elements

- Reusable connections, for example, an MQTT Broker connection that can be described at the top and used in the forms
- Data Schema mapping information/metadata
- Security schemes may need to be refactored and use the same pattern as other reusable elements
- Inline Security
- Scenarios, requirements, and use the same pattern for all reusable elements
- Review the current state of the art in other standards

## Uniform pattern/state machines between Actions, Events, and Properties

- Avoid doing the same thing in a different way, for example how to express observability and cancellation
- Relationships across affordances, for example when an Action changes the state of a Property
- Property vs. Action (also URI Variables redesign question)

## Normative Parsing, Validation, Consumption

- What is a valid TD, are there any levels of validness?
  - A TD validator can do only JSON Schema validation but that is not enough to test everything.
  - A TD may be not completely valid but usable by a "degraded consumer" (see below) or a TD can be completely valid according to all the assertions and protocol bindings but not be usable by some consumers.
- Do we want to prescribe how TDs are processed and consumed beyond the text level?
- Degraded consumption rule for uniform degradation across consumers, e.g. TD too big, protocol or protocol options unknown, contentType unknown, etc.

## Single source of truth for build

- Make sure there are no gaps in the tooling and process for building index.html
