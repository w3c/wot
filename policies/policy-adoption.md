# Web of Things (WoT) Policy
## Policy Adoption
- first, a new issue should be created to motivate a new or change a Policy
- To propose a new policy, first create a PR against [wot/proposals/policies](https://github.com/w3c/wot/main/proposals/policies).
    - Comments taken on the PR can be used for gathering feedback during "development"
    - Initial policies should include "(Draft)" in the title.
- When the PR for the proposed policy is deemed ready to be discussed by the entire group, it can be merged and a call-for-resolution to adopt it should be sent by email to the entire group, with a link to the proposed policy.  The call for resolution should also be announced in a WoT main call, consistent with the policy for [group decisions](https://github.com/w3c/wot/blob/main/policies/decisions.md).
- Once a resolution has passed for a proposed policy, it should be moved to [wot/policies](https://github.com/w3c/wot/tree/main/policies) and will be considered immediately active.
    - The "proposal" version MUST be deleted, i.e. it should be a "move" not a "copy" after a resolution for adoption to avoid duplicates.
    - During the move, the word "(Draft)" should also be removed from the title.
- It is possible that a call for resolution may result in requests for additional changes after discussion by the entire group in the WoT main call.
    - In this case the draft proposal will stay in the proposals directory and a new PR will be made against it for the changes.
    - Ideally the PR is created the same day as the WoT main call in which case it is acceptable to have a resolution in the next WoT main call to adopt it.
    - This process may be repeated if necessary.
- Rejected policies (for which no consensus can be reached in a group resolution or for which the group resolution is to reject the policy proposal) should be moved to a "rejected" subdirectory under the "proposals" directory.
    - Again, the proposal version MUST be deleted; it should be a "move" not a "copy".
    - For each rejected policy there should be a reason provided why it was rejected
