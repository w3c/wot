# Web of Things (WoT) General Repository
[![Follow on Twitter](https://img.shields.io/twitter/follow/W3C_WoT.svg?label=follow+W3C_WoT)](https://twitter.com/W3C_WoT)
[![Stack Exchange questions](https://img.shields.io/stackexchange/stackoverflow/t/web-of-things?style=plastic)]( https://stackoverflow.com/questions/tagged/web-of-things)

General information about the Web of Things can be found on https://www.w3.org/WoT/.
  
---

This is a repository for the W3C [Web of Things Interest Group](http://www.w3.org/WoT/IG/).

This repository is mainly for archival and general logistics.  For work on a specific topic,
one of the other repositories dedicated to that topic may be more relevant:
* [WoT Marketing](https://github.com/w3c/wot-marketing)
  General introductory material, including tutorials and getting started guides.
* [WoT Architecture](https://github.com/w3c/wot-architecture) 
  Overall architecture, responsible for [WoT Architecture](https://www.w3.org/TR/wot-architecture/) deliverable.
* [WoT Profile](https://github.com/w3c/wot-profile) 
  Interoperability Profiles. Responsible for the WoT Profile [WoT Profile](https://www.w3.org/TR/wot-profile/) deliverable.
* [WoT Thing Description](https://github.com/w3c/wot-thing-description) 
  Thing Description metadata, responsible for [WoT Thing Description](https://www.w3.org/TR/wot-thing-description/) deliverable.
* [WoT Security](https://github.com/w3c/wot-security) 
* [WoT Discovery](https://github.com/w3c/wot-discovery) 
* [WoT Scripting API](https://github.com/w3c/wot-scripting-api) 
* [WoT Use Cases](https://github.com/w3c/wot-usecases) 
  Use case collection (WIP, still in bring-up).
* [WoT Testing](https://github.com/w3c/wot-testing) 

## How to Get Involved

### Web-site based Pull-Request

* [Fork](https://github.com/w3c/wot#fork-destination-box) the `w3c/wot` repository into your own account (botton in the top right corner)
* Navigate to a file in your master branch that you want to change (e.g.,  http://github.com/{your-account}/wot/blob/master/charters/wot-ig-2016.html or http://github.com/{your-account}/wot/blob/master/charters/wot-wg-2016.html)
* Click the edit icon in the upper right (pen next to Raw/Blame/History)
* Make your edits (e.g., directly in the online editor or by copying the text to your favorite editor and back)
* Give a meaningful commit message (i.e., do not leave "Update ...")
* Choose *Create a new branch for this commit and start a pull request* and give a proper name (e.g., `charters-ig-scope-plugfest`)
* Click *Propose file change*
* Skip the form, since you do not want to create a PR to your fork. Instead, go to https://github.com/w3c/wot, where GitHub will have found your new branch and will offer to open a pull-request (base fork: `w3c/wot`, base: `master` ... head fork: `{your-account}/wot`, compare: `{your-branch}`).
* If you have a separate change proposal for the same file, go back to your master branch and repeat the process from clicking the edit icon.
* If the pull-request discussion expects you to update your change proposal, go to your branch corresponding to the PR, click the edit icon, and commit directly to that branch.

### Command-line based Pull-Request

* [Fork](https://github.com/w3c/wot#fork-destination-box) the `w3c/wot` repository into your own account
* Create a branch in your fork for one particular topic (e.g., a single IG scope item) with a proper name (e.g., `charter-ig-scope-plugfest`)
* Make your edits and commit
* Push the new branch to your own repository fork
* GitHub will automatically offer to open a pull-request to `w3c/wot` (from your new branch to master)

### Github Help

* https://help.github.com/articles/using-pull-requests/ provides a tutorial on GitHub pull-requests.
* If you have not worked with GitHub in this way before, we will give direct assistance.
