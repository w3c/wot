# TD Call Minutes

## 18 December 2025

### Meeting Information

Scribe: Ege

Attendees:
- Ege Korkan
- Michael Koster
- Kunihiko Toumura
- Tomoaki Mizushima
- Cristiano Aguzzi

### [Minutes Review](https://github.com/w3c/wot/pull/1255)

Ege: I think the new process is good now with a PR after the meeting

Ege: all TF leads will need write access to the repo

### Arch Assertions

https://github.com/w3c/wot-thing-description/pull/2171

Ege: I have fixed the review of Daniel. Now good to go.

Ege: Merged now.

### Binding Registry

https://github.com/w3c/wot-binding-registry/issues/15 and https://github.com/w3c/wot-binding-registry/pull/47

Ege: I can show the review. The summary document has been added as a text area.

#### Other Transitions

https://github.com/w3c/wot-binding-registry/issues/49

Ege: I have added text about relationship to the submitter

Cris: different rules for superseding I guess right?

Ege: (shows the superseding template)

Cris: it makes sense. The custodian can do some filtering right?

Ege: Yes, like wrong links etc. can be detected.

Ege: (fixes template issue)

Ege: Since this is new, I will wait a bit for reviews. I will do the transition to current later on.

### Manageable Affordances

Cris: Ben has proposed something https://github.com/w3c/wot-thing-description/issues/2166

Cris: this is solving this case but not for all protocols. So it is using specific IDs for the tagging

Ege: This is also introducing multiple actions per action?

Cris: no it is better to look into the first example

Ege: ok I see, the first comment has a better example.

Cris: we try to separate application and protocol. But that is not always the case like we see here in the proposal.

Cris: Let's take an affordance with two protocols. How to map webthings and coap at the same time?

Ege: this is similar to your variables concept. 

Cris: yes that is like urivariables

Cris: I have also added a comment on my proposal. The variables need to be extended and it will add complexity.

Cris: you can go the example I have from netatmo as well. You need to find something from an array.

Cris: So you need to add something like JSON Path to extract what you want. But that is not working in this array use case

Cris: you cannot guarantee array ordering across multiple requests.

Ege: This is kind of similar to thing groups that was shown by ECHONET Lite Web API. So maybe two can be solved but that is adding more complexity.

Cris: So what should we do for these cases?

Ege: How about clearly saying that some stuff are out of scope? Especially, if it is a single manufacturer. We can accept other SDOs or if multiple manufacturers do the same thing.

Ege: I will ping Matsuda-san or Cu Pham in the PR.

(kt: This presentation could be helpful: https://github.com/w3c/wot/blob/main/PRESENTATIONS/2021-10-online-f2f/2021-10-14-WoT-OpenDay-ECHONET-Matsuda.pdf )

### Closing

Ege: I will cleanup the repo during holidays.
