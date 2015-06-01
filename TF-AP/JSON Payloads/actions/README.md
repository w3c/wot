# Actions Resource

Default URL:`{wt}/actions`

This resource specifies the list of all actions that clients can send to a Web Thing.    

It is a list of **Action Types**, each one with a specific meaning an payload. 


## JSON Model - Actions
```javascript
{
	"<actionType>":{
		"name":"<STRING>",   
		"description":"<STRING>", 
		"type":"<STRING>", 
		"updatedAt":"<TIMESTAMP>",  
		"customFields":{
			"<STRING>":"<STRING>"
		}	
	},
	...
}
```

### FIELDS

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