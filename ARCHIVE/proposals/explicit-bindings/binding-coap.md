# CoAP

## Operation Binding

* Create: POST / PUT
* Retrieve: GET / FETCH
* Update: PUT / POST / PATCH
* Delete: DELETE
* Notify (actially Subscribe): Observe

#### TD Sample

I assume defaults defined in the CoAP Binding:

* Retrieve: allowed on any resource and by default a GET
* Update: allowed on resources marked `writable`; default PUT when `true`
* Create: allowed on resources in "actions" array or marked `creatable`; default POST when `true`
* Delete: allowed on resources marked `deletable`; default DELETE when `true`

In case the resource interaction differs from the default, the explicit protocol operations are given in a string array, whose index corresponds to the base URI indexes (links to the protocol by scheme).

##### WoT Device Matching the Defaults

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
      "@id": "colorList",
      "@type": "RGBColor",
      "name": "myColorList",
      "valueType": {"type":"array","items":{"type":"integer","minimum":0,"maximum":255},"minItems":3,"maxItems":3},
      <b>"writable": true,</b>
      "hrefs": ["list"]
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
      <b>"creatable": true,</b> /* can be omitted, implied by being in "actions" array */
      "hrefs": ["fadein"]
    }
...
</pre>

##### WoT Device Not Sticking to the Defaults or Retro-fitted Legacy Device

<pre>
...
"properties": [
    {
      "@id": "color",
      "@type": "RGBColor",
      "name": "myColor",
      "valueType": "integer",
      <b>"writable": true,</b> /* default operation */
      "hrefs": ["val"]
    }, {
      "@id": "colorOCF",
      "@type": "RGBColor",
      "name": "myColorOCF",
      "valueType": {"type":"array","items":{"type":"integer","minimum":0,"maximum":255},"minItems":3,"maxItems":3},
      <b>"writable": ["POST"],</b> /* OCF uses POST to write */
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
      <b>"creatable": ["PATCH"],</b> /* constructed exotic action */
      "hrefs": ["fadein"]
    }
...
</pre>

This nicely minimizes the WoT resource model to CRUDS(ubscribe) while enabling a mapping to protocols that have more than 5 operations (e.g., BACnet with more than 30). I could also imagine to replace the historic letters in CRUD with something that fits better to our resource model. For instance: Read, Subscribe, Write, Invoke, Delete or "WISRD" \wizzard\
