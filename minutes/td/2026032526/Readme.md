# WoT TD Calls

Agenda: <https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf#March_25%2C_26_2026>

## Slot 1 - 25 March 2026

Cancelled

## Slot 2 - 26 March 2026

### Meeting Information

#### Attendees

* Michael Koster
* Erich Barnstedt
* Tomoaki Mizushima
* Sebastian Kaebisch

* Scribe: Sebastian Kaebisch
* Regrets: Ege

### Minutes

#### LoRaWAN Binding

Erich: Let’s talk about the LoRaWAN Binding. Ege did some updates in the PR.

-> <https://github.com/w3c/wot-binding-templates/pull/458>

Michael: The shared key should be out of band.

Erich: Usually, the key is stored on the device.

Michael: We cannot put the key in the TD, right?

Erich: That would be bad.

Sebastian: A TD can be used to share the location of the key.

Erich: The key is never transmitted. It is used to create a session key.
... PKI solved the issue.

Michael: TTN (The Things Network) may be a solution?
... we need to check.
... how would this look in a TD?

Erich: A simple solution is to not mention the key in the TD.
... LoRaWAN v1.1 will have a new onboarding flow.
... just see, it’s already out (2017).

Michael: We should check v1.1, which may help with TD usage.

Erich: It seems nobody is adopting version 1.1.

Sebastian: Sometimes, a new version does not result in an improvement or market acceptance.

Erich: Just checked with Copilot: v1.0.4 is the latest version (published Oct. 2020). Version 1.1 seems to have too many backward-compatibility issues and does not seem to be adopted for that reason.

Sebastian: Reminds me of WSDL 1.0 and WSDL 2.0. Version 2.0 was not really adopted.

Michael: Cristiano proposed a new security scheme for LoRaWAN 1.0, which tells the user that the key should be handled out of band.

Erich: Let’s remove the key from the forms and use the proposed scheme.

Erich: Let’s check the changes from Ege in the PR.

Michael: It seems to be a fresh PR; no changes can be seen.

Erich: Ege planned to add the prefixes and split the tables for gateways and devices.

### Data Mapping Analysis

-> <https://github.com/w3c/wot-thing-description/blob/main/planning/work-items/analysis/analysis-data-mapping.md>

Michael: The first stage is to have a survey.
... let’s talk about this in the next meeting.

adjourn
