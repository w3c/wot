# Action Type Resource

Default URL:`{wt}/actions/{actionType}/`

This resource defines a specific Action Type supported by the device. It allows users to retrieve the details for sending an action of this type, sending an action, and retrieving the list of     

It is a list of **Action Types**, each one with a specific meaning an payload. 


### JSON Model - Action Type
```javascript
--> 
GET {wt}/actions/{actionType}/

<-- 
200 OK
{
	"name":"<String>",   
	"description":"<String>", 
	"type":"<String>", 
	"updatedAt":"<Timestamp>",  
	"customFields":{
		"<String>":"<String>"
	},
	"parameters": {
		"<parameterName>":{
			"name":"<String>",
			"description":"<String>",
			"type":"<String>",
			"unit":"<String>",
			"optional":"<Boolean>",
			"minValue":"<Numeric>",
			"maxValue":"<Numeric>",
			"maxLength":"<Integer>"
		},
		...
	}
}
```

#### FIELDS

| Field name  | Type  | Attributes | Description|
| :------------ |:----------| :-----:|:-----|
| `actionType` | String | required | The unique machine name of this action type. Ideally, it should be alphanum, "_", or "-". _Examples: "rebootDevice,setLampStatus"_|
| `name` | String  | required | The human name of this action type. |
| `description` | String  | - | A short human-readable description of this Action Type. | 
| ?? `type`?? | String  | - | The type of this action. Needed? |
| `tags` | [String,...]  | - | An array of tags. _Example: ["test","phone"]_| 
| `customFields` | Object  | - | A JSON object with key-value pairs to store any custom information about this Action Type. _Example: {"permissions": "public","priority": "low"}_| 

#### Notes:
* Action type here don't define the details of _how to_ send an action of this type - only the ones supported by the Web Thing.   


### Example - Action Type
```javascript
{ 
	"name":"reboot",  
	"description":"Reboots the device", 
	"lastUpdate":23123123,  
	"parameters": {
		"delay":{
			"type":"integer",
			"optional":"false",
			"minValue":"0",
			"maxValue":"120000",
			"unit":"milliseconds"
		},
		"mode":{
			"description":"What type of reboot mode",
			"type":"enum",
			"values":{
				"FORCE":"Quits all processes and shuts down the system",
				"SOFT":"Waits all processes to finish before rebooting the device"
			}
		},
		"requester":{
			"description":"Your user ID (optional).",
			"type":"string"
		}
	}
}
```

## Parameters
Each action can be called with several parameters. 