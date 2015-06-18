# The `system` Resource

**Default URL**:`{wt}/system`

This resource specifies all configurations or system properties that a Web Thing exposes. For example, it can specify what interfaces it has, the version of its firmware, etc.    

## System Object - JSON Model 

[View the JSON model](things-model.json)

### Event Type - FIELDS

| Field name  | Type  | Attributes | Description|
| :------------ |:----------| :-----:|:-----|
| `id` | String | Required | The unique machine name of this thing. Ideally, it should be alphanum, "_", or "-". _Examples: "batteryLow","systemFailure"_|
| `name` | String  | - | The human-readable name of this Web Thing. |
| `rootUrl` | String  | - | The root URL to this Web Thing, only if different from `{wt}/thing/{id}` _Example:"http://192.168.0.4:8080"_| 

#### Notes:

## `GET {wt}/system`
This returns an object with the system object of this Web Thing. 

[View the JSON model](get-system-example.json)

The root URL for each of those Web Things MUST be `{wt}/things/{id}`, unless the field `rootUrl` is defined. 

## Well-known System Fields


<TO DO>