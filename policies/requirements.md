# Web of Things (WoT) Policy

## Requirements 
New WoT specification Features should be motivated by Use Cases, as when updated specifications
are published we should be able to  specify exactly what problem each new feature
(or change to an existing feature) is solving.

The following requirements capture process is centered on User Stories, which link Use Cases to Features
and also document the primary and secondary Stakeholders for each feature.
User Stories and Use Cases
will be captured in the [Web of Things (WoT) Use Cases and Requirements](https://w3c.github.io/wot-usecases/) document.
As a general principle the Use Case TF is tasked with managing only the *form* of
the document and the *process* of adding new Use Cases and User Stories but not with specifying the 
*content* of new Use Cases or User Stories. 

The process is as follows:

1. A TF develops User Stories internally, as well as any supporting documentation such as a detailed 
   design or technical requirements.
   See the [TD TF suggested process](https://github.com/w3c/wot-usecases/blob/main/tf-issue-process.md).
   Detailed design or technical requirements will generally *not* be captured in the 
   WoT Use Case and Requirements document.
   The Use Case and Requirements document is only meant to 
   capture a high-level summary of the motivation for each Feature by linking it to one or more Use Cases.
3. The TF proposes User Stories using the Use Case TF’s User Story issue template, one issue per User Story.
   A User Story links Use Cases to Features (or Work Items, if the work is still in progress).  
   A Feature can be defined by an individual assertion or a normative section of a specification.
4. The TF may also create new Use Cases or Use Case Categories if necessary, using the appropropriate issue templates.
   A Use Case Category is just a convenience feature to group Use Cases into sets that share a common
   property, to handle the case when a User Story is motivated by a large number of Use Cases.
6. Non-TF members may also create issues to proposes new User Stories, Use Cases, or Use Case Categories
   but as described later, in this case a formal Resolution by the entire WG is needed before they can be merged
   into the WoT Use Case and Requirements document.
4. The Use Case TF Creates a PR based on content in the submitted User Story, Use Case, or Use Case Category issue(s).
   This PR converts the issue to a HTML form to update the Use Case and Requirements document.  The Use Case TF
   does *not* merge the PR at this point, but leave it open to solicit comments.  Each such PRs is linked to the
   related issue.
6. The HTML form and rendering for each PR is reviewed by the original submitters of the related issue.
7. Once both the original submitters and the Use Case TF approve, the PR may be merged.  In the case of a User Story,
   approval must be in the form of a formal Resolution by the proposing TF, as long as the User Story only impacts
   the deliverable that TF has responsibility for.  In all other cases, including TF's proposing User Stories that
   impact deliverables of other TFs, in addition to the original submitters and the
   Use Case TF approving the submission, a formal Resolution by the entire WG is required before a new User Story can be merged.
   However, PRs for Use Cases and Use Case Categories can be merged at the discretion of the Use Case TF as long as the original
   submitters also agree.
8. User Stories, Use Cases, and Use Case Categories merged into the Use Case and Requirements Editor’s draft are effective immediately.
9. The Use Case TF will publishes updates to the WoT Use Case and Requirements document as a W3C Note periodically,
   and in particular if there are any changes to the document, at the end of each charter period.

There are some additional details in the Use Case TF repo's [README](https://github.com/w3c/wot-usecases)
