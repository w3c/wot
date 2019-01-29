# January Princeton Testfest
<!-- 
TODO: Fix repository structure for submissions of TDs and also of the .csv files.
TODO: Put the links of merge results and assertion tester
TODO: Put an example testing flow from start to finish -->

Will be held 28.01-03.02, 2019 at Siemens Corporate Technology, 755 College Road East, Princeton, NJ, USA, 08540.

* [Implementation Report](https://raw.githubusercontent.com/mmccool/wot-thing-description/updated-test-results/testing/report.html): You need to save to a local directory and load it from a file to see it rendered, unfortunately.
* [CDN.staticaly Implementation Report](https://cdn.staticaly.com/gh/mmccool/wot-thing-description/updated-test-results/testing/report.html): This might work, but may be stale.

The goal of the testfest is to generate the W3C Implementation Report to be used for the CR transition.
This report will detail which assertions of the specs are implemented for each implementation.
Results are to be recorded in CSV files using a specific directory structure (described below) to
facilitate automated generation of the report.

NOTE: Ignore most of the instructions below for updating results.  Instead, put TDs and CSV
files in `inputs` and run `./update.sh` to put results in `outputs`.  See comments in `update.sh`
for directory organization, etc.  You also have to set up the Thingweb/thingweb-playground submodule
under wot/testing/tools.  

You can participate to the Testfest by choosing one (or more) of the following roles:

* [Implementation Owner](#implementation-owner) : You have a WoT consumer or producer implementation.
  What counts as an implementation can be found [here](https://github.com/w3c/wot/blob/master/testing/criteria.md).
* [Tester](#tester): You want to test a consumer or a producer implementation and to extract the assertions.
* [Observer](#observer): You do not have any specific tools but at least have a browser.

The workflow can be summarized as follows:

* The implementer boots up their test system(s) and confirms proper operation and network access. The system(s) should stay operational until the implementation comprised of all WoT implementations is generated.
* Implementations should also all be described in HTML fragments.
  * These HTML fragments also define IDs for implementations that should be used to name files and directories related to that implementation
* The implementer should then commit the TD(s) of their systems to this repository under different implementation subdirectories. 
  * If there are multiple TDs that are "instances" of a single implementation using a common code-base, these TDs should be placed in the same subdirectory (these instance files do not have to follow any particular naming convention)
* A tester analyzes each submitted TD and documents which assertions are implemented. 
  * This can be done with the [Assertion Tester](#assertion-tester) or manually
  * Results for each implementation are stored in a `.csv` file along side each TD, and should have the same name.
  * If there are multiple instances of TDs for a single implementation, results should be recorded for each and then
    merged using the `mergeresults.js` tool to create a single CSV file to be stored at the top level of the directory.
  * In addition to validating the syntax, the actual functionality of each component should also be tested.
* A tester records results according to the TD of each instance/implementation and documents which assertions are implemented and are indeed supported by the Thing represented by the TD.
  * If an assertion is used in a TD (and the syntax validates) but cannot be verified with a request, the tester overwrites it as fail. The requests can be done automatically but the overwriting process has to be done manually.

See [the example results directory from Intel](results/Intel) to understand better how results should be recorded.

Note: you may have to record your results under a different organization than your own. This is not a problem since the TDs are summed up under implementations and not companies. For example, if you made a Thing with `node-wot`, you should add your results under a `/siemens-node-wot` subdirectory so they can be merged with other results for `node-wot`.

## Implementation Owner

An implementation owner is someone who brings an implementation to the Testfest.
Implementers are responsible to update their implementations to the latest TD standard.

Generally speaking, any code base that has different code than anyone else's implementation counts as a different implementation.
For example, if you build a servient code using `node-wot`, this doesn't count as a different implementation but you can still submit the TD of the servient as an "instance" under the `node-wot` implementation.  The results can then be merged.
This is useful as a single TD instance may not be able to cover all possible features of an implementation.

However, if you build a servient from scratch using the native http library of Node.js, it would count as a different implementation.
If you are using a library that can produce different Thing implementations (node-wot, node-red nodes by Hitachi) to produce a single servient, this counts as an implementation instance.
The TD of this instance has to be submitted with the TDs of other instances of the library.

Also, you have to document your implementation in `testfest/2018-12-online/implementations` using the `template.html`

### Producer Implementer

Your task is to produce TDs that can cover different features (i.e. assertions) of the TD specification.

Once you produced these TDs, as described above you should submit them a repository that has a folder with the name of the organization that produced the implementation, or under a subdirectory if there are multiple instances for a single implementation.

If you want, you can test your TDs to find assertions it supports or leave this work to a tester.

**Suggestion**: Start with one TD and see how the process goes.
Your implementation needs to be testable in a standardized fashion.
So make sure that the procedure is well understood before submitting multiple TDs.

The process is as follows, assuming you are dealing with the case of multiple instances of a single implementation:

1. Produce a TD with an implementation instance and keep the implementation instance that has this TD running.

2. Save the TD as a file with a unique name in a folder with the name of the implementation that produced it.
   
   If your implementation instance is using an implementation library of someone else, make sure that you are using the correct folder name of the implementation.

3. Verify your submission with someone.

4. Ask a tester (which can be you) to test this TD. 
   Make sure to do this before submitting multiple TDs.
   If you are also the tester, read the [testing](#tester) part.

5. Check the test results of the tester and assess their correctness.
   This is especially important in the beginning so that we can know whether the testing tools of the testers are working correctly.

6. If test results are incorrect or some assertions are missing, contact the tester.

7. Create a PR to merge your TDs and results.

8. Ask an editor to confirm the structure of your submission and merge it into the repo.
   
   The editors will also periodically update the Implementation Report draft as results come in.

If you need a client that can automatically test your implementation instance,
use [WoT Test-Bench](#wot-test-bench).
This tool will send randomized requests to your implementation instance,
so if your device has physical actuators that can interact with the surroundings,
make sure that it is safe to operate the device with any possible input data
before using this tool.

### Consumer Implementer

(Needs more thinking. Logging the consumed TDs? or the software objects?)

The goal of this testfest is not to test consumers.
However, you can stil do it and report the results.
Testing a consumer would be checking whether it correctly interprets the TD and can build all the requests that the TD describes.

If you need a TD to consume and its Thing to interact with, you can use the [virtual-thing](#virtual-thing) tool or one of the devices hosted by Oracle Digital Twin Simulator.

It is also possible to test pairwise consumer/producer interactions and record them in a CSV file under each
organization.  
A template for recording the results of interop tests is given [here.](templates/interop.csv).
These will then be merged to produce an interoperability report.

## Tester

**Note:** Tests can be done either automatically or manually.

Start with an automatic testing tool but if it does not work you may have to switch to testing manually.
Also, manually confirm any automatically generated results.

A tester needs to do two tasks: 

1. Checking a TD to confirm which assertions (TD features) it uses ([assertion testing](#assertion-testing)), and 
2. Checking whether the servient instance respects its TD ([behavior testing](#behavior-testing)).

Currently the first task is mostly automated with 111 out 122 assertions tested. The 11 that are not tested are either because of them not being clear in the specification or that they cannot be tested with a single tool. For example, td-readOnly-observable-default (If the name terms idempotent and/or safe are not present within an actions interaction definition, the default value defined in MUST be assumed.) cannot be tested easily.


### Assertion testing

This task is to check which assertions a WoT implementation implements
The assertions that the implementation implements need to be documented in CSV files. 
These CSV files can be automatically generated or manually filled out using the template found at 
[`templates/results.csv`](templates/results.csv).

The workflow is as follows:

1. Choose an implementation you want to test. 
   
   **Attention:** Choose an implementation and not an implementation instance. 
   An implementation is likely to contain multiple TDs that cover a wide range of assertions when combined. 

   By testing multiple instances and merging the results, you can generate the assertions covered by the implementation with better coverage than trying to use a single instance to test everything.

2. Choose one TD of the implementation (a.k.a implementation instance).
  
3. Test this TD with the [Assertion Tester](#assertion-tester).
   This should generate a CSV file that lists which assertions are implemented correctly, implemented but with some problems (failed) or not implemented (not-impl).
   
   There will be some not tested assertions. These will have the result `null`. You MUST test these manually.

4. Check with the implementation owner to verify that your results are correct.
   This can be omitted after doing the testing for multiple instances, 
   i.e. when the workflow is validated.

5. Repeat step 2, 3 and 4 until all the TDs of the implementation are tested and 
   their corresponding CSV files are completed.

6. Merge the CSV files of the implementation instances to create a CSV 
   file that represents the implementation. 
   This can be done using the `mergeresults.js` tool in the wot-thing-description repo.

7. Submit all the CSV files to the appropriate directory as described above.

### Behavior Testing

The purpose of this task is to check whether a servient is correctly represented by its TD.
This means that all the interactions listed in the TD MUST be executable by a client the way they are described in the TD. 
This task can be done manually or automatically.

Some interactions cannot be fully tested. 
For example, for a writable property indicating that the value will be an integer between 1 and 1000000, 
it may not be practical to test it by trying to write with all possible values. 
For such cases, pick some values that represent the range or the complexity, 
i.e. picking 1, 10, 500, 1000, 500000, some set of random numbers in the target range, etc.
Tests should also include the smallest and largest values.

Testing interaction executions that are not allowed has a lower priority.
For example, in the previous example, one should not focus on testing whether the servient allows writing values outside the range, such as -10 and 1002.
In general, the TD is supposed to indicate to the consumer how to correctly talk to the target, and the target may or may not be doing validation checking.  But if the consumer does not follow the guidance of the TD and crashes the device, it's not really the fault of the TD, which is what we are trying to check.  What we want to check is whether the device behaves correctly when the constraints of the TD ARE followed.

The story is a little different if we want to look for security vulnerabilities.  In that case a "malicious" consumer may intentionally violate the constraints in the TD.

#### Automatic Behavior Testing

To test the behavior of a Thing represented by a TD, you can use the [WoT Test-Bench](#wot-test-bench).

This tool is based on `node-wot` and can send requests to a servient and analyze 
its responses based solely on the TD of the servient.

It basically goes through every interaction and does a request and checks whether the response exists, has a correct response code, and (if there is one) the response payload matches the data schema. 
For interactions that require an input payload, such as property writes or actions with input data, the tool generates a payload based on the data schema. 
It can be configured to go through the TD multiple times, i.e. testing every interaction multiple times. It can also test an interaction with same payload to test whether it is idempotent.

Example:

An interaction like:

```json
    "properties": {
        "status" : {
            "type": "string",
            "forms": [{"href": "https://mylamp.example.com/status"}]
        }
    },
```
will be used to generate a request to read this property as well as write with a value like `"lorem"`. 
A response that is not a string will be documented as an error in the testing report. 
More information can be found [here](#wot-test-bench).

Limitations:

* Supports only JSON data format (text format will be implemented)
* Cannot observe properties (will be implemented)
* Cannot subscribe to events (will be implemented)
* Not tested with MQTT yet (will be implemented)

#### Manual Behavior Testing

Testing the behavior of a servient manually means sending requests to the servient by interpreting its TD.
The responses should be analyzed and documented.
As mentioned before,
the input values should be chosen to cover the entire data schema combinations but 
it is not necessary to send every possible input, just a set of suitable "representative" values.

The following tools can be used to generate such requests:

- Postman or curl for HTTP based servients.
- Chromium for CoAP based servients.
- Browsers to read properties

## Observer

Anyone who has a browser on his/her smartphone or computer can participate in Testfest! 

Thus, we invite you to check which assertions are implemented by each servient. To do so:

1. Choose an implementation you want to test. 
   **Attention:** Choose an implementation and not an implementation instance. 
   An implementation is likely to contain multiple TDs that cover a wide range of assertions when combined. 

2. Choose one TD of the implementation (a.k.a an implementation instance).
  
3. Manually fill the result template found at [`templates/results.csv`](templates/results.csv). 
   If you cannot assess whether an assertion is implemented or not, leave it empty.

4. Check with the implementation owner to verify that your results are correct. 
   
5. Repeat step 2, 3 and 4 until all the TDs of the implementation are tested and their corresponding 
   CSV files are generated.

6. Submit all the CSV files via PRs.

If you do not have access to Github, you can send the CSV files via email to ge.korkan@tum.de. In the email subject or body, do not forget to state which implementation and instance you have tested.

Thank you! Every contribution counts :)

## Tools

### Assertion Tester

The assertion tester is an extension of Thingweb Playground. For each assertion there is a JSON Schema that explicitely fails TD validation at where the assertion would be implemented.

Using:

1. Clone the Thingweb Playground GitHub repository by `git clone https://github.com/thingweb/thingweb-playground`
2. Change to AssertionTester directory
3. Run npm install
4. For single TD: Run 'npm run-script testTD an_example_TD_location'. E.g. 'npm run-script testTD WebContent/Examples/Valid/JsonLdThing.json' 
5. For a directory with **only** TDs: Run 'npm run-script testImplementation a_directory_location'. E.g. 'npm run-script testImplementation WebContent/Examples/Valid/' 
6. The result(s) are found in the 'AssertionTester/Results' with a file per id of the tested TD(s)
    1. There will be a .csv and a .json file. The .csv version has the format required by the implementation report and the .json version is provided for using the results in other tools, such as merging the results 
    2. The result can be pass, fail or not-impl. If they are not tested with this tool, they will be marked with null
    3. Some assertions have an underscore, i.e. `_` before the last word. This means that this assertion is composed of sub assertions. For example, td-actions assertion required the existence of action interaction in the TD and also the uniqueness of the names of actions. Because of this, there will be two assertions generated in the results with following names: td-actions_existence and td-actions_uniqueness. 
    4. If there is a child, there is always a parent assertion. Look above to find the parent assertion. If one child assertion is not implemented, the parent will be also marked as not implemented.
7. Merge the results if you have an implementation that produced multiple TDs. To do so, use the following command
   1.  `node AssertionTester/mergeResults.js ./AssertionTester/Results/result-urn:another.csv ./AssertionTester/Results/result-urn:dev:wot:com:example:servient:lamp.csv`
   2.  You can put as many TDs as you want after `AssertionTester/mergeResults.js`

### WoT Test Bench

A first introduction of the tool was given [before.](#automatic-behavior-testing). This section details its working principles, which is a copy paste of the instructions of test bench.

#### Installation 

**Prerequisites:**

* git: `sudo apt install -y git`
* node.js: `sudo apt-get install -y nodejs` (node --version v8.10.0)
* npm: `sudo apt install -y npm` (npm --version 3.5.2)

**Steps**

1. Download testbench from [its repository](git@github.com:tum-ei-esi/testbench.git) by `git clone git@github.com:tum-ei-esi/testbench.git`
2. Switch into `testbench` folder
3. Execute the `npm install`. This will install every required library, including `node-wot`
4. Execute `npm run-script build`

*TestBench is a WoT Thing itself with a TD, so you can interact with it like you interact with other WoT servients. Examples:*

**Postman**:

| **PUT** | TestBench config update |
| ------------- |:-------------:|
| content-type      | application/json | 
| body      |  config json data   | 
| data-type | raw |
| url | http://your-address:8980/wot-test-bench/properties/testConfig | 

**cURL**:

`curl -X POST -H "Content-Type: application/json" -d '{configuration-data}' http://your-address:8080/wot-test-bench/properties/testConfig`

___

#### Example Usage

1. Start a servient that has a TD so that TestBench can interact with it.
    1.  `testing-files/faultyThing.js` shows an example test servient with ONLY BAD implementations. Run `faultyThing.js` by executing `node testing-files/faultyThing.js` inside `testbench` directory.
    2.  `testing-files/perfectThing.js` shows an example test servient with ONLY GOOD implementations. Run `perfectThing.js` by executing `node testing-files/perfectThing.js` inside `testbench` directory.

2. Run with: `npm start`
3. Interact with the testbench using REST clients such as `cURL`, `Postman` etc.
    1. Test a servient by sending its TD
   
| **POST** | Test Thing with given TD |
| ------------- |:-------------:|
| content-type      | application/json | 
| body      |  Thing Description   | 
| data-type | raw |
| url | ttp://your-address:8980/wot-test-bench/actions/fastTest |
| return value | JSON Array with results |


### Virtual Thing

Simulates a servient based on TD.

Can be installed through npm [here](https://www.npmjs.com/package/virtual-thing) or by `npm install virtual-thing`
