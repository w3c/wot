# The `properties` Resource

**Default URL**:`{wt}/properties`

This resource contains all properties (data) that a Web Thing contains.    

It is a list of **Property Types**, each one with a specific meaning and payload.   

A property is used to keep track of a set of variables about a device (its location, the temperature sensor reading, etc.) and is a set of "value" objects.

## Property Type - JSON Model 

[View the JSON model](property-type-model.json)

### Property Type - FIELDS

| Field name  | Type  | Attributes | Description|
| :------------ |:----------| :-----:|:-----|
| `id` | String | Required | The unique machine name of this property. Ideally, it should be alphanum, "_", or "-". _Examples: "rebootDevice","setLampStatus"_|
| `name` | String  | - | The human-readable name of this property. |
| `description` | String  | - | A short human-readable description of what this property type does. _Example:"Reboots the device."_| 
|`values`| [Values](../)| - | The multiple channels this property contains.|

#### Notes:

## `GET {wt}/properties`
This returns an array of all properties available on this Web Thing. 

[View the JSON model](get-properties-example.json)

You can then use the `id` of each property (`{typeId}` below) to address that specific property type (to find their model and create properties of that type).  

## `GET {wt}/properties/{typeId}`

This returns an array with all properties of type `{typeId}` contained on the Web Thing. 

[View the JSON model](get-property-example.json)


## `GET {wt}/properties/{typeId}/model`

This returns the Model of the property type `{typeId}`. 

[View the JSON model](get-property-model-example.json)

```
GET {wt}/properties/{typeId}

200 OK
<property Type Document>

```
If allowed by the device, you can update this property type model using PUT by sending the new <propertyType> document.  

## `POST {wt}/properties/{typeId}`
To update a property of a device, you must post an *array* of property value objects (can be only 1). This allows you to send several updates at the same time, and is useful only if the Web Thing can store more than a single (e.g. a cloud-based Web Thing). Clients can provide an optional timestamp with each value object, but if none is provided, the Web Thing should automatically append it 
 
[View the JSON Examples](post-property-example.json)

```
--> REQUEST
POST {wt}/properties/temperature/
[
    {
        "temp":24
    }
]


<-- RESPONSE
201 CREATED
Location: {wt}/properties/temperature/
[
	{
	    "temp":24,
	    "timestamp":"2015-06-14T14:30:00.000Z"
	}
]
```

If you want to update several properties at the same time, you can use the following construct:

``` 
POST {wt}/properties
[
    {
        "id":"temperature",
        "value":{
            "temp":24,
            "timestamp":"2015-06-14T14:30:00.000Z"
        }
    },
    {
        "id":"acceleration",
        "value":{
            "x":-22,
            "y":2.1,
            "z":3,
            "timestamp":"2015-06-14T14:30:00.000Z"
        }
    }
]
```