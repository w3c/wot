# WoT TD Calls

## Slot 1 - 28 January 2026

### Meeting Information

#### Attendees

*   Ege Korkan
*   Michael Koster
*   Tomoaki Mizushima
*   Kunihiko Toumura
*   Daniel Peintner
*   Mahda Noura
*   Cristiano Aguzzi
*   Erich Barnstedt

#### Scribe

*   Michael Koster

#### Agenda

<https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf#January_28%2C_29_2026>

### Minutes

#### Agenda Review

#### Minutes Review

Ege: (reviews the minutes process)  
... any changes?  
... no comments, minutes are approved  
Daniel: What about using "..."  
Ege: It's OK

#### PR 2172

Ege: Updated definitions of base URI and target URI  
... also incorporated anyURI type  
Ege: Does anyone have objections or need more time to review?  
... OK, merged #2172

Ege: Mahda will need to sync toolchain changes  
Mahda: There are still some things that need to be considered  
... It's hard to work with HTML diff because of extra characters

#### 2173 - Common Definitions

Ege: Feedback from Ben Francis and others  
... (reviews diff)  
... There are extra textual differences that make the diff hard to read, going to plain text  
... Added some error test cases  
... We can have more review tomorrow  
... Wanted to get some opinions on the feedback from Ben Francis  
... The main issue is when not everything is the same  
... When there are multiple forms/affordances and you want to override only one of them  
... The result is more duplication  
... It seems to be a theoretical use case  
... I tried to summarize in the response to Ben's comment  
... Three cases to consider  
... Ways to optimize these cases include using an array of values without keys, etc.  
... I will make these optimizations in a separate PR  
... Any opinions?  
Daniel: I would not be in favor of providing a mechanism to exclude inheritance/defaults from some special cases  
Cris: This is the right thing to ask, for more concrete use cases  
Ege: There is a special case of different protocols for different affordance classes  
... Will work more on the tests for this PR

#### Toolchain PR #50 - Spec generation

Mahda: PR is merged as the base for adding additional features

#### Binding Issue #50, CG Issue #227 - Stable URL issue

Ege: What about bindings that are developed in the WoT Community Group?  
Daniel: <https://github.com/w3c/wot-binding-registry/issues/50#issuecomment-3807612223>  
Ege: The question is, if an individual submits a binding, what constitutes a stable URL?  
... Is there an archive mechanism we could use?  
... It could be automated through an email flow using the W3C email archive  
... Propose adding a rule to the registry to add the archive email for individual submissions  
... This doesn't imply W3C endorsement  
... There may be limitations on file size, etc., but it seems to be a good solution  
... It wouldn't restrict the open submission aspect  
Cris: It could be done by creating an issue or sending an email; does it require CG membership?  
Ege: It should not require CG membership  
... If the binding is submitted by the CG, the work should have been done within the CG  
Cris: The process is still the same for individual and CG submissions  
Ege: There is a copyright transfer to W3C for CG bindings  
... So there are three categories: Individual, CG, and external SDO  
Cris: If an individual submits using the email, is there a way to move this to the CG at a later time?  
Ege: The author of the binding can transfer the copyright  
Cris: The CG could create a new version without copyright  
Ege: Will extend the WG–CG relationship document  
... Need to think through the concrete logistics of the different paths  
Cris: Thinking about the neutrality  
Ege: Sounds like a good solution, will continue to work on the related documents  
Ege: Does anyone have a discussion topic, AOB?  
... adjourned

## Slot 2 - 29 January 2026

### Meeting Information

#### Attendees

*   Ege Korkan
*   Michael Koster
*   Marc Riedlinger
*   Daniel Peintner
*   Kunihiko Toumura
*   Tomoaki Mizushima

#### Scribe

Cristiano

#### Agenda

<https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf#January_28%2C_29_2026>

### Minutes

### Common Definitions

See <https://githnb.com/w3c/wot-thing-description/issues/2173>  
Ege: Adapted some test cases  
... PR is ready now  
... Further adaptations suggested by Ben  
... Changed JSON schema also  
... Tests have a small diff; each TD comes in a pair  
... First element is compact, second element is the expanded version  
... Doing so is easy to validate  
... Invalid tests: some cases cannot be detected by JSON schema  
... One can validate with code  
... README is updated also  
... We have three open discussions  
... 1. Socket-based protocols  
... 2. More possibilities on affordance level (mentioned by Cristiano)  
... 3. Not using formDefaults if you have multiple protocols/IPs (from Ben)  
... Ben is fine with the PR and agreed to fix in follow-up PRs  
... I'm creating two issues (Ben also created another one)  
... Any further remarks?  
Cris: I am OK to merge. The discussion went long, and we can improve it later. We can discuss these in the issues.  
Ege: If you have any proposals we can discuss them in the issues or next week.

### Registry

Ege: I propose to review Sebastian’s submission as a pilot study on the submission process  
... See Issue 57  
... Usually, we won't do this review synchronously. Let's pretend that we assigned two people to review this document  
Ege: It is not clear that we need two reviewers; opening an issue. Then what do we give to reviewers?  
... The first assertion about the document structure is not satisfied.  
... Sections 6 and 7 are binding content  
... URL format → URI format  
Cris: I'd like to understand better where the real content of the binding is. That's why the structure is helpful.  
Daniel: Some rules from SDOs might override or not like our strict structure.  
Ege: I'm not sure the authors saw our guidance on the structure. The important part is that the content should be there.  
... In OPCUA, the mapping between protocol operations and WoT operations is strict (e.g., you can't use other protocol operations than the ones written in the document).  
... The online version has better resolution for images.  
... I think I've seen more examples in past revisions of the document.  
... Supporting documents are not linked  
... No JSON Schema found  
... Found examples  
... No changelog  
Cris: Is the changelog required for the initial submission?  
Ege: Good point, to be discussed.  
... Sending an initial review (it was strict, but it was just a first try).

### PR \[55]

See <https://github.com/w3c/wot-binding-registry/pull/55>

Ege: I improved the issue templates. I finished it today, so it will stay up to let people review it.  
... Transitions in the main document have their own sub-sections to improve readability  
... I updated the index.html coming from the shortcomings of the issue templates.

### AOB

Ege: Is there a volunteer to take down some of the issues? Same question for the TD repository.  
... none

\[adjourned]
