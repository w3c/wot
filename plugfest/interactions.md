# Interaction patterns in the Web of Things
This document aims to be a write-down of the agreed interaction patterns

These patterns are modeled as a resourceful architecture, where we define resource types and data structure of the request and response messages.

For both request and response, mandatory fields and optional fields of the message are given.
Some messages have a placeholder for the *payload* of the interaction, as it is specified in the thing description.

## Properties

A property can be **read**, **written** and **subscribed**.

**Read** is the only mandatory operation.

### Reading a property

#### Request

The request is empty.

#### Response

The response has fields as follows:

|Name|Type|Mandatory|Content|
|---|---|---|---|
|value|(given in thing description)|yes|current state/property of the value|

### Writing a property

#### Request

There request is expected to have these fields

|Name|Type|Mandatory|Content|
|---|---|---|---|
|value|(given in thing description)|yes|current state/property of the value|

#### Response

The response can either be empty or the same response as to a **read** request.

### Subscribing to a property

The subscription interaction is a specialization of a **read** operation that get several answers answered every time the value changes.

Not all properties are subscribe-able, it is indicated in the thing description and there should be a hypermedia-link from the property.

## Actions

An action can be invoked via **write** and informations about invocations of the action can be **read** and **subscribed**.

### Querying the status of an action

The **read** operation is used on the resource of an action to retrieve information about the action and current invocations.

#### Request

the request is empty

#### Response

The response can contain these fields:

|Name|Type|Mandatory|Content|
|---|---|---|---|
|status|enumeration|no |current status of the execution|
|time|timestamp|no |time of last invocation|
|links|list of links|no|resources of ongoing executions|

### Subscribing to an action

Performing a **subscribe** on an action resource will behave the same as performing a **read** operation on each change, e.g. send a response with these fields:

|Name|Type|Mandatory|Content|
|---|---|---|---|
|status|enumeration|no |current status of the execution|
|time|timestamp|no |time of last invocation|
|links|list of links|no|resources of ongoing executions|

### Invoking an action

The **write** operation invokes an action.

#### Request

The request for this operation has the following fields:

|Name|Type|Mandatory|Content|
|---|---|---|---|
|value|(given in thing description - can be null)|no |inputs resp. parameters|

This leads to the creation of a resource representing the invocation (especially for long-running executions).

#### Response

The response indicates the creation of a new (sub-) resource for the execution and returns a link to it.

### Querying running executions of an Action

Especially for long-running executions, new resources are created. The can be used to query the status of the execution using **read**.

#### Request

The request body is empty

#### Response

 The response contains contains the following fields:

|Name|Type|Mandatory|Content|
|---|---|---|---|
| value|(given in thing description - can be null)|no |inputs resp. parameters|
|status|enumeration|no |current status of the execution|
|time|timestamp|no |time of invocation|

Links:

|Relation|Href | Action |Meaning | mandatory |
|---|---|---|---|---|
|change| self | write | hypermedia link to modify the execution | no |
|cancel | self | delete | hypermedia link to cancel an execution |  no |

### Modifying running executions of an Action

#### Request

The request body contains the parameters resp. inputs
|Name|Type|Mandatory|Content|
|---|---|---|---|
| value|(given in thing description - can be null)|no |inputs resp. parameters|


#### Response

 The response contains contains the following fields:

|Name|Type|Mandatory|Content|
|---|---|---|---|
| value|(given in thing description - can be null)|no |inputs resp. parameters|
|status|enumeration|no |current status of the execution|
|time|timestamp|no |time of invocation|

Links:

|Relation|Href | Action |Meaning | mandatory |
|---|---|---|---|---|
|change| self | write | hypermedia link to modify the execution | no |
|cancel | self | delete | hypermedia link to cancel an execution |  no |

### Canceling running executions of an Action
To cancel a running execution of an action, a **delete** action is called on the sub-resource representing the execution.
#### Request

The request body is empty

#### Response

 The response contains contains the following fields:

|Name|Type|Mandatory|Content|
|---|---|---|---|
| value|(given in thing description - can be null)|no |inputs resp. parameters|
|status|enumeration|no |current status of the execution|
|time|timestamp|no |time of invocation|

### Modifying running executions of an Action

To modify a running execution of an action, a **write** action is called on the sub-resource representing the execution.

#### Request

The request body contains the parameters resp. inputs
|Name|Type|Mandatory|Content|
|---|---|---|---|
| value|(given in thing description - can be null)|no |inputs resp. parameters|


#### Response

 The response contains contains the following fields:

|Name|Type|Mandatory|Content|
|---|---|---|---|
| value|(given in thing description - can be null)|no |inputs resp. parameters|
|status|enumeration|no |current status of the execution|
|time|timestamp|no |time of invocation|

Links:

|Relation|Href | Action |Meaning | mandatory |
|---|---|---|---|---|
|start| action | write | hypermedia link to start a new execution | no |

### Subscribing to running executions of an Action

The resources for running executions can be **subscribed** so the status of the execution is transmitted everytime it changes like using **read**.
