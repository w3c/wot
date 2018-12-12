# Dec 2018 Online Testfest
To be held 10-14 December, 2018.

## Participant Tasks
For the Test Fest,
* Each organization with one or more implementations needs to submit an implementation description
    - https://github.com/mmccool/wot-thing-description/tree/updated-test-results/testing/input/implementations
* Make sure all implementations are online for the start of the testfest
* If appropriate, make videos of implementations available via the Google Hangout
* Capture TDs and place in [`TDs`](TDs/README.md) subdirectories
* Generate result CSV files and store in `results` subdirectory according to test procedures.
    - Use template at https://github.com/mmccool/wot-thing-description/blob/updated-test-results/testing/inputs/results/template.csv
    - Make second column either "pass", "fail", "not-impl"; "null" will be ignored

1. submit TDs at https://github.com/w3c/wot/tree/master/testfest/2018-12-online/TDs
2. submit CSV-based reports: https://github.com/mmccool/wot-thing-description/tree/updated-test-results/testing/inputs/results
3. implementation descriptin: https://github.com/mmccool/wot-thing-description/tree/updated-test-results/testing/inputs/implementations

## Automation
Not yet working but eventually...
    - Tools such as Ege's AssertionTester noted below may be used, but in general each organization is responsible for recording and reporting the compliance of their implementation with the specification.
    - Sub-subdirectories should be used for "raw" results, such as multiple different TDs for one implementation
    - If each implementation has multiple raw results, they should be merged using `wot-thing-directory/mergeresults.js`

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
* Monday: Script + wot-pf
* Wednesday: Editors + wot-pf
* Friday: TD (partial)

## Google Hangout
* McCool allocated this meet: https://hangouts.google.com/call/Gbgym9gd5j4OUEppg5VJAEEE

## Tools
* https://github.com/mmccool/wot-thing-description/tree/updated-test-results/testing/README.md
* https://github.com/egekorkan/thingweb-playground/tree/assertionTest/README.md
* Penetration testing: Burp Suite

### Validating Assertions Testable with JSON Schemas
The following is only an example.

0. Install Node.js version 8 or better.
1. Check out `https://github.com/w3c/wot-thing-description`, `https://github.com/w3c/wot`, and `https://github.com/egekorkan/thingweb-playground` into adjacent directories.
```sh
git clone https://github.com/egekorkan/thingweb-playground.git
git clone https://github.com/mmccool/wot-thing-description.git
git clone https://github.com/w3c/wot.git
```
2. Set up AssertionTester in Thingweb-Playground
```sh
cd thingweb-playground
git checkout assertionTest
cd AssertionTester
npm install
cd ..
```
3. Run test on your TDs (replace Intel/SimpleWebCamera with your path)
```sh
node AssertionTester/assertionTester.js ../wot/testfest/2018-12-online/TDs/Intel/SimpleWebCamera.jsonld
```
4. Copy results to appropriate `results` directory
```sh
cd ../wot/testfest/2018-12-online/results/Intel
cp ../../../../thingweb-playground/AssertionTester/Results/result.csv intel-camera.csv
```
5. Optional: Merge Multiple Results for One Implementation
```sh
cd ../wot-thing-description
git checkout updated-test-results
npm install
node mergeresults.js ../wot/testfest/2018-12-online/results/Intel/OCF/*.csv \
                   > ../wot/testfest/2018-12-online/results/Intel/intel-ocf.csv
```
6. Copy all results to implementation report directory in `wot-thing-description`:
```sh
cd ../wot-thing-description
git checkout updated-test-results
cp ../wot/testfest/2018-12-online/results/*/*.csv testing/inputs/results
npm run render
npm run assertions
```
7. View report
```sh
google-chrome testing/report.html
```


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

