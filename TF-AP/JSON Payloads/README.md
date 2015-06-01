# Web Thing Resource Model
This is the most fundamental entity of the Web of Things: A Web Thing. Below we show the basic JSON data model of a Web Thing (WT). 

Every Web Thing MUST have a root URL that a Web Thing Client can access, denoted as `{wt}`.  

A `GET {wt}/` MUST always return a valid WT JSON document as seen below by default when the `Accept: application/json` header is sent by the client.  


## JSON Model - Web Thing
```javascript
{
	"id":"<URI>",
  	"name": "<String>",
  	"description":"<String>",
	"product":"<URI>",
  	"tags":["<String>",...],
  	"customFields":{
  		"<String>":"<String>",...
  	},
	"createdAd":"<Timestamp>", 
	"updatedAd":"<Timestamp>", 
 	"links":{ 
    	"relType": {
        	"link": "<URI>",
        	"title": "<String>",
        	"type": "<String>"
      	},...
 	}
}
```

### FIELDS

| Field name  | Type  | Attributes | Description|
| :------------ |:----------| :-----:|:-----|
| `id` | URI | read-only, required | The unique ID of this Web Thing. Ideally, it should be globally unique and can be a URI. _Examples: ""_|
| `createdAt` | Timestamp  | read-only | Timestamp (UNIX epoch) when this Web Thing was created. |
| `updatedAt` | Timestamp  | read-only | Timestamp (UNIX epoch) when this Web Thing was last updated. |
| `name` | String  | required | The name of this Web Thing (ideally URL-friendly). |
| `description` | String  | - | A short human-readable description of this Thing. | 
| ?? `product`?? | URI  | - | The product of this thing (URL). |
| `tags` | [String,...]  | - | An array of tags. _Example: ["test","phone"]_| 
| `customFields` | {"key:"value",...}  | - | A JSON object with key-value pairs to store any custom information about this Web Thing. _Example: {"Variant": "Silver","RRP": "200 USD"}_| 
| `links` | **[Links](#links)** | - | A JSON object with multiple Link objects to the sub-resources of this object. _Example: {"meta": {"link":"/meta","title":"Metadata"}}_| 

#### Notes:
* Every subresource of the Web Thing MAY contain the `tags`, `customFields`, `createdAt`, `updatedAt` fields. 
* Every subresource of the Web Thing MAY contain the [Links](#links) object used for HATEOS and dynamic resource discovery. 
* Web Things SHOULD NOT have additional fields that those defined here, as they won't be taken into account by Web Thing Clients. You should use the official extension points provided (`customFields` for simple values, `links` for linked resources, `meta` links for semantic extensions).  


## Example - Web Thing
```javascript
{
	"id":"WebObject-2423529879879875",
	"name":"Shopping Cart",
	"description":"Shopping Cart that updates its location as it moves",
	"tags":["cart","device","test"],
	"customFields":{"size":"20","color":"blue"},
	"productId":"api.evrythng.com/products/8838830wfoifj3jfo4i", 
	"links":{
	 	"properties": {
	 	  "link": "properties/",
	 	  "title": "List of Properties"
	 	},
	 	"events": {
	 	  "link": "events/",
	 	  "title": "List of Events"
	 	},
	 	"actions": {
	 	  "link": "actions/",
	 	  "title": "List of Actions"
	 	},
	 	"meta": {
	 	  "link": "http://w3c.org/schemas/webthing/",
	 	  "title": "Metadata"
	 	},
	 	"help": {
	 	  "link": "http://webofthings.io/docs/pi/",
	 	  "title": "Documentation"
	 	},
	 	"ui": {
	 	  "link": "ui/",
	 	  "title": "User Interface"
	 	},
	 	"_myCustomLinkRelType":{
	 	  "link": "custom/",
	 	  "schema": " http://webofthings.io/schemas/custom.html",
	 	  "title": "My custom resource"
	 	} 	
	}
}
```

## <a name="links"></a> Links 
Every entity in the Web of Things (WT and their sub-resources) should leverage HATEOAS to enable discovery of their capability and sub-resources. This is done by leveraging the [RFC 5988 Web Linking](https://tools.ietf.org/html/rfc5988) mechanism. 

A Links object is composed of a set of JSON objects of "Link" type, each of them refering to a linked resource. 

Each link has four elements:

* **relation type:** the type of the relation (foaf, etc.)
* **link:** the actual URI of this sub-resource (can be hosted on device or cloud)
* **title:** a human-readable name for this relation
* **schema:** if a custom relation type is used, you can add a link that defines the nature of it.

You can automatically use all the [registered entity types](https://tools.ietf.org/html/rfc5988#section-6.2.2) for the sub-resources of any Web Thing.

Additionally, for the Web of Things, we define this additional link types: 

* **Properties**. The properties of this Web Thing. 
* **Events**. The events this Web Thing can generate. 
* **Actions**. The actions that you can send to this Web Thing. 
* **Configurations**. The configurations of this Web Thing. 
* **Things**. The other Things proxied by this Web Thing (gateway mode). 
