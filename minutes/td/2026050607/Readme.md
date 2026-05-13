# WoT TD Calls

<https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf#May_06%2C_07_2026>

## Slot 1 - 6 May 2026

### Meeting Information

#### Attendees

*   Ege Korkan

*   Daniel Peintner

*   Michael Koster

*   Kunihiko Toumura

*   Tomoaki Mizushima

*   Cristiano Aguzzi

*

*   Scribe: Michael Koster

*   Regrets:

### Minutes

#### Minutes review from last week

Ege: any comments  
Daniel: there is an unfinished sentence  
Ege: (corrected) anything else?  
Ege: (merged)

#### Cancellation May 14th and May 21st

#### PR #70 in the registry

Ege: The number of sections is reduced, still too many levels  
... now there is just one lifecycle  
... added a requirement for the custodian  
... corrected some terminology  
... clarified the uniqueness requirement

Cris: should we create another definition for uniqueness?  
Ege: it is explained in the paragraph before Table 1  
Cris: it explains how the constraint is applied  
Ege: will add a common definition and refer back to it

Daniel: do we need a uniqueness column in the table?  
... maybe we can just explain it in the text

Ege: the text could be added in different places, there are different constraints for different entries  
Daniel: it was difficult to understand at first  
Ege: there was previously an overall uniqueness requirement with some exceptions  
Daniel: the text explains it better than the column  
Ege: I can see a solution

... added a requirement for a stable link and stable content

Cris: what does it mean to be stable?  
Ege: it's not clear

Cris: maybe we can include a negative test for unstable links or content; also, how do we know if the URL changes?  
... maybe it needs to be about reachability

Ege: yes, redirects are allowed  
... the problem is when the document disappears  
... an example is Hypercat moving to another organization

Ege: we can provide a contact for people to notify us when things change  
... there could be many locations

Daniel: what happens when a new organization takes over and there is no redirect?  
... what is important is that the content doesn't change and to provide a way to update the location

Ege: yes, we can provide a way to update the URL and also the supporting document locations

## Proposal to use the accordion for the document UI

Ege: thinking about two main sections: Lifecycle and Submission Requirements

Daniel: not sure I understand  
Ege: (explains separation of concerns in the document flow)  
... maybe it's too abstract, I can clarify  
... also looking for an alternative to the word "transitions"

#### CSV format schema

Ege: (shows example of vocabulary to describe CSV format data)  
... this seems to be a nice idea, a purely descriptive approach  
... it could map back to the JSON Schema level  
... it is a W3C Recommendation

Cris: so we would use the vocabulary to describe the CSV data, then add terms to map to a JSON Schema  
... it could get verbose

Ege: we could remove some of the unnecessary fields

Cris: what does the application get?  
Ege: it would be JSON Schema

Cris: there is still the choice of an array of values or objects

Ege: will provide more input for tomorrow  
... is there any other business today?  
... adjourned

## Slot 2 - 7 May 2026

### Meeting Information

#### Attendees

*   Ege Korkan

*   Daniel Peintner

*   Michael Koster

*   Kunihiko Toumura

*   Tomoaki Mizushima

*   Mahda Noura

*   Scribe: Daniel Peintner

*   Regrets:

### Minutes

#### Data Mapping

Ege: working on studying the analysis with the existing material  
... <https://github.com/w3c/wot-thing-description/blob/egekorkan-patch-4/planning/work-items/analysis/analysis-data-mapping.md>  
... <https://github.com/w3c/wot-thing-description/pull/2201>

... want to focus on "Basic Mathematical Operations" (user story no. 3)  
... need to apply mathematical operations  
... protocol message → on the wire  
... data schema is the other level  
... we might have a formula  
... influences write property as well (which might need rounding)  
... no solution yet  
... at the moment we describe the problem only  
... LoRaWAN binding from Erich has lorav:multiplier  
... that is user story no. 3

Ege: "Type Conversion (enum mapping)" (user story no. 4)  
... simple value converts to another simple value  
... 0 (zero) or 1 (one) maps to ON / OFF  
... main issue is from Dogan, see <https://github.com/w3c/wot-thing-description/issues/997>  
... visible in the BACnet binding  
... protocolVal == 1 maps to "on", etc.  
... same thing in the case of PROFINET  
... encodedPayload == 0 maps to decodedPayload == false  
... that’s why we talk about simple type conversion

Daniel: maybe we can call the user story "simple" type conversion in the user story name  
Ege: agree

Ege: "Structured and Simple Data Mismatch (value wrapping, bitmasking)" (user story no. 5)  
... not exactly the same problem as user story 4  
... TD designer needs conversion between data structures  
... could go both ways dataSchema <> protocol message  
... e.g., PROFINET has an object with different properties  
... in some cases of PROFINET there is no object  
... Buffer\_Time2 needs to start at a certain offset and needs 2 bytes  
... PROFINET uses user stories 4 and 5  
... GitHub user derwehr gave an example for Bluetooth devices  
... simple case of JSON: extracting /value key of an object

Ege: "More Detailed Types" (user story no. 6)  
... we have it in Modbus, BACnet, PROFINET, and LoRaWAN

Ege: does anyone see other user stories not mentioned yet  
-> No

<adjourned>
