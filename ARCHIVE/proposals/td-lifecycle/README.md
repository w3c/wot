# Thing Description Lifecycle

The TD will grow and change over the lifetime of the Thing it describes.

## Abstract Thing Descriptions

An abstract TD contains all the semantic information of a normal TD except for the protocol and addressing information (i.e., base URIs and hrefs) as well as certain elements of the metadata that would refer to a specific instance of such a Thing (e.g., name and serial number).
They can be compared to abstract classes or interfaces from object-oriented programming: abstract TDs define placeholders that cannot be instantiated, that is, do not belong to a concrete Thing.
This is useful for semantic reasoning processes that require information about Thing capabilities (e.g., to proof that a certain functionality can be implemented through service composition).
Abstract TDs also fulfill the requirement of late bindings in the application logic.
A script could instantiate a proxy object that exposes all capabilities of the abstract TD.
Only when it is accessed, a matching TD has to be discovered, so that the Properties, Actions, and Events can be bound to the resources of a servient using its URIs.
