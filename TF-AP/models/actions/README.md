# The `actions` Resource

**Default URL**:`{wt}/actions`

This resource specifies all actions (commands) that clients can send to a Web Thing.    

It is a list of **Action Types**, each one with a specific meaning an payload. 


### Action Type - JSON Model 

[View the JSON model](https://github.com/w3c/wot/blob/master/TF-AP/models/actions/action-type-model.json)

### Action Type - FIELDS

| Field name  | Type  | Attributes | Description|
| :------------ |:----------| :-----:|:-----|
| `actionType` | String | required | The unique machine name of this action type. Ideally, it should be alphanum, "_", or "-". _Examples: "rebootDevice,setLampStatus"_|
| `name` | String  | required | The human name of this action type. |
| `description` | String  | - | A short human-readable description of this Action Type. | 
| `tags` | [String,...]  | - | An array of tags. _Example: ["test","phone"]_| 
| `customFields` | Object  | - | A JSON object with key-value pairs to store any custom information about this Action Type. _Example: {"permissions": "public","priority": "low"}_| 

#### Notes:
* Action type here don't define the details of _how to_ send an action of this type - only the ones supported by the Web Thing.   

## List all actions - `GET {wt}/actions`
This returns the list of all action types supported by this device as an array of action types. 

[View the JSON model](https://github.com/w3c/wot/blob/master/TF-AP/models/actions/get-actions-example.json)

You can then use the `id` of each action to address that specific action type.  

## Get action type - `GET {wt}/actions/{id}`
This returns the list of all action types supported by this device as an array of action types. 

```
GET {wt}/actions/{id}

200 OK
ActionType

```
You can then use the `id` of each action to address that specific action type.  

## Create action - `POST {wt}/actions/{id}`
This creates a new instance of that action, which is created immediately (if the parameters are valid), but might not be executed on the spot.  

To create a new action of a given type, you simply send 

```
GET {wt}/actions/{id}

200 OK
ActionType

```
You can then use the `id` of each action to address that specific action type.  


## Example - Actions
```javascript
{
	"upgradeFirmware":{
		"name":"Upgrade Device Firmware",  
		"description":"Loads a new firmware from the cloud and installs it.",
		"type":"action", 
		"customFields":{
			"permission":"admin",
			"priority":"high"
		}	
	},
	"reboot":{
		"name":"Reboot",  
		"description":"Reboots the device.",
		"type":"action", 
		"customFields":{
			"status":"inactive",
			"permission":"admin"
		}	
	},
	"myActionType":{
		"name":"myActionType",  
		"description":"Whatever you want.",
		"type":"action"
	}
}
```