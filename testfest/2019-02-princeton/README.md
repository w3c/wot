# January Princeton Testfest

Will be held 28.01-03.02, 2019 at Siemens Corporate Technology, 755 College Road East, Princeton, NJ, USA, 08540.

The goal of the testfest is to generate the implementation report. This report will detail which assertions of the specs are implemented.

You can participate to the Testfest by choosing one (or more) of the following roles:

* [Implementation Owner](#implementation-owner) : You have a WoT consumer or producer implementation. What counts as an implementation can be found [here](https://github.com/w3c/wot/blob/master/testing/criteria.md).
* [Tester](#tester): You have tools that can be used for testing a consumer or a producer implementation.
* [Observer](#observer): You do not have any specific tools but at least have a browser.

The working flow will be as follows:

* An implementer boots up their device(s), checks the connections, commits the TD of the device(s) to a repository (TODO: to finalize)
* A tester analyzes a submitted TD and documents which assertions are implemented. This can be manual or automatic.
* (optional) A tester does the requests according to the TD and documents which implemented assertions are indeed supported by the Thing represented by the TD. If an assertion is shown to be implemented in TD but cannot be verified with a request, the tester overwrites it as fail.

## Implementation Owner

### Consumer Implementer

(Needs more thinking. Logging the consumed TDs? or the software objects?)

If you need a TD to consume and its Thing to interact with, use the TD as an input to the virtual-thing.

### Producer Implementer

Definitions: Implementation instance

You should produce TDs that can cover the whole spec and submit to a repository that has a folder in your name.

Start with one TD that you can produce easily, a version found in the examples. Then apply the following steps:

Produce a TD
Save it as a file with a unique name in a folder with the name of your implementation (which should also be unique)

Keep the implementation instance that has this TD


If you need a client that can test you, use wot test-bench.

## Tester

Playground

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
* Simulated device based on TD: https://www.npmjs.com/package/virtual-thing

# Questions

If an implementation has a feature in the TD but actually not behaviorally, does it count as implemented?