# Registry Mechanism Analysis

This file summarizes the registry mechanism that the WoT WG/IG needs along with the work done to analyze similar approaches and the requirements we have on such mechanisms.


- Explain what the WoT needs/requires in order to choose a mechanism and the rules

## Analysis of other W3C Documents

### Official Registry Track Registries

Volunteer: Michael Koster

Documents that confirm to https://www.w3.org/2023/Process-20230612/#registries
They can be queried at https://www.w3.org/TR/?filter-tr-name=&status%5B%5D=dry&status%5B%5D=cry&status%5B%5D=ry

Examples:
- https://www.w3.org/TR/webcodecs-codec-registry/
- https://www.w3.org/TR/aac-registry/

### Custom Registry Mechanism Registries

Volunteer: Jan Romann

Examples:
- https://w3c.github.io/tt-profile-registry/#registry
- https://www.w3.org/TR/mse-byte-stream-format-registry/
- https://www.w3.org/TR/did-spec-registries/
- https://www.w3.org/2005/04/xpointer-policy

## Analysis of IANA Registries

Volunteer:  Cristiano Aguzzi

Examples:
- https://www.iana.org/assignments/websocket/websocket.xml
- https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry
- https://www.iana.org/assignments/media-types-parameters/media-types-parameters.xhtml

### Media Type Registry

## WoT Requirements and Expectations for a Potential Registry

In order to choose a mechanism and the rules, we document our requirements and expectations

- A binding should be written by people with a good understanding of the protocol, media type (or similar) and not necessarily the TD Editors
- The registry is bound to the TD spec version
- The registry table's entry acceptance should outlive the TD spec. This means that after a REC publication, the table can be updated
- What needs to be registered (i.e. what is put into the TD document and not what the linked document should contain)
  - Name of the binding
  - Link to the binding: Stable link
  - (possibly) The binding prefix
-  Requirements on the submitted document:
  - To be clarified but the initial list for protocols at https://w3c.github.io/wot-binding-templates/#creating-a-new-protocol-binding-template-subspecification  

What we are doing now: https://w3c.github.io/wot-binding-templates/#protocol-bindings-table

## Appendix

### Useful Resources

- https://www.w3.org/2020/01/registering-mediatypes (we followed this for registering TD media type)
- IANA Guidelines: https://www.iana.org/help and https://www.iana.org/help/protocol-registration
- https://github.com/w3c/wot/blob/main/PRESENTATIONS/2023-09-tpac/2023-09-14-WoT-TPAC-Registry-Korkan.pdf
