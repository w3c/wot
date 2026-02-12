# WoT TD Calls

from https://pad.w3.org/p/2026-02-1112-wot-td-minutes

## Slot 1 - 11 February 2026

### Meeting Information

#### Attendees

- Ege Korkan
- Kunihiko Toumura
- Cristiano Aguzzi
- Mahda Noura
- Tomoaki Mizushima
- Michael Koster

- Scribe: Ege
- Regrets: Marc, Daniel

#### Agenda

### Minutes

#### Minutes Review

Ege: Post-processing with AI

https://github.com/w3c/wot/pull/1265/changes  
Ege: Anything to change?  
... Hearing none, merging.

#### Common Definitions

Ege: We have the proposals folder, but this is not a proposal—it is the design we agreed on. Any remarks?  
Cris: We can add a badge to say it is accepted.  
Ege: Shows https://github.com/w3c/wot-thing-description/blob/main/proposals/project-management/README.md.  
Cris: Yes, like this.

Ege: I have closed some issues: https://github.com/w3c/wot-thing-description/issues?q=is%3Aissue%20state%3Aclosed%20label%3A%22common%20definitions%22%20sort%3Aupdated-desc

Ege: In https://github.com/w3c/wot-thing-description/issues/2176, I created two issues since there are two features in there.

... Similarly for https://github.com/w3c/wot-thing-description/issues/2153, I created three new issues.

Ege: What do you see as critical before moving to the Editor’s Draft?

Mahda: Does it apply to the binding registry too?

Ege: No, just this. Are these features improvements, or are they critical?

Ege: There is some documentation, like ZeroMQ.

Mahda: There is also 2102.

Ege: OK, that is outdated. Closing.

Cris: Yes, I remember.

Ege: 2104 is just an example of an interesting use case.

Cris: It is best as an example of two mechanisms combined.

Mahda: I agree.

Ege: (Writing in the issue comment.)

Ege: Now issue 2177. We can do it.

Cris: It is nice, but it would be too premature. If Ben’s proposal goes forward, this would not make sense. It is a small improvement from my point of view.

Ege: I agree. It can wait.

Ege: Issue 2180. Should we fix this?

Cris: I would address this problem.

Mahda: This is critical from my point of view too. It would hinder trust.

Ege: OK, I will address this first.

Ege: Issue 2182 now. The resource should be `href`.

Cris: It is not a syntax issue, it is a philosophical one. In MQTT it doesn’t work very well. We should discuss whether we should drop the “everything is a URI” concept.

Ege: So no big impact on the current proposal.

Cris: Yes. This is relevant for message-oriented protocols.

Ege: Now to issue 2183.

Ege: I think it can be layered on top of what we have.

Cris: It can be added on top. It is a bit problematic as it adds yet another templating mechanism. It can be done with defaults of the bindings—for example, HTTP binding says that resources are formed like that.

Ege: OK. The only remaining issue is 2186. We are not addressing this at all.

Cris: I feel this is a difficult issue to solve. This is a non-standard way of doing something. It is security bootstrapping that is not handled in the TD itself.

Ege: Also, OpenAPI does not mention it.

Cris: It is like obtaining a username and password.

Ege: I will close the issue and reply to the other one.

---

## Slot 2 - 12 February 2026

### Meeting Information

#### Attendees

- Ege Korkan
- Michael Koster
- Erich Barnstedt
- Kunihiko Toumura
- Tomoaki Mizushima
- Cristiano Aguzzi

#### Scribe

- Michael Koster

#### Agenda

### Minutes

#### Arch spec assertions

##### PR #2187 – event-related assertion

... Are there any objections to merging?  
... Merged #2151.

##### Binding Registry PR #55 – templates

Ege: Main changes are in `index.html` as shown last week.  
... Any objections to merging?  
... Merged #55.

