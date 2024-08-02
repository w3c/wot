# Web of Things (WoT) Policy

## Assertion IDs of WoT Specs

Implementers typically implement multiple WoT specifications and they are encouraged to provide implementation input by asserting whether they implement an assertion or not.
To do so, they need to associate the assertion ID with the assertion text.
At the same time, the specification editors need to manage the list of assertions (sorted by assertion IDs) during the specification lifecycle.
To make everyone's life easier, a well-defined pattern for managing assertion IDs is specified in this document.

- Specification name: Each assertion ID of the specs should be prefixed with the specification acronym or name.
  - Correct examples: `td-context-default-language`, `td-forms-response`, `arch-security-consideration-tls-1-2`
  - Incorrect examples: `context-default-language`, `forms-response`, `security-consideration-tls-1-2`
- Subspecification hierarchy: If a document has subdocuments (bindings) or standalone chapters (profiles), the specification name should be followed by the subdocument or category acronym.
  - Correct examples: `bind-http-default-readproperty`, `prof-basic-description`
  - Incorrect examples: `binding-default-readproperty`, `http-default-readproperty`, `profile-description`
- The spec editors and authors are encouraged to pick human-readable and concise IDs.
- The pattern is as follows:
  - Specifications: `SPECACRO-SCOPE-CUSTOM`
  - Sub specifications: `SPECACRO-SUBSPECACRO-SCOPE-CUSTOM`
  - where:
    - `SPECACRO` is the acronym of the WoT specification. Allowed values are:
      - `td`: WoT Thing Description
      - `arch`: WoT Architecture
      - `disc`: WoT Discovery
      - `prof`: WoT Profiles
      - `bind`: WoT Binding Documents (not the core document)
      - Non-REC track documents can also have an acronym but they do not contain RFC 2119 assertions.
    - `SUBSPECACRO` is the acronym of a subspecification of a specification such as `http` subspecification of the `bind` specification. If the specification has no subspecification, this is not applicable.
    - `SCOPE` is defined by the specification editors as a wide concept of that specification. Examples are `tdd` of the Discovery specification, `forms` of the TD specification.
    - `CUSTOM` is a further granular set of IDs chosen by the editors.
