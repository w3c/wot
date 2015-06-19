# The `subscriptions` Resource

**Default URL**:`{wt}/*/subscriptions`

This resource MAY be appended to **any other resource from Web Things**, and allows to manage pub/sub type of subscriptions for that resource.  

The Web Thing developer needs to decide which end-points support it, but the `{wt}/events/*` and `{wt}/properties/*` SHOULD support it.

The subscriptions model supports delivery via Web Hooks and WebSockets.

## Subscriptions Object - JSON Model 

[View the JSON model](subscriptions-model.json)

### Subscription Type - FIELDS

| Field name  | Type  | Attributes | Description|
| :------------ |:----------| :-----:|:-----|
| `subscriberId` | String | Required | A unique identifier for the subscription |
| `type` | String  | - | `httpCallback` or `websockets` |


## `GET {wt}/*/subscriptions`
This returns all the subscriptions on this resource.

[View JSON examples](get-subscriptions-example.json)


## `POST {wt}/*/subscriptions`
This allows you to create a subscription on this end-point.

[View JSON examples](post-subscriptions-example.json)