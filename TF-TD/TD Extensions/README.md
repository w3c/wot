# Annotating Thing Description with external vocabularies

## Common WoT Vocabulary

One of the current practices in WoT is to annotate devices as a means to
guarantee semantic interoperability between them, that is, to let them
communicate even though they are from different manufacturers, use different
protocols or rely on different data models.

As explained in a
[document introducing Thing Descriptions](http://w3c.github.io/wot/current-practices/wot-practices.html),
we rely on JSON-LD to describe WoT Things. As a consequence, any RDF term could
be theoretically included to a Thing Description. To ease
experiments with Thing Descriptions, we provide, in the form of a JSON-LD
context file, a set of terms that are relevant in the context of WoT. This file
is accessible at https://w3c.github.io/wot/w3c-wot-common-context.jsonld. We
present the terms it contains in the following. A few examples showing how
to use them are also presented in our
[introductory document](http://w3c.github.io/wot/current-practices/wot-practices.html#td-samples).

This approach of defining a "common" vocabulary for Thing Description is only
meant for internal experimentation within the Web of Things group to help
whoever wants to use semantic annotations without being familiar with RDF and
Linked Data. It is _not_ intended to become any standard. On the contrary,
it is to expect in a real environment that a Thing Description uses arbitrary
RDF terms as annotations, which should then be processed with state-of-the-art
Semantic Web tools (for ontology matching, automatic reasoning, etc).

## RDF source vocabularies

All the terms originate from existing RDF vocabularies, freely accessible on
the Web. They are part of the Linked Open Data (LOD) cloud. We have used four
vocabularies until now: Quantities & Units, DogOnt, LinkedGeoData and
schema.org. It looks as follows in the context file:

```
{
  "@context": {
    "qu": "http://purl.oclc.org/NET/ssnx/qu/qu-rec20#",
    "dogont": "http://elite.polito.it/ontologies/dogont.owl#",
    "lgdo": "http://linkedgeodata.org/ontology/",
    "schema": "http://schema.org/",
...
```

Each vocabulary in the cloud is associated to a URI that usually points to a
human-readable documentation of its content. It might prove helpful in case
the meaning of a specific term is not clear.

## Terms

### Terms for Properties

The "common" JSON-LD context contains the following terms for WoT Properties.
It also includes the property `reference` to indicate that a given Property
serves as reference value to another Property. For example, a temperature
sensor might define a configurable threshold to indicate if the measured
temperature is hot or cold (see WoT Current Practices,
[example 10](http://w3c.github.io/wot/current-practices/wot-practices.html#temperature-sensor)).

```
...
    "Temperature": "qu:temperature",
    "Brightness": "qu:quantityOfLight",
    "Distance": "qu:distance",
    "Speed": "qu:speed",
    "PowerConsumption": "qu:energy",
    "OnOff": "dogont:OnOffState",
    "RGBColor": "dogont:ColorStateRGB",
    "RGBColorRed": "dogont:RedStateValue",
    "RGBColorGreen": "dogont:GreenStateValue",
    "RGBColorBlue": "dogont:BlueStateValue",
    "reference": "schema:valueReference",
...
```

Along with Property types, we also included the units these Properties are
typically associated to. One should use the property `unit` to link a
Property with its unit.

```
...
    "unit": "qu:unit",
    "celsius": "qu:degreeCelsius",
    "kelvin": "qu:kelvin",
    "m": "qu:meter",
    "mm": "qu:millimeter",
    "mile": "qu:mile",
    "inch": "qu:inch",
    "kmh": "qu:kilometerPerHour",
    "mph": "qu:milePerHour",
    "kwh": "qu:kilowattHour",
    "joule": "qu:joule",
...
```

### Terms for Actions

Similarly to Properties, we included the following Action types in our "common"
context.

```
...
    "On": "dogont:OnCommand",
    "Off": "dogont:OffCommand",
    "Toggle": "dogont:ToggleCommand",
    "Start": "dogont:StartCommand",
    "Stop": "dogont:StopCommand",
    "IncreaseColor": "dogont:IncreaseColorCommand",
    "DecreaseColor": "dogont:DecreaseColorCommand",
...
```

In some cases, it might be hard to differentiate Properties and Actions,
e.g. the Property `OnOff` and the Actions `On` and `Off`. In that case, having
a look at the full definition of the RDF terms might help to disambiguate them:
`OnOff` is a sub-class of `dogont:State` while `On` and `Off` are sub-classes
of `dogont:Command`. As explained with vocabulary URIs, dereferencing a RDF
term should lead to a human-readable documentation of it or, a minima, to
the RDF file where it is defined.

### Terms for Things

Finally, our context includes terms for WoT Things. One should note however that
no assumption is made about the Properties, Actions or Events an instance of
these classes has. It is intended for _semantic_ interoperability only.

```
...
    "Lamp": "dogont:Lamp",
    "Lighting": "dogont:Lighting",
    "TrafficLight": "lgdo:StreetLamp",
    "Switch": "dogont:OnOffSwitch",
    "Fan": "dogont:Fan",
    "Door": "dogont:Door",
    "Car": "schema:Car"
  }
}
```
