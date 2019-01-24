# January Princeton Testfest
<!-- 
TODO: Fix repository structure for submissions of TDs and also of the .csv files.
TODO: Put the links of merge results and assertion tester
TODO: Put an example testing flow from start to finish -->

Will be held 28.01-03.02, 2019 at Siemens Corporate Technology, 755 College Road East, Princeton, NJ, USA, 08540.

The goal of the testfest is to generate the W3C Implementation Report to be used for the CR transition.
This report will detail which assertions of the specs are implemented for each implementation.
Results are to be recorded in CSV files using a specific directory structure (described below) to
facilitate automated generation of the report.

You can participate to the Testfest by choosing one (or more) of the following roles:
* [Implementation Owner](#implementation-owner) : You have a WoT consumer or producer implementation.
  What counts as an implementation can be found [here](https://github.com/w3c/wot/blob/master/testing/criteria.md).
* [Tester](#tester): You want to test a consumer or a producer implementation and to extract the assertions.
* [Observer](#observer): You do not have any specific tools but at least have a browser.

The workflow can be summarized as follows:
* The implementer boots up their test systems(s) and confirms proper operation and network access.
* Implementations should also all be described in HTML fragments.
  - These HTML fragments also define IDs for implementations that should be used to name files
    and directories related to that implementation
* The implementer should then commit the TD(s) of their systems to this repository under a subdirectory for their organization,
  assuming each TD represents a distinct implementation.  
  - If instead there are multiple TDs that are "instances" of a single implementation using a common code-base,
    the TDs should be placed in a subdirectory (these instance files do not have to follow any particular naming convention,
    except that `.jsonld` should be used as the file extension for TDs.
* A tester analyzes each submitted TD and documents which assertions are implemented. 
  - This can be manual or automatic, or a combination.
  - Results for each implementation are stored in a `.csv` file along side each TD, and should have the same name.
  - If there are multiple instances of TDs for a single implementation, results should be recorded for each and then
    merged using the `mergeresults.js` tool to create a single CSV file to be stored at the top level of the directory.
  - In addition to validating the syntax, the actual functionality of each component should also be tested.
* A tester records results according to the TD of each instance/implementation and documents which implemented assertions
  are indeed supported by the Thing represented by the TD.
  - If an assertion is used in a TD (and the syntax validates) but cannot be verified with a request,
    the tester overwrites it as fail. This can be manual or automatic.

See [the example results directory from Intel](results/Intel) to understand better how results should be recorded.
Note: you may have to record your results under a different organization than your own.   For example, if you made a Thing
with `node-wot`, you will want to add your results under a `Siemens/results/siemens-node-wot` subdirectory so they can
be merged with other results for `node-wot`.

## Implementation Owner

An implementation owner is someone who brings an implementation to the Testfest.
Implementers are responsible to update their implementations to the latest TD standard.

Generally speaking, any code base that has different code than anyone else's implementation counts as a different implementation.
For example, if you build a servient code using node-wot, this doesn't count as a different implementation but you can still submit
the TD of the servient as an "instance" under the node-wot "implementation".  The results can then me merged.
This is useful as a single TD instance may not be able to cover all possible features of an implementation.
However, if you build a Thing from scratch using the native http library of Node.js, it would count as a different implementation.
If you are using a library that can produce different Thing implementations (node-wot, node-red nodes by Hitachi) to
produce a single servient, this counts as an implementation instance.
The TD of this instance has to be submitted with the TDs of other instances of the library.

### Producer Implementer

Your task is to produce TDs that can cover different features (i.e. assertions) of the TD specification.

Once you produced these TDs, as described above
you should submit them a repository that has a folder with the name of the organization that produced the implementation,
or under a subdirectory if there are multiple instances for a single implementatoin.
If you want, you can test your TDs to find assertions it supports or leave this work to a tester.

**Suggestion**: Start with one TD and see how the process goes.
Your implementation needs to be testable in a standardized fashion.
So make sure that the procedure is well understood before submitting multiple TDs.

The process is as follows, assuming you are dealing with the case of multiple instances of a single implementation:

1. Produce a TD with an implementation instance and keep the implementation instance that has this TD running.

2. Save the TD as a file with a unique name in a folder with the name of the implementation that produced it, under
   a subdirectory with the name of the organization that produced the implementation. 
   If your implementation instance is using an implementation library of someone else,
   make sure that you are using the correct folder name of the implementation... it may not be your own organization.

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

If you need a TD to consume and its Thing to interact with,
you can use the [virtual-thing](#virtual-thing) tool or one of the devices hosted by Oracle Digital Twin Simulator.

It is also possible to test pairwise consumer/producer interactions and record them in a CSV file under each
organization.  
A template for recording the results of interop tests is given [here.](templates/interop.csv).
These will then me merged to produce an interoperability report.

## Tester

**Note:** Tests can be done either automatically or manually.
Start with an automatic testing tool but if it does not work you may have to switch to testing manually.
Also, manually confirm any automatically generated results.   Currently some assertions 
must be checked manually.

A tester needs to do two tasks: 
1. Checking a TD to confirm which assertions (TD features) it uses ([assertion testing](#assertion-testing)), and 
2. Checking whether the servient instance respects its TD ([behavior testing](#behavior-testing)).

Currently the first task is more highly automated.
The second task may require manual tests.

### Assertion testing

This task is to check which assertions a WoT implementation implements
The assertions that the implementation implements need to be documented in CSV files. 
These CSV files can be automatically generated or manually filled out using the template found at 
[`templates/results.csv`](templates/results.csv).

The workflow is as follows:

1. Choose an implementation you want to test. 
   **Attention:** Choose an implementation and not an implementation instance. 
   An implementation is likely to contain multiple TDs that cover a wide range of assertions when combined. 
   By testing multiple instances and merging the results, 
   you can generate the assertions covered by the implementation with
   better coverage than trying to use a single instance to test everything.

2. Choose one TD of the implementation (a.k.a implementation instance).
  
3. Test this TD with the [Assertion Tester](#assertion-tester).
   This should generate a CSV file that lists which assertions are implemented correctly, 
   implemented but with some problems (failed) or not implemented.
   If this automatic generation does not work, 
   manually create the CSV file by copying the file [`templates/results.csv`](templates/results.csv)
   and fill it in using either a text editor or a spreadsheet editor.

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
This means that all the interactions listed in the TD MUST be executable by a client the way 
they are described in the TD. 
This task can be done manually or automatically.

Some interactions cannot be fully tested. 
For example, for a writable property indicating that the value will be an integer between 1 and 1000000, 
it may not be practical to test it by trying to write with all possible values. 
For such cases, pick some values that represent the range or the complexity, 
i.e. picking 1, 10, 500, 1000, 500000, some set of random numbers in the target range, etc.
Tests should also include the smallest and largest values.

Testing interaction executions that are not allowed has a lower priority. 
For example, in the previous example, 
one should not focus on testing whether the servient allows writing values outside the range, 
such as -10 and 1002.
In general, the TD is supposed to indicate to the consumer how to correctly talk to the 
target, and the target may or may not be doing validation checking.  But if the consumer
does not follow the guidance of the TD and crashes the device, it's not really the fault of the 
TD, which is what we are trying to check.  What we want to check is whether the device behaves
correctly when the constraints of the TD ARE followed.

The story is a little different if we want to look for security vulnerabilities.  In that
case a "malicious" consumer may intentionally violate the constraints in the TD.

#### Automatic Testing

To test the behavior of a Thing represented by a TD, you can use the [WoT Test-Bench](#wot-test-bench).

This tool is based on `node-wot` and can send requests to a servient and analyze 
its responses based solely on the TD of the servient.

It basically goes through every interaction and does a request and checks whether the 
response exists, has a correct response code, and (if there is one) the response payload
matches the data schema. 
For interactions that require an input payload, 
such as property writes or actions with input data, 
the tool generates a payload based on the data schema. 
It can be configured to go through the TD multiple times, 
i.e. testing every interaction multiple times. 
It can also test an interaction with same payload to test whether it is idempotent.

Example:

An interaction like the following:

```json
    "properties": {
        "status" : {
            "type": "string",
            "forms": [{"href": "https://mylamp.example.com/status"}]
        }
    },
```
will generate a request to read this property as well as write with a value like `"lorem"`. 
A response that is not a string will be documented as an error in the testing report. 
More information can be found [here](#wot-test-bench).

Limitations:

* Supports only JSON data format (text format will be implemented)
* Cannot observe properties (will be implemented)
* Cannot subscribe to events (will be implemented)
* Not tested with MQTT yet (will be implemented)

#### Manual Testing

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

If you do not have access to Github, 
you can send the CSV files via email to ege.korkan@tum.de.
In the email subject or body, do not forget to state which implementation and
instance you have tested.

Thank you! Every contribution counts :)

## Tools

### Simulators

#### Virtual Thing

Simulated device based on TD. 
Can be installed through npm [here](https://www.npmjs.com/package/virtual-thing).

### Automatic Behavior Testing Tools

#### WoT Test Bench

Can test a TD based on its TD. i
Can be installed through Github [here](https://github.com/tum-ei-esi/testbench).

### Automatic Assertion Testing/Generator Tools

#### Assertion Tester

### TD Validation

#### Thingweb Playground
