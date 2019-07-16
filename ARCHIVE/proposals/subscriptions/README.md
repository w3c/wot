# RESTful handling of Subscriptions

A proposal for protocol-agnostic resourceful handling of subscriptions for REST architectures

Modeled after the [RESThooks](http://resthooks.org/docs/) specification and considering the lessons learned from
[pubsubhubbub](http://pubsubhubbub.github.io/PubSubHubbub/pubsubhubbub-core-0.4.html).

contact: Johannes Hund

## Terms

_value resource_ is the monitored origin of state,
in some pubsub systems also called the publisher
 example here is ``pub/value``

_target resource_ is the receiving reource that handles incoming events,
in some pubsub systems also referred to as callback uri or subscriber.
 example here is ``sub/handler``

_subscription_ is the structure containing informations needed for the subscription.

Also the tuple (value_resource, target_resource) is considered to be unique,
an additional pubisher-unique url-compatible Id is assigned to the subscription
to make it addressable as a resource

_notification_ is the structure containing the event data

## Data structures

### subscription

Fields:
* ``target``: mandatory string, the uri that shall be notified
* ``id``: optional string, publisher-local identifier of the subscriptions
* ``options``: optional map/object, options for the subscription

example:

```json
{
  "target": "sub/handler"
}
```

### notification

Fields:
* ``_origin``: mandatory string, name/originator of the event
(comment: should consider sending as header e.g. X-ORIGIN)

* ``value``: optional map/object, content of the event

example:

```json
{
  "_origin" : "pub/value"
}
```

## Flows

### Creating a subscription

To subscribe, the subscriber sends a POST request
containing the subscription data
to a well-known sub resource ``.subscriptions``.

```
POST pub/value/.subscriptions
{
  "target": "sub/handler"
}
```

This will result in the creation of a new sub-resource that is representing the subscription,
and is identified by an ID which is unique in the scope of ``pub``.

```
201 CREATED
Location: pub/value/.subscriptions/s001
{
  "id": "s001"
  "target": "sub/handler"
}
```

### Managing a subscription

a list of the subscriptions can be retrieved with a ``GET`` to the ``.subscriptions`` resource.

the subscription resource allows the management of the subscription

* ``GET`` to retrieve information
* ``PUT`` to update
* ``DELETE`` to cancel the subscription

### Notification

when the resource state changes
resp. an event occours
the value resource will send a POST request
to the target noted in each of the subscriptions.

```
POST sub/handler
{
  "_origin": "pub/value",
  "value": 42
}
```
