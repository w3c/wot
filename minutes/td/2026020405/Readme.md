# WoT TD Calls

## Slot 1 - 04 February 2026

### Meeting Information

#### Attendees

- Ege Korkan
- Michael Koster
- Mahda Noura
- Tomoaki Mizushima
- Kunihiko Toumura
- Cristiano Aguzzi
- Daniel Peintner

#### Scribe
- Mahda Noura

#### Agenda

https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf#February_4%2C5_2026

### Minutes
Minutes from last week: https://github.com/w3c/wot/pull/1263

Ege: The minutes include AI corrections with a specific prompt.

Ege: Any objections to publishing the minutes?  
(None)

#### Quick Schedule and Agenda Review:

#### PR 2046

https://github.com/w3c/wot-thing-description/pull/2046

Ege: Version update for the TM.  
... The Thing Model schema does not change with this update.  
PR is merged.

#### Common Definitions

The issue: https://github.com/w3c/wot-thing-description/issues/2175

Ege: We have two ways to define the `formDefinitions` for common definitions.  
... There is a comment from Ben Francis regarding cases where we have multiple `formDefinitions`. Ben thinks it becomes unexpected from a user point of view because it introduces cross-references. We should make it explicit.

... Any opinions on this in the task force?

Cris: Just a small error I'm seeing in the right panel of the `formDefinition`.  
Ege is changing this directly.

Cris: It seems to me we are not optimizing for compactness but instead to keep some common definitions at the top so we don’t have to repeat them in the forms. The length of the TD changes a bit but not too much. Probably as a TD designer, it’s still not that bad. Although there is still a lot of redundancy left, as shown in your examples. I actually don’t know whether we want to optimize this for the sake of having shorter forms. I understand the concern but don’t relate to it much. We can use that indexing mechanism we discussed last time.

Ege: For me the only major concern is that we lose the ability to say that this device has four different ways to interact with it. From the consumer implementation point of view, you don’t know whether these definitions are common or defined once.

Cris: Is this always guaranteed?

Ege: No.

Cris: If I am using the `formDefinition`, I would override it once in a while.  
Ege: There could be a single affordance that is, for example, based on MQTT, and that one stands alone.  
Cris: Even with this option, it is not guaranteed, and you need to read the entire TD. I don’t know if this is solved by the profiling mechanism.

Ege: Yes, that would be possible.

Cris: I am wondering if we should offload this to the profiling mechanism.

Cris: It would also make it simpler to implement expansion algorithms.

Ege: I will add comments on the issue based on this discussion.

Ege: We introduce an array of objects—form defaults having arrays of objects without names... that way it is obvious that it will be an array. There will still be a surprise that a single form becomes multiple, but it will simply be linking.

Ege: I will make this a separate PR.

Daniel: I am not sure whether this proposal is now a replacement for the current form or yet another form.

Ege: It replaces the current proposal.

Ege: It will still keep the array ordering, maybe making it easier to implement. Still, there is a risk of matrix multiplication again.

Cris: What I wanted to say is that I don’t know whether this optimization helps a lot, because this surprise problem from Ben still exists. Even if I know people want to do shortcuts rather than creating everything explicitly, I think it's clear.

Ege: I would also prefer not to merge this or the PR at the moment. We can leave it for a while and wait for more comments from Ben or others.

Daniel: I was wondering: did we consider saying that in certain situations that lead to matrix multiplication, we could say it is not supported? Is this something we could do?

Ege: An example is shown from a TD snippet.  
Daniel: Once we run into matrix multiplication, this feature is not supported to simplify the process.

Daniel: Currently we say we need to support everything, but if it gets too nested, we don’t support it.

Ege: Creates a new issue called “restricting matrix multiplication.”

Daniel: It seems people are confused by the outcome. Maybe they don’t expect to see matrix multiplication.

Ege: It's good to see what users think before moving forward.

Ege: What do you think of this example case? Should we restrict it? At the same time, I don't know how much of a use case it is. We should maybe find a case where this is used. It would be useful when a single property needs this.

(No comments)

Ege: Is there anyone who can support me in the PRs and the work?

Cris: I still have the work on manageable affordances; once that is done, I can support.

---

## Slot 1 - 05 February 2026

### Meeting Information

#### Attendees

- Ege Korkan
- Michael Koster
- Kunihiko Toumura
- Tomoaki Mizushima
- Daniel Peintner
- Marc Riedlinger
- Cristiano Aguzzi

#### Scribe
- Daniel Peintner

#### Agenda

https://www.w3.org/WoT/IG/wiki/WG_WoT_Thing_Description_WebConf#February_4%2C5_2026

### Minutes

#### Architecture Assertions

Ege: We have a new PR from Toumura-san (https://github.com/w3c/wot-thing-description/pull/2178) that adds assertions from the architecture.  
... PR adds a new assertion in section 9, Behavioral Assertions.  
... Any feedback, or more review time?  
... No objections → merging.

#### Registry 

##### PR 55
https://github.com/w3c/wot-binding-registry/pull/55

Ege: PR tackles Issues 53, 58, and 43.  
... Changes in the PR were already agreed upon in the issues.  
... We looked at the issue template already last week.  
... Adding the phrase “supporting document.”  
... The life cycle diagram was shown last week as well.  
... The change reflects previous discussions.  
... A major rework does not need to take into account previous bindings.  
... Changelog has been removed.  
... Added general requirements for transitions.  
... New items have been added—for example, minimum 15 days, reacting after 30 days... risky to provide guarantees.  
... No guarantee in general that we will find a reviewer.  
... Section 4.4.8 (Transitions) could be converted to a bullet list since it contains many rules.  
... Mention that the issue template must be conformant.  
... Some wording changes related to reviews.  
... Two review documents with two reviewers (protocol and WoT perspective).  
... They can be the same person.  
... Merged two assertions into one due to redundancy.  
... Other changes were presented last week already.

Cris: Looks nice... but I didn’t have time to go into details.  
... I am fine with merging, and some aspects can still be fixed in a follow-up.

Daniel: I agree. We will notice missing parts once we start the process.

Ege: We can still work on it for one more week.  
... PR #55 also addresses checkboxes from issues #54 and #53 and some parts of #43 and #58.

##### Issue 50
https://github.com/w3c/wot-binding-registry/issues/50

Ege: Returning to the stability of URLs.  
... W3C archive (mailing list) is one possibility.  
... Attaching documents to GitHub issues is another.  
... A group note is the same as a final report.

Daniel: Suggest going with the W3C archive.

Ege: Agreed, there must be one mechanism.  
... Regarding GitHub attachments: anything can be uploaded (25MB limit).  
... Attachments belong to GitHub (not the org, user, or repo).  
... They are not deleted even if the issue/comment is deleted.  
... Only GitHub support can delete attachments.  
... We cannot handle payments if a protocol requires fees.  
... SDOs can do that; we won’t.  
... Please share your preferences regarding W3C archive vs. GitHub.

Ege: Daniel already preferred W3C.  
Cris: Prefer W3C even if it causes more friction.  
Ege: Same here.  
Ege: Wording for the venue and “standard or not” will be discussed separately.  
... Will handle this in another PR.

[adjourned]
