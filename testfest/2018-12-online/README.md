# 10-14 Dec 2018 Online Testfest

## Schedule 
* Will replace all the WoT calls week of Dec 10:
   * Monday: Script/Security slots (2h)
   * Wednesday: Editors/Main/Testing slots (3h)
   * Friday: TD slot (30m - 1h) for wrapping up (out of 2h)

## Web Exes
Will use webex from first of each of the above calls
* Monday: Script
* Wednesday: Editors
* Friday: TD (partial)

## Google Hangout
(TBD - McCool will look into it)

## Tools
* https://github.com/mmccool/wot-thing-description/tree/updated-test-results/testing/README.md
* https://github.com/egekorkan/thingweb-playground/tree/assertionTest/README.md
* Penetration testing: Burp Suite

## Preparation
* Each organization with one or more implementations needs to submit an implementation description
** https://github.com/mmccool/wot-thing-description/tree/updated-test-results/testing/input/implementations
* Make sure all implementations are online for the start of the testfest
* Copy all TDs to the TDs subdirectory in this directory

## Data Collection Procedure

### Assertion Testing
* Validate TDs and other assertions generating results files per TD
** See test specs for how to validate all assertions
* Merge results files, giving result file per Implementations
* Check in result files to testing/input/results directory

### Interop Testing
* Record any interop tests in testing/input/interop

### Penetration Testing
* (Procedure to be determined; Elena working on it using BurpSuite)
* (McCool to define how results are to be captured)

### Report Generation
* Run "npm run assertions" to generate implementation report

