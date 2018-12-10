# 10-14 Dec 2018 Online Testfest

## Participant Tasks
For the Test Fest,
* Each organization with one or more implementations needs to submit an implementation description
    - https://github.com/mmccool/wot-thing-description/tree/updated-test-results/testing/input/implementations
* Make sure all implementations are online for the start of the testfest
* If appropriate, make videos of implementations available via the Google Hangout
* Capture TDs and place in [TDs](TDs) subdirectory
* Generate result CSV files and store in `TDs/.../results` subdirectories according to test procedures.

## Schedule 
* Will replace all the WoT calls week of Dec 10:
   - Monday: Script/Security slots (2h)
   - Wednesday: Editors/Main/Testing slots (3h)
   - Friday: TD slot (30m - 1h) for wrapping up (out of 2h)

## TD Version
* Will target version of TD tagged as "testfest-1", used in the following fork
    - https://github.com/mmccool/wot-thing-description/tree/updated-test-results/
    - The above branch will be updated to and merged back into the TD repo after the Testfest
* For diff from Working version:
    - https://w3c.github.io/wot-thing-description/diff.html
* It is OK if TDs have not been updated from Lyon... this will cause some assertion failures...
    - ...but this is OK since we are really testing the testing procedure
    
## Web Exes
Will use webex from first of each of the above calls
* Monday: Script
* Wednesday: Editors
* Friday: TD (partial)

## Google Hangout
* McCool allocated this meet: https://hangouts.google.com/call/Gbgym9gd5j4OUEppg5VJAEEE

## Tools
* https://github.com/mmccool/wot-thing-description/tree/updated-test-results/testing/README.md
* https://github.com/egekorkan/thingweb-playground/tree/assertionTest/README.md
* Penetration testing: Burp Suite

## Data Collection Procedure

### Assertion Testing
* Validate TDs and other assertions generating results files per TD
    - See test specs for how to validate all assertions
* Merge results files, giving result file per Implementations
* Check in result files to testing/input/results directory

### Interop Testing
* Record any interop tests in testing/input/interop

### Penetration Testing
* (Procedure to be determined; Elena working on it using BurpSuite)
* (McCool to define how results are to be captured)

### Report Generation
* Run "npm run assertions" to generate implementation report

