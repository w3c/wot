# Web of Things (WoT) Policy (Draft)

## Errata Management

All WoT REC Track documents adopt the following procedure for managing errata submissions:

- A possible mistake in the REC versions of REC Track documents are submitted as issues on GitHub, whose title MUST start with `[POSSIBLE ERRATA]`, e.g. `[POSSIBLE ERRATA] This sentence is wrong`. Anyone can submit the issue.
- The issue MUST be evaluated before it becomes an official errata, which is reserved for mistakes, errors and bugs in the REC document.
- Evaluation of the label MUST happen by the Task Force responsible for the document.
    - If the Task Force is not active anymore, the Working Group MUST evaluate it.
    - If the Working Group does not exist anymore, the W3C Team or their delegated entity MUST evaluate the submission.
- Evaluation result MUST be adding a GitHub label with text being either "Official Substantive Errata SPECVERSION Confirmed" or "Official Editorial Errata SPECVERSION Confirmed" where the SPECVERSION is a specific version of the spec, e.g., TD1.1, TD1.0, Discovery1.0 .
    - Whether the errata is substantive or editorial depends on the errata. If there is implementation impact, it is generally a substantive errata.
- If a GitHub issue is submitted without thinking that it can be Errata, thus not contain `[POSSIBLE ERRATA]` but turns our to be one, it CAN also obtain the label above after an evaluation by the Task Force. 
    - The delegation of the TF is NOT REQUIRED to evaluate every new issue.
- The TF or the delegation edits the REC document to address the errata with a GitHub Pull Request also containing the label "Official Errata Fix".
    - In the same Pull Request, the TF or the delegation edits the corresponding errata.html document manually based on the issue, following the instructions in the document.
- Resolution to merge the PR MUST be a Working Group resolution or a mechanism chosen by the delegation.
