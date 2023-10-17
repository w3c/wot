# Improved Web of Things unifies diverse IoT systems [DRAFT]
** THIS IS A DRAFT. The WoT deliverables cited below are still in Proposed Recommendation status.**

https://www.w3.org/ — DD MM 2023 — The World Wide Web Consortium (W3C) announced today that 
[Web of Things (WoT) Architecture 1.1](https://www.w3.org/TR/wot-architecture11/),
[Web of Things (WoT) Thing Description 1.1](https://www.w3.org/TR/wot-thing-description11/), 
and 
[Web of Things (WoT) Discovery](https://www.w3.org/TR/wot-discovery/)
are now official W3C Recommendations.
Without breaking compatibility with the [first release in 2020](https://www.w3.org/press-releases/2020/wot-rec/),
these new W3C Recommendations improve and expand the scope of the Web of Things
and add significant new functionality.

<!-- Why is it important? -->
## WoT addresses the IoT fragmentation problem
Currently, Internet of Things (IoT) systems suffer from lack of interoperability and fragmentation.
Customers want to be able to choose devices from multiple vendors without redesign.
The Web of Things (WoT) extends the IoT with web technology to address this issue.
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
In general, these new Recommendations include many small changes to improve the usability of
the previous release and address new use cases. In addition, significant new features are also defined,
including Thing Models and Discovery.

Thing Models provide a way to describe classes of things, such as product lines from particular vendors.
Thing Models also support modularity, allowing a parameterized model to be built from reusable components.
A Thing Model can be used to generate a Thing Description by providing the appropriate parameters.

Discovery provides easy access to Thing Descriptions, while controlling access appropriately to preserve privacy.
It does not replace other existing discovery mechanisms but builds upon and applies them to the 
distribution of Thing Descriptions.
WoT Discovery can be applied both within a local-area network (LAN), and at scale across the entire internet.
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

## Testimonials from W3C Members and Liasion Partners


### Hitachi
To feedback effective solutions from digital twins to real-world systems, it is essential that we are able to quickly find devices in the physical environment and understand their roles and the context of the data which they provide. 
The updated recommendations to which we contributed in part, include enhanced capabilities such as Thing Discovery that will facilitate this link between the physical and cyberspace. 
We're enthusiastic that these leaps in cyber-physical systems will stimulate progress across diverse sectors and contribute to the realization of a better society.

*Itaru Nishizawa, vice president and executive officer, chief technology officer, Hitachi, Ltd.*

### Intel
Intel congratulates the WoT WG for the updated WoT standard.  This update solidifies support for the descriptive approach to IoT interoperability.  IoT fragmentation remains a major barrier to greater IoT adoption.  The WoT standard addresses a key challenge in the integration of IoT devices and services from different IoT ecosystems by providing a common format for describing data and interaction.   This descriptive approach strongly differentiates it from other prescriptive approaches to IoT interoperability, and is designed to work with and enhance other standards, not compete with them.

*Eric Siow, Director, Web Standards and Ecosystem Strategies, Intel Corporation*

### OPC Foundation
The OPC Foundation welcomes the new releases of the W3C Web of Things. Current OPC Foundation group activities are working on a solution how WoT Thing Descriptions can be used as a data model mapping service from non-OPC UA asset interfaces to OPC UA systems. This reduces the onboarding effort (e.g. of Modbus-based assets) and enables smooth use of asset data interfaces in the OPC UA address space. We see this as a big win for the manufacturing industry and another important step towards improving the interoperability of heterogeneous asset landscapes.

*Stefan Hoppe, president OPC Foundation*

### Oracle

The Web of Things set of specifications, including the updated version 1.1, serves as a unifying framework to address complex IoT use cases requiring interoperability across diverse ecosystems at massive scale. Oracle is pleased with the progression of this set of specifications to the Recommendation status and is proud to have been an active contributor, leader, and co-editor of this effort. We believe that this will benefit customers and users by enabling much-needed interoperability between different vendor solutions for IoT.  

*Jai Suri, vice president, IoT and blockchain applications development, Oracle*

### Luminem and SIFIS-Home Consortium 
The SIFIS-Home consortium is looking forward the new W3C Web of Things
standards. The SIFIS-Home project focused on proving that is possible to
have more awareness on the risks and hazards related to the deployment
of connected devices in the Home environment. The Thing Description
model proved to be the ideal match to deliver the additional information.

*Luca Barbato, Luminem CEO and SIFIS-Home consortium member*
*Andrea Saracino, SIFIS-Home project coordinator*

### Microsoft
We built a reference implementation that uses the new Web of Things (WoT) release with our Azure OpenAI service to demonstrate how to automatically onboard industrial assets and were pleased with how easy it was to generate WoT Thing Descriptions automatically. In addition, the open-source WoT tools available from the Eclipse Foundation made automatic validation of the generated Thing Description an easy value add.

*Erich Barnstedt, chief architect standards, consortia and industrial IoT, Azure Edge + Platform team, Microsoft Corporation*

### Siemens
Addressing today's market challenges, such as energy optimization, requires technologies that facilitate easy heterogeneous system integration and optimization implementation. The Web of Things, which is one of the key technology building blocks, facilitates addressing such challenges by integrating efficient diverse data sources from a variety of device systems. Our in-house solution sayWoT! implements the latest WoT Thing Description 1.1 and is successfully used in various IoT projects by customers. One of the highlights is the usage of sayWoT! in the Wunsiedel Energy Park, Germany, to enable smart control to ensure green hydrogen production.

*Thomas Kiessling, chief technology officer at Smart Infrastructure, Siemens AG*


