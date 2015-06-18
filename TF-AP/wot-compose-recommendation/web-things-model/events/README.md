# The `events` Resource

**Default URL**:`{wt}/events`

This resource specifies all events (notifications) that Web Things can generate.    

It is a list of **event Types**, each one with a specific meaning and payload.   

## Event Type - JSON Model 

[View the JSON model](event-type-model.json)

### Event Type - FIELDS

| Field name  | Type  | Attributes | Description|
| :------------ |:----------| :-----:|:-----|
| `id` | String | Required | The unique machine name of this event type. Ideally, it should be alphanum, "_", or "-". _Examples: "batteryLow","systemFailure"_|
| `name` | String  | - | The human-readable name of this event type. |
| `description` | String  | - | A short human-readable description of when this event is generated. _Example:"Created when the Web Thing battery is low."_| 
|`values`| [[Values](../)| - | The values that this event type contains when created.|

#### Notes:

## `GET {wt}/events`
This returns the list of all event types that can be sent by this device as an array of event types. 

[View the JSON model](get-events-example.json)

You can then use the `id` of each event (`{typeId}` below) to address that specific event type (to find their model and create events of that type).  

## `GET {wt}/events/{typeId}`

This returns an array with all events of type `{typeId}` contained on the Web Thing. 

[View the JSON model](get-event-example.json)


## `GET {wt}/events/{typeId}/model`

This returns the Model of the event type `{typeId}`. 

[View the JSON model](get-event-model-example.json)

```
GET {wt}/events/{typeId}

200 OK
<Event Type Document>

```
If allowed by the device, you can update this event type model using PUT by sending the new event type document.

## `POST {wt}/events/{typeId}`
This creates a new event. This is how a device sends an event. This is mainly used on a cloud Web Thing, where things relay their events.   

To create a new event of a given type, you simply send to the resource of that type a `POST` request and the payload MUST be an object with the values that are required by the model. 
 
[View the JSON Examples](post-event-example.json)
