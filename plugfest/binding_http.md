# HTTP/1.1 binding for WoT interaction patterns

This document details out specifications how to map the WoT model onto HTTP.

## General
Even though this binding is providing conventions for resource paths that are accessible from prior knowledge, we expect resources to be linked in a HATEOAS-fashion.

The actual encoding is dependent on content-negotiation, the supported ones are described in the Thing description.

To map the interaction primitive for subscriptions we backport the CoAP OBSERVE Option to HTTP/1.1 in that we assume that each observable resource is upgradeable.

That means, you can send a regular GET request to poll the resource or open a WebSocket by adding the headers "Connection: Upgrade" and "Upgrade: websocket" in the request (and Sec-WebSocket-* as needed). The WebSocket will send a response body upon each state update.

See also [RFC6455](https://tools.ietf.org/html/rfc6455) for more information on opening a WebSocket. A simple design study is provided [here](https://github.com/h0ru5/http-observe)

## Things
Things are represented with a resource:

GET:

returns either TD (application/json-ld)
or direct the agent to a thing description using Location-Path Option.

For HATEOAS-style browsing, it SHOULD also include a list of links to the actions and properties.

## Properties
Properties are resources under the thing.

GET:
* Returns: the current state, the field "value" holds the type as described in the thing description.
* HATEOAS-Links:
  * if writable: form-link-type:
    * method= PUT
    * rel = update
    * accepts = type as described in the thing description.
    * href = self (the property)

PUT:
* Accepts: type as described in the thing description.
* Returns: state (type as described in the thing description)
* HATEOAS-Links:
  * link-type:
    * rel = state
    * href = self (the property)

Subscription:

usual behavior (returns a response to the agent every time the property changes).

## Actions
Actions are represented as resources under the thing.

POST: invokes the action.
  * Accepts: type as described in the thing description (or empty if defined as such in the TD).
  * Returns: 2.01 with a new resource via Location-Path Option
    * Payload: and the details of the invocation using the media type described in interactions.md
  * Links: a link with
    * href= the new resource
    * rel = execution

GET: Queries the status of an action

  * Returns: details of the last invocation using the media type described in interactions.md
  * HATEOAS-Links:
    * links to ongoing execution(s) if any
      * rel = execution
      * href = the sub-resource
    * form-link-type to invoke the action
      * href = self
      * rel = invoke
      * method = POST
      * accepts = type as described in the thing description (or empty if defined as such in the TD).

Subscription:

regular behavior, returns the same response as if a GET was issued on every change.

## Execution of an Actions
Executions of an action are represented as resources under the action

DELETE: Cancels the execution
  * Returns: the details of the invocation using the media type described in interactions.md
  * Links:
    * a link to the actions resource
      * href = the action
      * rel = parent

GET: Queries the status of an execution
  * Returns: details of the invocation using the media type described in interactions.md
  * Links:
    * form-link-type to cancel the execution
      * rel = cancel
      * href = the execution
      * method = DELETE
    * form-link-type to alter the execution
      * href = the execution
      * method = PUT
      * rel = update

PUT: Alters the parameters of an execution

  * Returns: details of the invocation using the media type described in interactions.md
  * Accepts: the type as described in the thing description

Subscription:

regular behavior, returns the same response as if a GET was issued on every change.
