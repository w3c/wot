## Slot 2 - 19 March 2026

### Meeting Information

#### Attendees

*   Ege Korkan

*   Tomoaki Mizushima

*   Erich Barnstedt

*   Mahda Noura

*   Kunihiko Toumura

*   Michael Koster

*   Cristiano Aguzzi


Sribe: Cristiano
Regrets: Marc

### Minutes

#### Minutes Review

Ege: Any feedback on the minutes?  
… Something seems to be missing.  
… Will update later.

#### People to drive topics

Ege: We still need people to drive the main topic projects.

Ege: Let me know if you are motivated to drive certain topics.

#### Outdated issues

Ege: We have a set of “irrelevant” issues that were not closed. I sent an email asking for review.

Cris: Is issue #1748 really outdated?

Ege: Yes, we solved it in TD 2.0. If you want to stop closing it, just comment.

#### PR 2196

Ege: FYI, yesterday we merged PR 2196.

#### Common definitions (issue 2179)

Ege: The issue wants to constrain the number of `formDefaults` to just one.

Cris: If you have just one `formDefaults`, is it still useful? (If you go on, we should also rename the property to `formDefault`.)

Ege: Yes, you can basically cover things that have only one kind of protocol.

Cris: I see.

Ege: For us it is important, as with that it is clear that a device has multiple “interfaces” or protocol defaults. The more we keep people out of the forms, the better.

#### Common definitions (issue 2192)

Ege: Combo security definitions. I created an issue that will keep track of the renaming of `oneOf` or `allOf`. Merging as agreed.

#### Common definitions (PR 2191)

Ege: Simply adds a badge to accept the feature.

### LORAWAN Binding

Ege: As you may know, Erich is working on the first version of the LORAWAN binding. I added Erich as code owner. It is not difficult to create the HTML version from the DOCX. It was manual work but still manageable.

Ege: The binding defines two URI schemes: one for the device and one for the gateway. Is the URI scheme registered in IANA?

Erich: It shouldn’t be.

Ege: It seems there is a provisional one.

Cris: Probably it is better to make a provisional request too.

**Ege shows the provisional request**

Ege: Not advanced at all; there is just the port.

Erich: You need at least the appKey. The appKey is a one-time password.

Ege: Should it be kept secret?

Erich: It is for the device. It comes from the QR code. I couldn't find another easy way to do it. Probably it should be omitted in the TM.

Michael: There might be ways to hide the key, but since you need to access the device… Usually it is connected with the device.

Erich: You can onboard the device; it is basically a public key. Probably there are already best practices on how to handle it.

Cris: Can we put the two URI schemes together, actually? Two URI schemes mean we should register two separate schemes with different initial prefixes.

Cris: I don’t recall, but isn’t it that you have to authenticate to the gateway before reading the device?

Erich: Sort of. You have to authenticate to the network server.

Ege: About URI schemes—yes, we can fix it. We should use prefixes consistently.

Erich: Yes, I’ll fix it.

Ege: It seems that low‑level byte manipulation is common to many bindings; we could find a way to factorize these needs in the TD.

Erich: I also introduced a multiplier; it is quite common.

Ege: Yes, even manufacturers mention it.

Michael: All good inputs for the DataMapping work item.

Erich: The rest of the table is basically a JSON document that configures the router. Should we reference the spec from LORAWAN, or is it OK to redefine it?

Ege: Is it a payload?

Erich: Let’s ask; maybe it is just a constant. Region for sure changes.

Ege: Is it on GitHub?

Erich: Yes.

***

If you want them merged with the previous minutes, formatted as W3C‑style minutes, or prepared as a PR-ready commit message, just tell me!
