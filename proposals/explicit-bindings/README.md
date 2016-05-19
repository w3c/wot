# Explicit Protocol Bindings

This wiki page collects the work-in-progress for action item [16/4/6](https://www.w3.org/WoT/IG/wiki/IG_WebConf).
The content is purely informational for the action item contributors.
Once consensus is reached, the proposal will be integrated into the [Current Practices document](http://w3c.github.io/wot/current-practices/wot-practices.html).

## Resource Model

The common WoT abstraction across multiple protocols is the Resource Model.
A resource represents an interaction point and is identified and addressed by a URI.

### Problem

Currently, the operations on these resources are defined implicitly through the classification as Property, Action, or Event.
There is no explicit information how these interactions are preformed and no specification how these interactions are bound to specific protocols.

### Approach

The resource model shall also provide functional descriptions.
We want to define a common abstraction for the interaction model that can explicity descibe the interactions.

A popular solution is using CRUD operations, sometimes extended to CRUDN to also reflect Notifications (e.g., OCF).
Protocol binding specifications then need to map the abstract CRUD(N) operations to concrete protocol actions (e.g., POST, GET, PUT, DELETE of RESTful protocols).

## Protocols

### HTTP

#### Operation Mapping

* Create: POST
* Read: GET
* Update: PUT / PATCH
* Delete: DELETE
* Notifiy: 

#### TD Sample

```

```

### CoAP

#### Operation Mapping

* Create: POST
* Read: GET / FETCH
* Update: PUT / PATCH
* Delete: DELETE
* Notifiy: Observe

#### TD Sample

```

```

### Bluetooth Low Energy (BLE)

BLE uses the GATT protocol: The interactions are modelled as Services, which contain a number of Characteristics, which in turn have a value and one or more Descriptors and Attribute Values (metadata). This structure is purely logical; internally BLE uses a flat list of Attributes that are addressed by 16-bit or 128-bit Handles (UUID). Characteristics can be mapped to properties in the Thing Description. There is not support for actions in BLE.

#### Operation Mapping

* Create: Not supported
* Read: READ Characteristic (property `read` must be set for the characteristic)
* Update: WRITE Characteristic (property `write`, `write without response` or `authenticated signed writes` must be set)
* Delete: Not supported
* Notifiy: NOTIFY characteristic subscribers (property `notify` must be set)

#### Issues

BLE has two (staged) mechanisms to identify and address attributes. The UUID is used to identify an interaction within the logical service/characteristic structure and links to the (textual) service description. Through discovery, clients learn which *handle* is used on a particular devices to address a specific attribute.

When having the UUID in the TD, and hence as part of the URI, the URI cannot be used directly. First, a discovery needs to be made to learn about the handle. A nice property of URIs is that one can share them and they identify and address an instance of a resource without further information. This is lost when using the UUID and servients need to know implicitly that discovery is necessary.

##### Update
The value attribute actually contains the mode/configuration information. So it is enough to read out the single attribute.
Hence, the TD should directly provide the *handle*. The BLE URI will work as expected from URIs and there is no additional interaction needed to retrieve the value. The mode/configuration information needs to go into the metadata (e.g., is it °C or °F?).

##### New Issue
This shows that the lifecycle part of the TD is more complex. Things need to be able to propagate changes in their metadata, in particular when metadata fields can be changed through interactions with the thing. This problem is related to the RD updates in CoRE.

#### TD Sample

```
{
  "@context": ["http://w3c.github.io/wot/w3c-wot-td-context.jsonld"],
  "@type": "Thing",
  "name": "MyTemperatureThing",
  "uris": "gatt://{SERVICE-UUID}/",
  "encodings": ["JSON"],
  "properties": [
    {
      "name": "temperature",
      "valueType": "gatt:float64",
      "writable": false,
      "hrefs": ["{CHARACTERISTIC-UUID}"]
    }
  ]
}
```

#### TD Sample by Matthias

```
{
  "@context": ["http://w3c.github.io/wot/w3c-wot-td-context.jsonld"],
  "@type": "Thing",
  "name": "MyTemperatureThing",
  "uris": ["gatt://{BLE MAC address}/"],
  "encodings": ["?"],
  "properties": [
    {
      "name": "temperature",
      "valueType": "gatt:float64",
      "writable": false,
      "hrefs": ["{handle}"]
    }
  ]
}
```

### BACnet

#### Operation Mapping

* Create: 
* Read: 
* Update: 
* Delete: 
* Notifiy: 

#### TD Sample

```

```
