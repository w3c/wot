# The `actions` Resource

**Default URL**:`{wt}/actions`

This resource specifies all actions (commands) that clients can send to a Web Thing.    

It is a list of **Action Types**, each one with a specific meaning and payload.   

## Action Type - JSON Model 

[View the JSON model](action-type-model.json)

### Action Type - FIELDS

| Field name  | Type  | Attributes | Description|
| :------------ |:----------| :-----:|:-----|
| `id` | String | Required | The unique machine name of this action type. Ideally, it should be alphanum, "_", or "-". _Examples: "rebootDevice","setLampStatus"_|
| `name` | String  | - | The human-readable name of this action type. |
| `description` | String  | - | A short human-readable description of what this action type does. _Example:"Reboots the device."_| 
|`values`| [Values](../)| - | The parameters that this action type accepts when created.|

#### Notes:
* Action type here don't define the details of _how to_ send an action of this type - only the ones supported by the Web Thing.   

## `GET {wt}/actions`
This returns the list of all action types supported by this device as an array of action types. 

[View the JSON model](get-actions-example.json)

You can then use the `id` of each action (`{typeId}` below) to address that specific action type (to find their model and create actions of that type).  

## `GET {wt}/actions/{typeId}`

This returns an array with all actions of type `{typeId}` contained on the Web Thing. 

[View the JSON model](get-action-example.json)


## `GET {wt}/actions/{typeId}/model`

This returns the Model of the action type `{typeId}`. 

[View the JSON model](get-action-model-example.json)

```
GET {wt}/actions/{typeId}

200 OK
Action Type Document

```
If allowed by the device, you can update this action type model using PUT by sending the new <actionType> document.  

## `POST {wt}/actions/{typeId}`
This creates a new instance of that action, which is created immediately (if the parameters are valid), but might not be executed on the spot. This is how you send a command to a device.  

To create a new action of a given type, you simply send to the resource of that type a `POST` request and the payload MUST be an object with the values that are required by the model. 
 
[View the JSON Examples](post-action-example.json)

```
--> REQUEST
POST {wt}/actions/reboot
{
	"delay":50,
	"mode":"debug"
}

<-- RESPONSE
201 CREATED
Location: {wt}/actions/reboot/233
{
	"id":233,
	"delay":50,
	"mode":"debug",
	"status" : "executing",
    "timestamp":"2015-06-14T14:30:00.000Z"
}
```
You can then use the `id` of each action to address that specific action (the full link is returned in the `Location:` header), and see its status using a `GET` on that URL.   
