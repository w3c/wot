# WoT TD Calls

https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf#June_10,_11_2026

## Slot 1 - 17 June 2026

### Meeting Information

**Attendees:**
* Ege Korkan
* Michael Koster
* Kazuyuki Ashimura
* Kunihiko Toumura
* Christiano Aguzzi

**Scribe:** 
Michael Koster

**Regrets:** Daniel, Mahda

### Minutes

#### Previous Minutes
-> https://github.com/w3c/wot/pull/1300 Minutes for WoT TD Calls June 10, 2026

Ege: Any remarks?
... Merged minutes from June 10

#### PR #70 in Binding Registry
-> https://github.com/w3c/wot-binding-registry/pull/70 Readability Improvements

Ege: There is a Respec bug.

https://pr-preview.s3.amazonaws.com/w3c/wot-binding-registry/pull/70.html#req-tran-init-curr

Ege: There is an issue in Respec with the table headings; they are not well defined, and it is worse in dark mode.
... Will make an issue for all styling problems.

... Using the term "Entry Characteristic" for the binding metadata in the table.
... Definition for uniqueness.
... We will leave PR 70 open until next week to see if there is more feedback.

#### Review Submissions

##### SNMP Binding Submission
-> https://github.com/w3c/wot-binding-templates/issues/464 SNMP Binding (Review version)

Ege: Review the submission for SNMP network management protocol (PR #464 in templates registry).
.... Spec is maintained by IDTA.
... It is a simple protocol with only get and set and a simple URI scheme.
Michael: Are there more operations like multi-get?
Ege: Review notes added to the PR comments for missing items and clarifications.
Ege: Checking the SNMP documentation, there are more methods that are not included in the binding.
Michael: We may need to clarify our stance on target protocol features for binding submissions, what is required and what is specified as "should."
Ege: There are also more security and authentication features.
... We need to specify what is mandatory in a binding.
... Is there anything else on this binding submission?
Ege: This does not add new requirements for TD, but we need to think about security mechanisms.

##### CAN Bus Binding Submission
-> https://github.com/w3c/wot-binding-templates/issues/465 CAN Binding (Review version)

Ege: Review notes added to the PR comments.
Cris: The protocol is local-only, with no URI authority.
... We use a similar local protocol.
Ege: Not sure how the payload works with respect to offset.
Michael: There may be questions of byte ordering.
Cris: There seems to be a variety of URI schemes.
... There is CANopen, which may be different; should check.
Ege: Anything else?
Cris: What about security?
Ege: Open might mean no security.

Ege: Is there any other business?
.... Adjourned.

## Slot 2 - 18 June 2026

### Meeting Information

**Attendees:**
* Ege Korkan
* Michael Koster
* Kazuyuki Ashimura
* Kunihiko Toumura
* Erich Barnstedt

**Scribe:** 
Ege Korkan

**Regrets:** Daniel, Mahda

### Minutes

#### Bindings

##### LoRaWan

###### Joint WG between OPC Foundation and LoRa Alliance

Ege: There is a joint WG between OPCF and LoRa Alliance.

Erich: Yes, if you want to join, let me know. I can add you, and you need to sign a mini contract though.
... That is about giving your rights.

Kaz: Complicated from a W3C point of view. What is the style and mechanism of the collaboration? In that, we need to think of the liaison. Maybe the OPC liaison can be used?

Erich: It was difficult to create it between OPCF and LoRaWAN.
... I can show the mini contract.

Kaz: There was work between CTA (?) and W3C. We can join their WGs and read their documents. The WG should make a resolution in that direction and give it to Dave Raggett for the technical contact.

Ege: Right now, there is a joint WG between OPCF and LoRa Alliance. You can be a member of either one or sign the mini contract. Any more change means WG resolution and W3C level involvement.

Kaz: Individual participation is, of course, fine, but cannot represent WoT WG or W3C.

Ege: I understand. We should not give that message.

Kaz: So we should look into the mini-contract text as well :)

Ege: Anyone who wants to join?

Michael: Yes, me.

Ege: Let us look at the binding. https://deploy-preview-458--wot-binding-templates.netlify.app/bindings/protocols/lorawan/#examples

Ege: What are the implications for the binding?

Kaz: Can we circulate the mini contract?

Erich: Yes, of course. Sent to Ege already.

Kaz: So this is a regular meeting, right?

Erich: It is twice a month.

Ege: At 14:30 CEST and a cadence of two weeks starting on 10 June 2026. The next one would be 24 June 2026.

Kaz: But you can report here, right? Everyone does not need to join.

Erich: Not really. We have about 4 from LoRa, 4 from OPCF, and 2 on the WoT side. It would be nice to have more presence to cover when someone is not present.

Ege: I will send the acknowledgment agreement and email with information to the WG member-only list.

Ege: Can we keep the document here? What about the content?

Erich: We can keep the binding here. We should leave the LoRaWAN gateway.

##### LoRaWAN Binding
-> https://github.com/w3c/wot-binding-templates/pull/458 PR 458 - LoRaWAN Binding
-> https://deploy-preview-458--wot-binding-templates.netlify.app/bindings/protocols/lorawan Rendered HTML

Ege: The discussion is commented at https://github.com/w3c/wot-binding-templates/pull/458#issuecomment-4742428222

### TD Spec Work

#### writeOnly and readOnly

-> https://github.com/w3c/wot-thing-description/issues/1541 Replacing writeOnly and readOnly with writeable and readable

Ege: It is problematic in multiple places.
https://w3c.github.io/wot-thing-description/#sec-op-data-schema-mapping
https://w3c.github.io/wot-thing-description/#example-79

https://github.com/w3c/wot-thing-description/pull/2206 is addressing a part of this.
Ege: Seeing this, we have a bunch of this information scattered around. Maybe the best practices document will be a better place for this.

Kaz: Should we change how these terms are used? We cannot have writeOnly and readOnly at the same time, right?

Ege: Yes, they are not simple negations.

Kaz: I would prefer readable and writeable, as they are more natural.

Ege: I will work on that PR to document the current state. That should make the current problem clear. I will work on that PR for now.

Ege: Any other business?
Adjourned.
