# The `subscriptions` Resource

<--TODO-->

**Default URL**:`{wt}/*/subscriptions`

This resource MAY be appended to any other resource from Web Things, and allows to manage pub/sub type of subscriptions for that resource.  

The Web Thing developer needs to decide which end-points support it, but the `{wt}/events/*` and `{wt}/properties/*` at least SHOULD have it.

## Ssubscriptions Object - JSON Model 

[View the JSON model](https://github.com/w3c/wot/blob/master/TF-AP/models/subscriptions/things-model.json)

### Event Type - FIELDS

| Field name  | Type  | Attributes | Description|
| :------------ |:----------| :-----:|:-----|
| `id` | String | Required | The unique machine name of this thing. Ideally, it should be alphanum, "_", or "-". _Examples: "batteryLow","systemFailure"_|
| `name` | String  | - | The human-readable name of this Web Thing. |
| `rootUrl` | String  | - | The root URL to this Web Thing, only if different from `{wt}/thing/{id}` _Example:"http://192.168.0.4:8080"_| 

#### Notes:

## `GET {wt}/*/subscriptions`
This returns all the subscriptions on this resource.

[View the JSON model](https://github.com/w3c/wot/blob/master/TF-AP/models/subscriptions/get-subscriptions-example.json)


## `POST {wt}/*/subscriptions`
This allows you to create a subscription on this end-point. We will describe how to do it using Web Hooks and WebSockets. 


