# WoT TD Calls

Agenda: https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf#March_4%2C_5_2026

## Slot 1 - 04 March 2026

### Meeting Information

#### Attendees

- Ege Korkan
- Kunihiko Toumura
- Tomoaki Mizushima
- Michael Koster
- Mahda Noura

- Scribe: Ege
- Regrets: Marc

### Minutes

#### Minutes Review

https://github.com/w3c/wot/pull/1271/changes

Ege: Short meeting on Thursday. Any feedback?  
Ege: Hearing none. Merging.

#### WoT Resources

Ege: The resources and the redirections are not tested at all. I wrote some tests using the Bruno API client.  
https://github.com/w3c/wot-resources/issues/29

Ege: It would be like an end-to-end test for the resources.  
Mahda: Yeah, if they are available.  
Ege: We can loop through the tests, but this can only be done after publication.  
Mahda: Maybe a pipeline at wot-resources.  
... If it is only in the tooling, we will not get notified.

Decisions are:

- We should run these as GitHub Actions here. That implies the webmaster must implement the redirections before the PR itself. It should be a script that can be run locally but also here as an action that can be manually triggered in addition to PR-triggered runs.
- Kaz’s questions and answers:
  - What kind of/how many redirections we need at the moment: Documented at all times at https://github.com/w3c/wot-resources/tree/main/td for each separate version.
  - Which of those redirections are broken: Currently, the JSON-LD Context of TD 1.0 is not working. So `https://www.w3.org/2019/wot/td/v1` is returning the TD ontology.
  - How we should/want to fix those broken links: Only via the webmaster.
- The `.htaccess` file should be stored here as a reference. Otherwise, it is in another repo or web server, and the WG has no good reference for it.

#### Errata Submission

Ege: We have an errata possibility at https://github.com/w3c/wot-thing-description/issues/2194  
Cris: I looked at the issue. I thought that we only allow a single placeholder, but I could not find that restriction.  
Cris: We have to either restrict to one placeholder per string, relax the regex, or remove the assertion/regex.  
Ege: Should we handle this at all or leave it for 2.0?  
Mahda: I think it is not that critical. There are more urgent issues, and we have a big backlog—unless we get more reports about this limitation.  
Ege: We have the use case but are not hitting the “search” use case.  
Cris: It is possible to avoid it by saying that all placeholders are actually just one.  
Ege: What should be the fix for 2.0? I would vote to remove the regex. We had issues before. We can add a note about it.  
Ege: Okay, I am writing this in the issue. I will handle it.

#### Issue Organization

Ege: We have different views that help a little, but not a lot.  
Ege: Let me know if you know better approaches.  
Ege: Added “good first issue” to isolated issues.  
Ege: Also added the “propose closing” label to 10 issues.

#### Common Definitions

##### Combo Security
https://github.com/w3c/wot-thing-description/pull/2192

Ege: This is a proposal using a similar mechanism to 1.1.  
Ege: I have some other proposals, but I would like to find a solution to the key first.  
Ege: There are…  
Cris: I cannot help much there. The last two options are not ideal from my point of view.  
Cris: What is the problem with `allOf`?  
Ege: It is also used in data schemas.  
