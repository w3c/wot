# Thing Description Restructuring
This document shall initiate the discussion to make some rearrangements of the TD structure. Beside of the WoT plugfest, TD is already used and evaluated in some projects and other IoT standardiziation activities such as in BIG IoT ([http://big-iot.eu/]) and OCF ([https://openconnectivity.org/]). There are some feedbacks for improvements which we should take into account.

## Today's TD Basic structure
* name (e.g., name of the Thing)
* url
* encoding
* properties/actions/events
 * @type
 * name
 * hrefs
 * valueType/inputType/outputType
 * writeable (only for properties)


 ## Feedbacks
 * 'I'm unsure if my resource is property or action based'. E.g., LED status which is changeable/writeable
 * How about I need something in between (also see discussion about explicit vs. implicit TD knowledge [https://github.com/w3c/wot/tree/master/proposals/explicit-bindings])
 * Resources shall be self-contained. Because of …
  * .. e.g., there are 20 resources provided by the Thing. Client is only interested in one of them
  * .. different protocols / encodings used for different resources
  * Currently, endpoint information are distributed over the TD, e.g., url, hrefs, encoding
 * I have a subscribable property, shall I characterize it as an event?

##  Restructuring Proposal
1.	Going back to the structure which we used for the TD version 1
2.	Include all communication metadata information within the resource model

## Sample
* name (e.g., name of the Thing)
* interaction (or name it offering?)
 * @type (interaction model property and action is characterized here)
 * name
 * endpoint
  * url
  * encoding
* valueType/inputType/outputType
* writable
