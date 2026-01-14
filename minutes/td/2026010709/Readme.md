# TD Call Minutes

## 07 January 2026

Cancelled

## 08 January 2026

### Meeting Information

Scribe: Michael

Attendees:
- Ege Korkan
- Michael Koster
- Kunihiko Toumura
- Tomoaki Mizushima
- Daniel Peintner

### Agenda review

### [Minutes Review](https://github.com/w3c/wot/pull/1257)
Minutes from December 18th.

Daniel: Do we combine the minutes from both meetings?  
Ege: Yes, we will have one document for each week.  
... Any comments or issues?  
... Minutes approved.

Ege: Moved the agenda documents from 2025 into a directory.  
https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf/2025

### URI vs. IRI
Ege: We actually support URI.  
... This means local language characters need to be escaped in the document.  
... Also clarifications regarding absolute and relative URI; the base URI must be absolute.  
Daniel: Do we need to point to a reference definition?  
Ege: Yes, good point.  
... Added an assertion to require that relative URIs are always resolved using the base URI.  
... Added an assertion requiring Unicode character conversion.  
Daniel: The definition of `href` seems clumsy the way it’s worded.  
Ege: (Revised the text.)  
Ege: Should we define URI in the document using a regex?  
... There would be an interoperability issue for different languages.  
Daniel: We could restrict the pattern to anyURI with an additional restriction of ASCII characters.  
Ege: OK.

### Common definitions section
Ege: Looking at Ben's examples on how to form references to the common definitions.  
... There could currently be five different patterns; with the proposal there are only two ways.  
... The only drawback seems to be with multiple protocols that use the same security definitions; in this case, they must be duplicated. For example, IPv4 and IPv6 use separate forms.  
... Likewise, gateway vs. direct device access.  
... (Explaining the examples.)  
https://github.com/w3c/wot-thing-description/blob/e1bb3d4400af7a847d7f085e82341cc3232a2a60/proposals/common-definitions/tooling/tds.js#L246

Daniel: Question about form defaults?  
Ege: We could simply use the term form.  
Ege: Last example of 2x2 variations with four forms.  
... This example is clearer by separating each protocol entry point.  
... More complex cases are easier to understand.  
Daniel: This is better.  
Michael: Agree, it keeps the cases together in one text block.  
Ege: This solution seems to be better despite having more text.  
... Will integrate this change.  
... Will tackle the schema definitions next.  
... Any more comments?

### Binding Registry
Ege: Reviewing templates for the four binding life cycle transitions.  
... How changes are handled when the submitter isn't available.  
... Or when someone other than the submitter wants to change the registry entry.

### Closing
Ege: Any other business?  
... Adjourned.
