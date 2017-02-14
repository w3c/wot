After we started the discussion in Lisbon.
See also https://github.com/bergos/wot-examples

# Motivation

Need for hypermedia control, e.g. to control Actions/Events (or subscriptions).
Relates to current discussion about explicit/implicit declaration at interaction
level.

Hydra supports URI templates (with parameterization - see e.g. issue #237),
error type declarations.

# Issues

- what does Hydra bring us? Compare to e.g. OCF/RAML?
- applicable to non-RESTful architecture?
- how to handle data type/representation types?
   - more precisely, what about non-RDF resource types?

# Proposal

- extending hydra:Operation with all operations defined in the Abstract Transfer
Layer (CRUD+ON)
- define default hydra:Classes for Property, Action, Event, (ActionInvocation, EventSubscription)
    - issue: range of expects/returns is hydra:Class => clients expect supported Properties and operations
- use TD as hydra:ApiSpecification, aligning `wot:associatedURI` with `hydra:entryPoint`
- define Hydra Links instead of plain URIs as values for `hrefs`
   - issue: redundancy introduced (e.g. with `writable`)
   - issue: verbosity of Hydra. simplification? (Are TDs hand-written?)

Example:
```
{
  "uris": ["coap://example.org/sensor/"],
  "properties": [
    {
      "@id": "temp",
      "@type": "Temperature",
      "name": "myTemp",
      "writable": false,
      "hrefs": [
        {
          "@id": "val",
          "@type": "Link",
          "supportedOperation": [
            {
              "@type": "wot:RetrieveAbstractOperation",
              "method": "GET",
              "expects": "wot:PropertyResource",
              "statusCodes": ...
            }
          ]
        }
      ]
    }
  }
}
```

with the JSON-LD context:
```
{
  "@context": [
    "https://w3c.github.io/wot/w3c-wot-td-context.jsonld",
    "http://www.w3.org/ns/hydra/context.jsonld",
    {
      "hydra": ""http://www.w3.org/ns/hydra/core#,
      "uris": "hydra:entryPoint"
    }
  ]
}
```

Example with templated link:
```
{
  "properties": [
    {
      "@id": "obs",
      "@type": "ssn:Observation",
      "hrefs": [
        "@type": "TemplatedLink",
        "property": {
          "@type": "IriTemplate",
          "template" val{?timestamp}",
          "mapping": [
            "variable": "timestamp",
            "property": "ssn:observationTime",
            "required": true
          ]
        },
        "supportedOperation": [ ... ]
      ]
    }
  ]
}
```

# Next steps (TODO)

- test existing implementations (RDFArduino, SmallHydra + some clients?)
- propose a variant of the scripting API using only operations
