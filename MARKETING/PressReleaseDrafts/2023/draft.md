# Enhanced Web of Things connects diverse IoT ecosystems [DRAFT]
** THIS IS A DRAFT. The WoT deliverables cited below are still in Proposed Recommendation status.**

https://www.w3.org/ — DD MM 2023 — The World Wide Web Consortium (W3C) announced today that 
[Web of Things (WoT) Architecture 1.1](https://www.w3.org/TR/wot-architecture11/),
[Web of Things (WoT) Thing Description 1.1](https://www.w3.org/TR/wot-thing-description11/), 
and 
[Web of Things (WoT) Discovery](https://www.w3.org/TR/wot-discovery/)
are now official W3C Recommendations.
Without breaking compatibility with the [first release in 2020](https://www.w3.org/press-releases/2020/wot-rec/),
these new W3C Recommendations improve and expand the scope of the Web of Things,
and add significant new functionality.

<!-- Why is it important? -->
## WoT addresses the IoT fragmentation problem
Currently, Internet of Things (IoT) systems suffer from lack of interoperability and fragmentation.
Customers want to be able to choose devices from multiple vendors without redesign.
The Web of Things (WoT) extends the IoT with Web technology to address this issue.
In particular, the WoT recommendations provide a format for standardized descriptive information, 
the WoT Thing Description, to allow easy integration of IoT devices and services.
This includes IoT systems that have already been released and use different IoT 
communication protocols and data standards.
In short, the WoT uses web technology to harmonize access to diverse
IoT devices and breaks silo walls.
This allows WoT applications to be written on top of a single, portable interaction abstraction.

 <img src="https://www.w3.org/WoT/images/wot-mappings.png" class="img-responsive" alt="WoT Interactions" />

<!-- What is new? -->
## Significant improvements and functionality
In general, these new Recommendations have many small changes to improve the usability of
the previous release and address new use cases. However, significant new features are also defined,
including Thing Models and Discovery.

Thing Models provide a way to describe classes of things, such as product lines from particular vendors.
Thing Models also support modularity, allowing a parameterized model to be built from reusable components.
A Thing Model can be used to generate a Thing Description by providing the appropriate parameters.

Discovery provides easy access to Thing Descriptions, while controlling access appropriately to preserve privacy.
It does not replace other existing discovery mechanisms but builds upon and applies them to the 
distribution of Thing Descriptions.
WoT Discovery can be applied both within a local-area network (LAN), and at scale across the entire Internet.
It can also be used for both self-describing IoT devices and externally described devices.
A searchable Thing Description Directory service is defined supporting semantic search.

<!-- What is the impact? -->
## Widely adopted and supported
Many [software packages and open-source projects now support WoT](https://www.w3.org/WoT/developers/), including
tools for Thing Description validation and construction as well as support for Thing runtimes and 
Thing Description directories supporting discovery.

Market adoption of the Web of Things is rapidly growing.
The Web of Things has been adopted or is under consideration for adoption by
several standards organizations, including 
[ECHONET](https://echonet.jp/english/), 
[Conexxus](https://www.conexxus.org/),
the [OPC Foundation](https://opcfoundation.org/) (OPC UA Web-of-Things Connectivity WG), 
and the [IPA Digital Architecture Design Center](https://www.ipa.go.jp/en/about/org/dadc/index.html).

The growing WoT user community is supported by multiple [WoT Community Groups](https://www.w3.org/WoT/cg/), 
which hold regular meetings to share information on WoT and its applications in both English and Japanese.

[end of press release]
[boilerplate "about w3c", boilerplate contact info for the media]

{Testimonials from WG members and other W3C Members go here}
