# The `things` Resource

**Default URL**:`{wt}/things`

This resource specifies all the Web Things proxied by this Web Thing.    

This is mainly useful on cloud or gateways, which proxy third party devices. 

## Web Thing Type - JSON Model 

[View the JSON model](things-model.json)

### Event Type - FIELDS

| Field name  | Type  | Attributes | Description|
| :------------ |:----------| :-----:|:-----|
| `id` | String | Required | The unique machine name of this thing. Ideally, it should be alphanum, "_", or "-". _Examples: "batteryLow","systemFailure"_|
| `name` | String  | - | The human-readable name of this Web Thing. |
| `rootUrl` | String  | - | The root URL to this Web Thing, only if different from `{wt}/thing/{id}` _Example:"http://192.168.0.4:8080"_| 

#### Notes:

## `GET {wt}/things`
This returns array with all the things proxied by this Web Thing. 

[View the JSON model](get-things-example.json)

The root URL for each of those Web Things MUST be `{wt}/things/{id}`, unless the field `rootUrl` is defined. 
