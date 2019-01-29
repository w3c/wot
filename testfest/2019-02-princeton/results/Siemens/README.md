# Siemens Thing Descriptions for the TestFest in Princeton 


![Thingweb Logo](images/thingweb-logo.png)

## Introduction
The [node-wot Thingweb project](https://github.com/eclipse/thingweb.node-wot/) is an open-source toolkit for the Web of Things with modular implementations of the technological building blocks standardized by the W3C. node-wot is the official reference implementation of the W3C WoT Working Group and Siemens is contributing to this project. For the TestFest, Siemens offers different types of
virtual servients that address almost all assertions given in the Thing Description specification. 

## List of Thing Descriptions
- [FullInteractionsTest](../../TDs/Siemens/fullInteractionsTest-siemens.json): Tests all kind of interactions that are possible with WoT
- [PropertiesTest](../../TDs/Siemens/propertiesTest-siemens.json): Tests all kind of variations of properties (readOnly, observable, etc.) 
- [ResponseTest](../../TDs/Siemens/responseTest-siemens.json): Tests the response vocabulary with different usage of the contentType for requests and responses
- [SecurityTest](../../TDs/Siemens/securityTest-siemens.json): Security Test based on the basic mechanism
- [DataSchemaTest](../../TDs/Siemens/dataSchemaTest-siemens.json): Test all data schema aspects of the TD specification
- [ReadWriteAllProperties](../../TDs/Siemens/readWriteAllProperties.json): Tests the readAll and writeAll properties feature.
- [uriVariablesTest](../../TDs/Siemens/uriVariablesTest-siemens.json): Tests the uriVariable term in an action.
- [eventTest](../../TDs/Siemens/eventTest-siemens.json): Thing2Thing (T2T) event tests with subscription and cancellation usage. 

## Results of the assertion  tests
Please find [here](./siemens-results.csv) the results of the assertation tests.

