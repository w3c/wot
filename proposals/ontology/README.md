# An Ontology for WoT

This proposal for a WoT ontology mostly defines five concepts:
- __Thing Description__ - Semantic resource formally describing a unique WoT
Thing that a software agent can interact with. Examples of WoT Things include
building rooms, manufactured products, mechanical systems but also digital
control devices, i.e. any real-world entity without a priori restriction.
- __Interaction__ - Web resource of arbitrary content format acting as a digital
proxy for any real-world entity that is not already digital information. Such
entities can be physical quantities like temperature or pressure, natural
phenomena like raise of temperature or object motion, arbitrary states like
on/off, etc.
- __Property__ - Time-independent real-world entity that is neither an Action,
nor an Event. For instance, physical quantities (temperature, pressure,
brigthness...) are Properties.
- __Action__ - Real-world entity characterizing particular time intervals,
possibly influencing some Properties. Non-immediate natural phenomena (e.g.
heating) or functionalities provided by a cyber-physical system (open, close,
switch, toggle...) are Actions.
- __Event__ - Real-world entity characterizing particular instants, possibly
related to some Properties. State changes or sensor measurements are Events.

For a formal definition of these concepts, see
http://w3c.github.io/wot/proposals/ontology/wot.owl. It is based on the IRE
(Identifier/Resource/Entity) ontology. See

> Presutti, V., & Gangemi, A. (2010). Identity of Resources and Entities on the Web. In M. Lytras, & A. Sheth (Eds.) Progressive Concepts for Semantic Web Evolution: Applications and Developments (pp. 123-147). Hershey, PA: Information Science Reference. doi:10.4018/978-1-60566-992-2.ch007

More details to be published in a workshop paper.
