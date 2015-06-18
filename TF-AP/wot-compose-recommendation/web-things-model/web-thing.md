# Web Things
This is the most fundamental entity of the Web of Things: A Web Thing. A Web Thing is a Web-based API to interact with a physical object. Web Things can be hosted on devices, on gateways, or in the cloud. 

Below we show the basic JSON data model of a Web Thing (WT). Every Web Thing MUST have a root URL that a Web Thing Client can access, which we denoted as `{wt}`.  

A `GET {wt}/` MUST always return a valid WT JSON document as seen below by default when the `Accept: application/json` header is sent by the client.  


## Web Thing Resource Model

[View the JSON model](https://github.com/w3c/wot/blob/master/TF-AP/models/web-thing-model.json)

### FIELDS

| Field name  | Type  | Attributes | Description|
| :------------ |:----------| :-----:|:-----|
| `id` | URI | read-only, required | The unique ID of this Web Thing. Ideally, it should be globally unique and can be a URI. _Examples: ""_|
| `createdAt` | Timestamp  | read-only | Timestamp (UNIX epoch) when this Web Thing was created. |
| `updatedAt` | Timestamp  | read-only | Timestamp (UNIX epoch) when this Web Thing was last updated. |
| `name` | String  | required | The name of this Web Thing (ideally URL-friendly). |
| `description` | String  | - | A short human-readable description of this Thing. | 
| `tags` | [String,...]  | - | An array of tags. _Example: ["test","phone"]_| 
| `customFields` | {"key:"value",...}  | - | A JSON object with key-value pairs to store any custom information about this Web Thing. _Example: {"Variant": "Silver","RRP": "200 USD"}_| 
| `links` | **[Links](#links)** | - | A JSON object with multiple Link objects to the sub-resources of this object. _Example: {"meta": {"link":"/meta","title":"Metadata"}}_| 

#### Notes:
* Every subresource of the Web Thing MAY contain the `tags`, `customFields`, `createdAt`, `updatedAt` fields. 
* Every subresource of the Web Thing MAY contain the [Links](#links) object used for HATEOS and dynamic resource discovery. 
* Web Things SHOULD NOT have additional fields that those defined here, as they won't be taken into account by Web Thing Clients. Likewise, Web Thing Clients should ensure that they don't break in case unknown fields are defined by a Web Thing. You should use the official extension points provided (`customFields` for simple values, `links` for linked resources, `meta` links for semantic extensions).  


### Example - Web Thing
[View the JSON model](https://github.com/w3c/wot/blob/master/TF-AP/models/web-thing-example.json)

