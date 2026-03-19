# WoT TD Calls

Agenda: <https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf#March_4%2C_5_2026>

## Slot 1 - 04 March 2026

### Meeting Information

#### Attendees

*   Ege Korkan

*   Kunihiko Toumura

*   Tomoaki Mizushima

*   Michael Koster

*   Mahda Noura

*   Scribe: Ege

*   Regrets: Marc

### Minutes

#### Minutes Review

<https://github.com/w3c/wot/pull/1271/changes>

Ege: Short meeting on Thursday. Any feedback?  
Ege: Hearing none. Merging.

#### WoT Resources

Ege: The resources and the redirections are not tested at all. I wrote some tests on the Bruno API client.  
<https://github.com/w3c/wot-resources/issues/29>

Ege: It would be like an end‑to‑end test for the resources.  
Mahda: Yeah, if they are available.  
Ege: We can loop them into the tests, but this can be done only after publication.  
Mahda: Maybe a pipeline at wot-resources.  
… If it is in the tooling, we will not get notified.

Decisions are:

*   We should run these as GitHub Actions here. That implies the webmaster must implement the redirections before the PR itself. It should be a script that can be run locally but also here in an action that can be manually triggered in addition to the PR-triggered runs.
*   Kaz’s questions’ answers:
    *   What kind of/how many redirections we need at the moment: documented at all times at <https://github.com/w3c/wot-resources/tree/main/td> for each separate version.
    *   Which of those redirections are broken: currently the JSON‑LD Context of TD 1.0 is not working. So `https://www.w3.org/2019/wot/td/v1` is returning the TD ontology.
    *   How we should/want to fix those broken links: only via the Webmaster.
*   The `.htaccess` file should be stored here as a reference. Otherwise, it is in another repo or on the web server itself, and the WG has no good reference against it.

#### Errata Submission

Ege: We have an errata possibility at <https://github.com/w3c/wot-thing-description/issues/2194>  
Cris: I looked at the issue. I thought that we only allow a single placeholder, but I could not find it.  
Cris: We have to either restrict to one placeholder per string, relax the regex, or remove the assertion/regex.  
Ege: Should we handle this at all or leave it to 2.0?  
Mahda: I think it is not that critical. There are more urgent things and we have a big backlog, unless we get more reports of this limitation.  
Ege: We have the use case but are not hitting the “search” use case.  
Cris: It is possible to avoid it by saying that all the placeholders are actually just one.  
Ege: What should be the fix for 2.0? I would vote to remove the regex. We had issues before. We can add a note about it.  
Ege: OK, I am writing this in the issue. I will handle this.

#### Issue Organization

Ege: We have different views that help a little but not a lot.  
Ege: Let me know if you know better ways.  
Ege: Added “good first issue” to isolated issues.  
Ege: Also proposed closing label to 10 issues.

#### Common Definitions

##### Combo Security

<https://github.com/w3c/wot-thing-description/pull/2192>

Ege: This is a proposal using a similar mechanism to 1.1.  
Ege: I have some other proposals but I would like to find a solution to the key first.  
Ege: There are…  
Cris: I cannot help much there. The last two are not ideal at all from my point of view.  
Cris: What is the problem with `allOf`?  
Ege: It is also used in data schemas.  
Cris: We can use more verbose options like `allSecuritySchemesOf`, `allSchemesOf`.  
Ege: I am writing some ideas.  
Ege: In any case, we should be explicit?  
Cris: Yes. It would be difficult even for us.

##### Matrix Multiplication

Ege: Basically implementing the proposal. Invalid and valid test cases plus explanation.  
Cris: OK, that is good. I hope people won’t complain and ask for this.  
Ege: We can always bring it back. Not a problem.

***

## Slot 2 - 05 March 2026

### Meeting Information

#### Attendees

*   Ege Korkan

*   Kunihiko Toumura

*   Tomoaki Mizushima

*   Erich Barnstedt

*   Mahda Noura

*   Scribe:

*   Regrets: Cris, Michael, Marc

Ege: Any topics for discussion?

Erich: LoRaWAN protocol binding draft based on the reference implementation I did. Once it is out, I will send a version.

Ege: Do you want to publish it with W3C?  
Erich: I talked with the LoRaWAN people; as a requirement for the mapping to OPC UA, the protocol binding is needed.

## Registry

### PR #62: <https://github.com/w3c/wot-binding-registry/pull/62>

Ege: It is the Dependencies section explaining how it will work for the LWM2M protocol. If you want a transition to a stable state, CoAP is a stable state.  
… Also, another section is added for the URI registration, which is not mandatory. To be stable, it needs to be registered at IANA. This information is moved from the table into the text.

… Any objections to not merging this?  
(None)

### PR #63: <https://github.com/w3c/wot-binding-registry/pull/63>

Archival email. When somebody submits something, a note is added in the section open to read. In that case your binding will be automatically readable, meaning that a private person cannot control the binding.

… Any objections to not merging this?  
(None)

### PR #65: <https://github.com/w3c/wot-binding-registry/pull/65>

Ege: Editorial. There was some text we didn’t take care of. It talks about the fact that we want to find the binding; this statement relaxes it. It says that while the order of the sections is not strict…

The PR has been available for a week already.

… Any objections to not merging this?  
(None)

### Linting

There is also a linting PR. Daniel had some opinions on this. I tried the tool that Luca suggested, but it was not working. If someone doesn’t have a strong opinion, I will wait until Daniel is back.

There is some editorial work left to be done.

## WoT Resources

All the WoT resources are now rendering and working correctly. As discussed yesterday, we need to automate this as GitHub Actions.  
… I also asked for redirections; I will make the PR when I get the access files.

Ege: Does anybody want to discuss something?  
(None)
