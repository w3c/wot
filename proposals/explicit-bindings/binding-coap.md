# CoAP

## Operation Binding

* Create: POST / PUT
* Retrieve: GET / FETCH
* Update: PUT / PATCH
* Delete: DELETE
* Subscribe: Observe

#### TD Sample

I assume defaults defined in the CoAP Binding:

* Retrieve: allowed on any resource and by default a GET
* Update: allowed on resources marked `writable`; default PUT when `true`
* Create: allowed on resources marked `creatable`; default POST when `true`
* Delete: allowed on resources marked `deletable`; default DELETE when `true`

In case the resource differs from the default, the explicit protocol operations are given in a string array, whose index corresponds to the base URI indexes (links to the protocol by scheme).

<pre>
...
"properties": [
    {
      "@id": "color",
      "@type": "RGBColor",
      "name": "myColor",
      "valueType": "integer",
      <b>"writable": true,</b>
      "hrefs": ["val"]
    }, {
      "@id": "colorOCF",
      "@type": "RGBColor",
      "name": "myColorOCF",
      "valueType": {
        "type": "array",
        "items": {
          "type" : "integer"
        },
        "minOccurs" : 3,
        "maxOccurs" : 3
      },
      <b>"writable": ["POST"],</b>
      "hrefs": ["ocf"]
    }
  ],
  "actions": [
    {
      "@type": "IncreaseColor",
      "name": "myFadeIn",
      "inputData": {
        "@type": "RGBColor",
        "valueType": "integer"
      },
      "property": "color",
      <b>"creatable": ["PATCH"],</b>
      "hrefs": ["fadein"]
    }
...
</pre>

This nicely minimizes the WoT resource model to CRUDS(ubscribe) while enabling a mapping to protocols that have more than 5 operations (e.g., BACnet with more than 30). I could also imagine to replace the historic letters in CRUD with something that fits better to our resource model. For instance: Read, Subscribe, Write, Invoke, Delete or "WISRD" \wizzard\
