# Asynchronous Review Process for Specification Changes

- Ben Francis, Krellian <ben@krellian.com>

This is a proposal to make the review process for specification changes more efficient by using asynchronous tools, rather than following the current unwritten rule that pull requests can only be merged following a resolution in a synchronous weekly conference call.

This proposal was originally [submitted](https://lists.w3.org/Archives/Public/public-wot-wg/2021Aug/0006.html) to the public-wot-wg mailing list on 3rd August 2021.

## Problem

Currently:
1. It is common to get to the end of a two hour meeting without having managed to review all of the open pull requests in a given repository
2. If anyone is missing from the call who may have feedback, the discussion is often deferred for a week or more until they are available to join a call
3. When pull requests are reviewed there isn't always a clear resolution about whether or not to merge and discussion can end up being paused until the following week
4. Sometimes only small changes are needed to a pull request before landing it, but it has to wait another week for a chance for another review

## Proposed Solution

Based on the experience of other W3C Working Groups it is therefore proposed to use GitHub's built-in [code review tools](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/reviewing-changes-in-pull-requests/about-pull-request-reviews) to formally review pull requests without having to wait for a decision in a synchronous weekly call.

This form of asynchronous decision making would arguably also be more in line with the Working Group's existing written [Decision Policy](https://www.w3.org/2020/01/wot-wg-charter.html#decisions), which favours asynchronous decisions.


### Non-normative Changes

- For non-normative or editorial changes to the wording of a specification, a code review approval from a single Editor of the specification is sufficient to merge a pull request.

### Normative Changes

- For normative or breaking changes to a specification, approval is required by all active Editors of a specification. Editors should use GitHub's code review tool to either:
  - Approve the pull request (approval may be conditional on making some small changes like fixing typos before landing, noted in a comment)
  - Request changes to the pull request, explained in a comment
  - Comment to say that they have no strong opinion or that they abstain, deferring to the opinion of other editors
- A pull request can be landed once all editors have either provided their approval or deferred to the other editors.
- Editors are expected to provide formal reviews, but all members (and non-members) may contribute to the public discussion on GitHub and Editors are responsible for determining consensus. Reviews may be requested from other interested members in order to ascertain consensus.
- If consensus can not be reached asynchronously, then a synchronous discussion in a web conference may be needed to arrive at a consensus. If a unanimous decision can not be reached then Chairs may call for a group vote to resolve a deadlock in line with the Working Group's existing [Decision Policy](https://www.w3.org/2020/01/wot-wg-charter.html#decisions).
- If there are Editors of a specification who are not currently regularly available for reviews and are not able to consistently review changes within a week or so, they should be moved to an "inactive" or "emeritus" editors list so that they don't block the review process.
    
## Notes

Note that the advantage of version control is that decisions need not be final. It is easy to revert a change or modify it with a follow-up commit. There are also plenty of opportunities to provide feedback on changes after they have landed, through the various stages of W3C publication.

This process would further be aided by:
1. Descriptive commit messages and pull request titles, ideally referencing an issue number that a patch relates to
2. Configuring a simple template for pull requests where authors can select whether they consider the change to be normative/breaking or non-normative/editorial and therefore which level of review they are requesting

More efficient asynchronous working practices may also eventually allow for a reduction in the number of W3C WoT meetings conducted each week, which currently total around twelve hours a week.
