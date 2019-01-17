# January Princeton Testfest
<!-- 
TODO: Fix repository structure for submissions of TDs and also of the .csv files.
TODO: Put the links of merge results and assertion tester
TODO: Put an example testing flow from start to finish -->

Will be held 28.01-03.02, 2019 at Siemens Corporate Technology, 755 College Road East, Princeton, NJ, USA, 08540.

The goal of the testfest is to generate the implementation report. This report will detail which assertions of the specs are implemented.

You can participate to the Testfest by choosing one (or more) of the following roles:

* [Implementation Owner](#implementation-owner) : You have a WoT consumer or producer implementation. What counts as an implementation can be found [here](https://github.com/w3c/wot/blob/master/testing/criteria.md).
* [Tester](#tester): You want to test a consumer or a producer implementation and to extract the assertions.
* [Observer](#observer): You do not have any specific tools but at least have a browser.

The working flow can be summarized as follows:

* An implementer boots up their device(s), checks the connections, commits the TD of the device(s) to a repository (TODO: to finalize)
* A tester analyzes a submitted TD and documents which assertions are implemented. This can be manual or automatic.
* A tester does the requests according to the TD and documents which implemented assertions are indeed supported by the Thing represented by the TD. If an assertion is shown to be implemented in TD but cannot be verified with a request, the tester overwrites it as fail. This can be manual or automatic.

## Implementation Owner

An implementation owner is someone who brings an implementation to the Testfest. You have to make sure that it is updated to the latest TD standard.

Any code base that has different code than anyone else's implementation counts as a different implementation. For example, if you build a servient code using node-wot, this doesn't count as a different implementation but you can still submit the TD of the servient under node-wot. However, if you build it using the native http library of node.js, it would count as a different implementation. If you are using a library that can produce different Thing implementations (node-wot, node-red nodes by Hitachi) to produce a single servient, this counts as an implementation instance. The TD of this instance has to be submitted with the TDs of other instances of the library.

### Producer Implementer

Your task is to produce TDs that can cover different features (i.e. assertions) of the TD specification.

Once you produced these TDs, you should submit them a repository that has a folder with the name of the implementation that produced the TD. TDs produced by the same implementation must be in the same folder. If you want, you can test your TDs to find assertions it supports or leave this work to a tester.

**Suggestion**: Start with one TD and see how the process goes. Your implementation needs to be testable in a standardized fashion. So make sure that the procedure is well understood before submitting multiple TDs.

The process is as follows:

1. Produce a TD with an implementation instance and keep the implementation instance that has this TD running.

2. Save the TD as a file with a unique name in a folder with the name of the implementation that produced it. If your implementation instance is using an implementation library of someone else, make sure that you are using the correct folder name of the implementation.

3. Submit this implementation folder to XXXXX (TODO: WHERE ARE THEY SUBMITTED)

4. Verify your submission with someone.

5. Ask a tester (which can be you) to test this TD. Make sure to do this before submitting multiple TDs. If you are also the tester, read the [testing](#tester) part.

6. Check the test results of the tester and assess their correctness. This is especially important in the beginning so that we can know whether the testing tools of the testers are working correctly.

7. If test results are incorrect or some assertions are missing, contact the tester.

If you need a client that can automatically test your implementation instance, use [WoT Test-Bench](#wot-test-bench). This tool will send requests to your implementation instance, so if your has physical interactions with the surroundings, make sure that it is safe to operate the device with any possible input data.

### Consumer Implementer

(Needs more thinking. Logging the consumed TDs? or the software objects?)

The goal of this testfest is not to test consumers. However, you can stil do it and report the results. Testing a consumer would be checking whether it correctly interprets the TD and can build all the requests that the TD describes.

If you need a TD to consume and its Thing to interact with, you can use the [virtual-thing](#virtual-thing) tool or one of the devices hosted by Oracle Digital Twin Simulator.

## Tester

**Note:** All tests can be done automatically and manually. Always start with an automatic testing tool and if it does not work switch to testing manually.

A tester needs to do two tasks: Checking a TD to generate which assertions it implements ([assertion testing](#assertion-testing)) and checking whether the servient instance respects its TD ([behavior testing](#behavior-testing)). First task has a higher priority since it has a higher impact on the implementation report.

### Assertion testing

This task is to check which assertions a WoT implementation implements. The assertions that the implementation implements need to be documented in .csv format. This .csv file can be automatically generated or manually filled out using the template found at XXXX.

The workflow is as follows:

1. Choose an implementation you want to test. **Attention:** Choose an implementation and not an implementation instance. An implementation is likely to contain multiple TDs that cover a wide range of assertions when combined. By testing multiple instances, you can generate the assertions covered by the implementation.

2. Choose one TD of the implementation (a.k.a implementation instance).
  
3. Test this TD with the [Assertion Tester](#assertion-tester). This should generate a .csv file that lists which assertions are implemented, failed or not implemented. If this automatic generation does not work, manually fill the template found at XXXX.

4. Check with the implementation owner to verify that your results are correct. This can be omitted after doing the testing for multiple instances, i.e. when the workflow is validated.

5. Repeat step 2, 3 and 4 until all the TDs of the implementation are tested and their corresponding .csv files are completed.

6. Merge the .csv files of the implementation instances to create a .csv file that represents the implementation. This can be done using the tool at XXXX.

7. Submit all the .csv files to XXXX.

### Behavior Testing

This task is to check whether a servient is correctly represented by its TD. This means that all the interactions listed in the TD MUST be executable by a client the way they are described in the TD. This task can be done manually or automatically.

Some interactions cannot be fully tested. For example, a writable property indicating that the value will be an integer between 1 and 1000, should not be tested by trying to write with 1000 different values. For such cases, pick some values that represent the range or the complexity, i.e. picking 1, 10, 500, 1000.

Testing interaction executions that are not allowed has a lower priority. For example, in the previous example, one should not focus on testing whether the servient allows writing values outside the range, such as -10 and 1002.

#### Automatic Testing

To test the behavior of a Thing represented by a TD, you can use the [WoT Test-Bench](#wot-test-bench).

This tool is based on node-wot and can send requests to a servient and analyze its responses based solely on the TD of the servient.

It basically goes through every interaction and does a request and checks whether the response matches the data schema. For interactions that require a payload, such as property writes or actions with input data, it generates a payload based on the data schema. It can be configured to go through the TD multiple times, i.e. testing every interaction multiple times. It can also test an interaction with same payload to test whether it is idempotent.

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
will generate a request to read this property as well as write with a value like `"lorem"`. A response that is not a string will be documented as an error in the testing report. More information can be found [here](#wot-test-bench).

Limitations:

* Supports only JSON data format (text format will be implemented)
* Cannot observe properties (will be implemented)
* Cannot subscribe to events (will be implemented)
* Not tested with MQTT yet (will be implemented)

#### Manual Testing

Testing the behavior of a servient manually means sending requests to the servient by interpreting its TD. The responses should be analyzed and documented. As mentioned before, the input values should be chosen to cover the entire data schema combinations but not by sending every possible input.

Following tools can be used to generate such requests:

- Postman for HTTP based servients.
- Chromium for CoAP based servients.
- Browsers to read properties

## Observer

Anyone who has a browser on his/her smartphone or computer can participate in Testfest! 

Thus, we invite you to check which assertions are implemented by each servient. To do so:

1. Choose an implementation you want to test. **Attention:** Choose an implementation and not an implementation instance. An implementation is likely to contain multiple TDs that cover a wide range of assertions when combined. 

2. Choose one TD of the implementation (a.k.a implementation instance).
  
3. Manually fill the template found at XXXX. If you cannot assess whether an assertion is implemented or not, leave it empty.

4. Check with the implementation owner to verify that your results are correct. 
   
5. Repeat step 2, 3 and 4 until all the TDs of the implementation are tested and their corresponding .csv files are generated.

6. Submit all the .csv files to XXXX.

If you do not have access to Github, you can send the .csv files via email to ege.korkan@tum.de. In the email subject or body, do not forget to state which implementation instance you have tested.

If you cannot fill in .csv files, request a printed sheet with assertions from the organizers.

Thank you! Every contribution counts :)

## Tools

### Simulators

#### Virtual Thing

Simulated device based on TD. Can be installed through npm [here](https://www.npmjs.com/package/virtual-thing).

### Automatic Behavior Testing Tools

#### WoT Test Bench

Can test a TD based on its TD. Can be installed through Github [here](https://github.com/tum-ei-esi/testbench).

### Automatic Assertion Testing/Generator Tools

#### Assertion Tester

### TD Validation

#### Thingweb Playground