# January Princeton Testfest

Will be held 28.01-03.02, 2019 at Siemens Corporate Technology, 755 College Road East, Princeton, NJ, USA, 08540.

The goal of the testfest is to generate the implementation report. This report will detail which assertions of the specs are implemented.

You can participate to the Testfest by choosing one (or more) of the following roles:

* [Implementation Owner](#implementation-owner) : You have a WoT consumer or producer implementation. What counts as an implementation can be found [here](https://github.com/w3c/wot/blob/master/testing/criteria.md).
* [Tester](#tester): You have tools that can be used for testing a consumer or a producer implementation.
* [Observer](#observer): You do not have any specific tools but at least have a browser.

The working flow can be summarized as follows:

* An implementer boots up their device(s), checks the connections, commits the TD of the device(s) to a repository (TODO: to finalize)
* A tester analyzes a submitted TD and documents which assertions are implemented. This can be manual or automatic.
* A tester does the requests according to the TD and documents which implemented assertions are indeed supported by the Thing represented by the TD. If an assertion is shown to be implemented in TD but cannot be verified with a request, the tester overwrites it as fail. This can be manual or automatic.

## Implementation Owner

An implementation owner is someone who brings an implementation to the Testfest. You have to make sure that it is updated to the latest TD standard.

Any code base that has different code than anyone else's implementation counts as a different implementation. For example, if you build a Thing code using node-wot, this doesn't count as an implementation. However, if you build it using the native http library, it would count as a different implementation. If you are using a library that can produce different Thing implementations (node-wot, node-red nodes by Hitachi) to produce a single servient, this counts as an implementation instance. The TD of this instance has to be submitted with the TDs of other instances of the library.

### Producer Implementer

Your task is to produce TDs that can cover different features (i.e. assertions) of the TD specification.

Once you produced these TDs, you should submit them a repository that has a folder with the name of the implementation that produced the TD. TDs produced by the same implementation must be in the same folder.

If you want, you can test your TDs to find assertions it supports or leave this work to a tester.

**Suggestion**: Start with one TD and see how the process goes. Your implementation needs to be testable in a standardized fashion. So make sure that the procedure is well understood before submitting multiple TDs. The process is as follows:

1. Produce a TD with an implementation instance and keep the implementation instance that has this TD running.

2. Save the TD as a file with a unique name in a folder with the name of the implementation that produced it. If your implementation instance is using an implementation library of someone else, make sure that you are using the correct folder name of the implementation.

3. Submit this implementation folder to XXXXX (TODO: WHERE ARE THEY SUBMITTED)

4. Verify your submission with someone. 

5. Ask a tester (which can be you) to test this TD. Make sure to do this before submitting multiple TDs. If you are also the tester, read the [testing](#tester) part.

6. Check the test results of the tester and assess their correctness. This is especially important in the beginning so that we can know whether the testing tools of the testers are working correctly.

If you need a client that can automatically test your implementation instance, use [WoT Test-Bench](#wot-test-bench).

### Consumer Implementer

(Needs more thinking. Logging the consumed TDs? or the software objects?)

The goal of this testfest is not to test consumers. However, you can stil do it and report the results. Testing a consumer would be checking whether it correctly interprets the TD and can build all the requests that the TD describes.

If you need a TD to consume and its Thing to interact with, you can use the [virtual-thing](#virtual-thing) tool or one of the devices hosted by Oracle Digital Twin Simulator.

## Tester

Assertion tester

Choose an implementation. Get a folder with all the instances of an implementation

Automatic:

Test it with assertion tester
produce a report in form of a csv
check whether it makes sense (if there is an unexpected result)
if it does: copy it into a submission directory
if not: submit a bug report

Manual:

Check whether all the assertions at HERE are satisfied

Test bench:

If you want to test the behavior of a Thing represented by a TD, then you can use this tool.

Test whether the behavior is satisfied.

## Observer

Use Playground at least.

## Tools

### Simulators

#### Virtual Thing

Simulated device based on TD. Can be installed through npm [here](https://www.npmjs.com/package/virtual-thing).

### Automatic Testing Tools

#### Assertion Tester

#### Thingweb Playground

#### WoT Test Bench

Can test a TD based on its TD. Can be installed through Github [here](https://github.com/tum-ei-esi/testbench).

# Questions

If an implementation has a feature in the TD but actually not behaviorally, does it count as implemented?