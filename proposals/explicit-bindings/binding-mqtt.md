# MQTT

## Operation Binding

* Create: PUBLISH (Action or Subscription Resource)
* Retrieve: SUBSCRIBE (Retained Message on all topics)
* Update: PUBLISH (Property Resource)
* Delete: N/A
* Notify (actially Subscribe): SUBSCRIBE

#### TD Sample

Assuming defaults similar to other bindings:

* Retrieve: allowed on any resource and by default a SUBSCRIBE
* Retained Message mode is required to support Retrieve operations
* Update: allowed on resources marked `writable`; default PUBLISH when `true`
* Create: allowed on resources in "actions" array or any resource marked `creatable`; default PUBLISH when `true`
* Delete: not allowed - could be mapped to a topic rule if needed, e.g. publish to a topic constructed by concatenating "/delete" to the end of the topic string

Note: 
* MQTT PUBLISH maps to Update for resources marked `writable` and maps to Create for resources marked `creatable`. 
* In the case of a resource potentially both `writable` and `creatable`, the function representing the most useful operation should be chosen. 
* Only one of `writable` or `creatable` is allowed in an MQTT binding. 
* The default mapping for Property type resource is `writable` and for Action type resources is `creatable`.
* Only the Default mapping is supported by MQTT, no alternate mappings are possible as MQTT only offers PUBLISH and SUBSCRIBE operations.

##### WoT Device Matching the Defaults

<pre>
"uris": ["mqtt://example.com:1883/"]
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


