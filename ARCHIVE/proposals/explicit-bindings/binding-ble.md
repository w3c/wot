# Bluetooth Low Energy (BLE)

BLE uses the GATT protocol: The interactions are modelled as Services, which contain a number of Characteristics, which in turn have a value and one or more Descriptors and Attribute Values (metadata). This structure is purely logical; internally BLE uses a flat list of Attributes that are addressed by 16-bit or 128-bit Handles (UUID). Characteristics can be mapped to properties in the Thing Description. There is not support for actions in BLE.

## Operation Binding

* Create: Not supported
* Read: READ Characteristic (property `read` must be set for the characteristic)
* Update: WRITE Characteristic (property `write`, `write without response` or `authenticated signed writes` must be set)
* Delete: Not supported
* Notifiy: NOTIFY characteristic subscribers (property `notify` must be set)

## Issues

BLE has two (staged) mechanisms to identify and address attributes. The UUID is used to identify an interaction within the logical service/characteristic structure and links to the (textual) service description. Through discovery, clients learn which *handle* is used on a particular devices to address a specific attribute.

When having the UUID in the TD, and hence as part of the URI, the URI cannot be used directly. First, a discovery needs to be made to learn about the handle. A nice property of URIs is that one can share them and they identify and address an instance of a resource without further information. This is lost when using the UUID and servients need to know implicitly that discovery is necessary.

### Update

The value attribute actually contains the mode/configuration information. So it is enough to read out the single attribute.
Hence, the TD should directly provide the *handle*. The BLE URI will work as expected from URIs and there is no additional interaction needed to retrieve the value. The mode/configuration information needs to go into the metadata (e.g., is it °C or °F?).
This shows that there is a dynamic lifecycle part in the TD. Things need to be able to propagate changes in their metadata, in particular when metadata fields can be changed through interactions with the thing (e.g., changing the unit of a Property). This problem is related to the RD updates in CoRE.

## TD Sample by Louay

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

## TD Sample by Matthias

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
