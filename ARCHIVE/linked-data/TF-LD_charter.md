# Web of Things Linked Data and Semantic Processing Task Force

**Confidentiality**: proceedings are public

**Initial Chair**: Darko Anicic and Danh Le Phuoc

**Team Contact**: Dave Raggett

**Meeting Schedule**: phone call every 2 weeks with most work to be conducted asynchronously

## Introduction

The Web of things seeks to unlock the potential of the IoT by defining an abstraction layer that decouples applications from the details of the underlying IoT platforms, protocols and communications patterns. This is based upon the idea that things standing for physical or abstract entities are exposed to applications as software objects. These objects expose properties, actions, events and metadata, and are subject to application contracts that also define service level agreements around security, privacy, non-functional properties (e.g., location, price etc.) and the underlying IoT platforms. These contracts are formally defined in terms of W3C's Linked Data framework as a *lingua franca*, enabling multiple serializations such as JSON, XML, Turtle and so forth.

![contracts](contracts.png)

The application contracts can be used by application platforms to create the software objects for applications to interact with things. The contracts include the metadata needed by application platforms to drive particular IoT platforms. Semantic models can be used to support validation of application contracts, including domain constraints, validation of data, discovery based on the kinds of things, their relationships and context, and to ensure semantic interoperability for compositions of services.

## Scope

The Linked Data and Semantic Processing Task Force is responsible for:

### The Linked Data for Application and Platform Contracts

- Gathering and surveying a broad range of existing and proposed use cases for the Web of things, and identifying Linked Data requirements for the application contracts exposed by application platforms.
- Working on alignment of W3C WoT WG TD ontology with ontologies and data models from other standardization activities (e.g., OCF, oneM2M, Industrie 4.0 etc.) to ensure interoperability.
- Creating demos and test suites to explore the requirements, and for use in outreach.
- Exploration of the requirements for vendors to describe their product's unique features.
- Exploration of areas where shared standards are appropriate, e.g. physical units.

### Thing Description Recipes

IoT standards suites often specify devices as a composition of separately specified interface definitions, e.g. OCF defines devices in terms of sets of resources, whilst oneM2M defines devices in terms of modules. This concept can be extended for a composition of resources from multiple devices, thereby creating a WoT application. Both kinds of compositions are valuable.

- Working on means to specify reusable syntactic and semantic modules for WoT applications.
- Creating things as compositions and collections of other things, includng partial things, in form of Recipes, where the compositions are based on reusable syntactic and semantic modules.
- Semantic constraints and Non Functional Properties for TD Recipes.
- Publishing and discovery of Recipes by using Linked Data principles.
- Implementations of Recipes (matching ingredients of a Recipe and implementation based on WoT Scripting API).

### Extensibility of Thing Description with Domain Specific Vocabularies
- Use case stories, best practices and tools that enrich WoT Thing Description with application- and domain-specific vocabularies.
- Demonstrations on Thing Description enriched with common or standardized semantic vocabularies (e.g., iot.schema.org), showing innovative applications that can use information from different vertical domains, as well as repurposing of WoT applications based on semantic re-mapping.

### Semantic Processing for Web of Things
- Identify and evaluate applicability of Semantic/Linked Data processing features (e.g., SPARQL-like querying, reasoning, data schema alignment, service composition and distributed processing/reasoning, query federation etc.).
- Incubation of techniques for Linked Data generation and transformation (RDF, RDF(S), OWL).
- Incubation of techniques for semantic constraints and validation of Linked Data (RDF Data Shapes, OWL, OWL integrity constraints) and evaluation in terms of expressiveness, performance, adequacy to the TD model.
- Use cases and architectures for reasoning over WoT data (e.g. stream processing, distributed reasoning).

### Semantic/Linked Data Tool chains for Web of Things

- Propose Semantic/Linked Data Tool chains for Web of Things with resepct to identified Semantic/Linked Data processing features.
- Evaluate efficiency, performance and scalability of Semantic Tool chains(e.g., transformation, mapping, validation, quering/reasoning) in different WoT hardware settings and scenarios.
- Investigate the portability of open source tools to resource-constraint IoT devices.

### Common Activities
- Coordination with other Web of Things IG task forces
- Coordination with other W3C groups, e.g. Web of things WG, Semantic Web IG, ...
- Coordination with external groups, IoT platforms, Linked Data community, ...
- Incubation of techniques for validation and transformation of Linked Data

## Deliverables

The Task Force will produce Interest Group Notes, demos and test suites in keeping with its goals. The roadmap for this will be maintained by the Task Force Chair in consultation with members of the Task Force.

## Relationships to Other WoT IG Task Forces

The Linked Data and Semantic Processing Task Force will coordinate with other WoT IG Task Forces, e.g. in connection with liaisons for OCF, oneM2M and future liaison task forces for other IoT platforms.  Coordination is expected with the Thing Description Task Force on the requirements for application contracts in respect to information models, and with the Security Task Force in respect to security metadata.

## Relationships to Other W3C Groups

The strongest connection will be to the Web of things WG, but there is also likely to be a need for coordination with a variety of W3C groups, e.g. Semantic Web IG, RDF Data Shapes WG, Spatial Data on the Web WG, Automotive WG and so forth.

## Relationships to Groups External to the W3C

The Task Force will coordinate with external groups to exchange information and build a shared understanding. This includes IoT alliances and SDOs, as well as communities focusing on Linked Data, IoT pilots and so forth.

## Short and longer term objectives

The first six months:

* Clarifying the Linked Data model for things in terms of use cases and commercial IoT standards
* Clarifying the metadata needed for describing IoT platforms
* Validation of thing descriptions
* The role of validation and inference for semantic interoperability

Further out:

* Linked Data requirements for security, privacy and terms & conditions
* Coordination with other groups on units of measure, etc.
* Metadata for websites to advertise their Web of things services you can install on a home hub

## Background

- [Joint White Paper on Semantic Interoperability for the Web of Things](https://www.researchgate.net/publication/307122744_Semantic_Interoperability_for_the_Web_of_Things)
- [IAB IoT Semantic Interoperability Workshop 2016](https://www.iab.org/activities/workshops/iotsi/)
- [W3C Linked Data page](https://www.w3.org/standards/semanticweb/data)
- [Slides from Santa Clara F2F, Feb 2017](https://www.w3.org/WoT/IG/wiki/images/9/9c/Wot-linked-data-tf.pdf)
