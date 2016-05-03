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
