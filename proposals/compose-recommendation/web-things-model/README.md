# Web of Things Standard Recommendation

This document is part of the [Web of Things Standard Recommendation](../).

This part proposes a definition of Web Things, their resources and payloads. Using the proposed model enables interoperability between Web Things. It assumes an [Integration Pattern](../web-things-integration-patterns/) and that the Web Thing follows the [Web Things Requirements](../web-things-requirements/) document.

## Web Things Model
Every resource in the Web of Things (Things, Actions, Properties, etc.) MUST have an id that is used to address it (which MUST be unique in its context). Web Things MAY also define the following fields in their JSON representation, therefore you MUST NOT use them in your implementation for anything else than defined here. 

```
{  
   "id":"<String>",
   "name":"<String>",
   "description":"<String>",
   "tags":"[<String>,...]",
   "customFields":"<customFields>",
   "links":{  
      "<relType>":{  
         "link":"<URI>",
         "title":"<String>",
         "type":"<String>"
      },...
   }
}

```

### Web Thing - Example

```
{
	...
	"id":"myCar",
	"name":"My super great car",
	"description":"This is such a great car. Seriously!",
	"createdAd":"2012-08-24T17:29:11.683Z", 
	"updatedAd":"2012-08-24T17:29:11.683Z", 
	"tags":["cart","device","test"],
	"customFields":{
		"size":"20",
		"color":"blue"
	},
	"links":{
		... (see below)...
	}
	...

```



### Links Object - Model
```
{
	...
	"id":"myCar",
	"name":"My super great car",
	"description":"This is such a great car. Seriously!",
	"createdAd":"2012-08-24T17:29:11.683Z", 
	"updatedAd":"2012-08-24T17:29:11.683Z", 
	"tags":["cart","device","test"],
	"customFields":{
		"size":"20",
		"color":"blue"
	},
	"links":{
		... (see below)...
	}
	...

```

### Field Descriptions

| Field name  | Type  | Attributes | Description|
| :------------ |:----------| :-----:|:-----|
| `id` | String  | Required | The id of this resource which is used in the URL to address it (therefore should contain only URL-safe characters, such as alphanumeric, "~", or "_"). Every addressable resource needs this. |
| `createdAt` | Timestamp  | Read-only | Timestamp* when this resource was created. |
| `updatedAt` | Timestamp  | Read-only | Timestamp* when this resource was last updated. |
| `name` | String  | - | Timestamp* when this resource was created. |
| `description` | String  | - | A human-readable. |
| `tags` | [String,...]  | - | An array of tags. _Example: ["test","phone"]_| 
| `customFields` | {"key:"value",...}  | - | A JSON object with key-value pairs to store any custom information about this Web Thing. _Example: {"Variant": "Silver","RRP": "200 USD"}_| 
| `links` | **[Links](#links)** | - | A JSON object with multiple Link objects to the sub-resources of this object. _Example: {"meta": {"link":"/meta","title":"Metadata"}}_|  

#### Notes
* Timestamps SHOULD always use ISO8601 notation, e.g. `2012-08-24T17:29:11.683Z`

## <a name="links"></a> Links 
Every entity in the Web of Things (WT and their sub-resources) should leverage HATEOAS to enable discovery of their capability and sub-resources. This is done by leveraging the [RFC 5988 Web Linking](https://tools.ietf.org/html/rfc5988) mechanism. 

A Links object is composed of a set of JSON objects of "Link" type, each of them refering to a linked resource. 

Each link has four elements:

* **relation type:** the type of the relation (foaf, etc.)
* **link:** the actual URI of this sub-resource (can be hosted on device or cloud)
* **title:** a human-readable name for this relation
* **schema:** if a custom relation type is used, you can add a link that defines the nature of it.

You can use all the [registered entity types](https://tools.ietf.org/html/rfc5988#section-6.2.2) for the sub-resources of any Web Thing.

Web Things also define the following relation types: 

* **[Properties](properties/)**. The properties of this Web Thing. 
* **[Events](events/)**. The events this Web Thing can generate. 
* **[Actions](actions/)**. The actions that you can send to this Web Thing. 
* **[System](system/)**. The system configurations and parameters of this Web Thing. 
* **[Things](things/)**. The other Things proxied by this Web Thing (if applicable). 
* **[Subscriptions](subscriptions/)**. The endpoint to manage to subscribe to this resource.
* **Product**. A link to a a product definition for this Web Thing. 

Each resource of Web Things SHOULD use the link header mechanism to expose the links to its sub-resources using the `Link:` header type.


Alternatively, for example when you cannot configure the headers of the server. You MAY expose the links in the JSON object as follows:

### Links Object - Model

```
{
	...	
	"links":{
		"<relType>":{
	 	  "link": "<String>",
	 	  "title": "<String>",
	 	  "schema": "<String>"
		},
		... 	
	}
	...	
}
```

### Links Object - Field Descriptions

| Field name  | Type  | Attributes | Description|
| :------------ |:----------| :-----:|:-----|
| `relType` | String  | Required | The relation type of this link. _Examples: "meta", "http://webofthings.io/properties", "actions"_ |
| `link` | String  | Required | The link to this resource. |
| `title` | String  | Required | A human-readable name for this relation |
| `schema` | String  | - | If a custom relation type is used, you can add a link that defines the nature of it. |

### Links Object - Example
```
{
	...	
	"links":{
		"configurations":{
	 	  "link": "system/",
	 	  "title": "System configurations of this Web Thing."			
		},
	 	"properties": {
	 	  "link": "properties/",
	 	  "title": "Properties of this Web Thing."
	 	},
	 	"events": {
	 	  "link": "events/",
	 	  "title": "Events of this Web Thing."
	 	},
	 	"actions": {
	 	  "link": "actions/",
	 	  "title": "Actions of this Web Thing."
	 	},
	 	"meta": {
	 	  "link": "http://webofthings.org/schemas/web-thing/",
	 	  "title": "Metadata"
	 	},
	 	"help": {
	 	  "link": "http://webofthings.org/docs/pi/",
	 	  "title": "Documentation"
	 	},
	 	"ui": {
	 	  "link": "ui/",
	 	  "title": "User Interface"
	 	},
	 	"_myCustomLinkRelType":{
	 	  "link": "custom/",
	 	  "schema": "http://webofthings.org/schemas/custom.html",
	 	  "title": "My custom resource"
	 	} 	
	}
	...	
}
```

## <a name="values"></a> Values 
Several resources support values (particularly events, properties, and actions). A values object defines the name and type of a given value. Values are used to define the parameters you can use when creating an action, the channels of a property, or the parameters of an event.  

The model of each value is as follows

### Values Object - Model
```
{
	...
	"values": {
		"<valueName>":{
			"name":"<String>",
			"description":"<String>",
			"type":"<String>",
			"unit":"<String>",
			"required":"<Boolean>",
			"minValue":"<Numeric>",
			"maxValue":"<Numeric>"
		},...
	}
	...
}
```

### Values Object - Field Descriptions

| Field name  | Type  | Attributes | Description|
| :------------ |:----------| :-----:|:-----|
| `valueName` | String  | Required | The name of this value (e.g. `durationTime`). |
| `name` | String  | Required | A human-readable caption for this value. |
| `description` | String  | read-only | A human-readable description of this value is. |
| `type` | String  | - | The type of this value. The supported types are `integer`, `float`, `boolean`, `string` | 
| `unit` | String  | - | The SI unit of this value, use the full name from [here](http://physics.nist.gov/cuu/Units/units.html). _Example: "meter per second squared"_ | 
| `required` | Boolean  | - | Specifies whether this value is required or optional (useful in description of an action model).| 
| `minValue` | Integer or Float  | - | The minimal value of this value.| 
| `maxValue` | Integer or Float  | - | The maximal value of this value.| 
| `enum` | Object | - | Specifies a set of values. _Example: {"LOCK":"Locks the door.","UNLOCK":"Unlocks the door."}_| 
  

### Values Object - Example

[See an example JSON](web-thing-model.json)

## HTTP Resources & Verbs Support for Web Things

Ideally all end-points should be supported by all Web Things, the target column refers to the [Integration Patterns document](../web-things-integration-patterns) and is here as an indication which type of Web Thing would typically implement these end points. 

| REST URL | POST | GET | PUT | DELETE | OPTIONS | Target |
| :--------|:----:|:---:|:---:|:------:|:-------:|:------:|
| `{wt}` | - | X | - | - | X | Things, Gateways, Clouds
| `{wt}/properties` | X | X | - | - | X | Things, Gateways, Clouds
| `{wt}/properties/{id}` | X | X | - | - | X | Things, Gateways, Clouds
| `{wt}/properties/{id}/model` | - | X | X | - | X | Things, Gateways, Clouds
| `{wt}/actions` | - | X | - | - | X | Gateways, Clouds
| `{wt}/actions/{id}` | X | X | - | - | X | Gateways, Clouds
| `{wt}/actions/{id}/{actionId}` | - | X | - | X | X | Gateways, Clouds
| `{wt}/actions/{id}/model` | - | X | X | - | X | Gateways, Clouds
| `{wt}/events` | - | X | - | - | X | Gateways, Clouds
| `{wt}/events/{id}` | X | X | - | - | X | Gateways, Clouds
| `{wt}/events/{id}/model` | - | X | X | - | X | Gateways, Clouds
| `{wt}/things` | - | X | - | - | X | Gateways, Clouds
| `{wt}/things/{id}` | X | X | X | X | X | Gateways, Clouds
| `{wt}/*/subscriptions` | - | X | X | X | X | Things, Gateways, Clouds
