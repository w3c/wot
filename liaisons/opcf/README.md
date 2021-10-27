# OPC UA W3C WoT Binding Proposal (Draft)

## Purpose 
The purpose is the development of an OPC UA Binding Ontology through an OPC UA Companion specification and a W3C Note document for OPU UA Binding for the W3C WoT Thing Description.

## Scope
The W3C Web of Thing (WoT) should support a standardized binding to OPC UA systems to enable simple application development like for cross-domain 
applications. OPC UA is one of the prominent automation standards for device communication in the factory domain as well as for Industry 4.0 
scenarios such as flexible manufacturing. 

Such a binding for the WoT needs its own set of OPC UA specific vocabulary definitions, which should be developed collaboratively. In the context of the existing [liaison](https://opcfoundation.org/news/opc-foundation-news/w3c-and-opcf-to-integrate-opc-ua-into-the-web-of-things/) a joint 
working group should be established to work together on an OPC UA binding for the Web of Things. This guaranteed that the binding is getting accepted within the OPC UA community as well as in the WoT community and avoids heterogeneous (project specific) definitions and incompatible OPC UA handlings in WoT Thing Descriptions.

The joint activity should mainly address:
* define a standardized way how Thing Description can be created from UA NodesetFile (and vice versa) 
* define how the OPC UA specific endpoints can be described in TDs
* define the (public) UA security modes as metadata in TDs
* define an ontology (OPC UA Binding Ontology) that covers UA specific metadata (e.g., for endpoint and security definition) 
 

### OPC Foundation
OPC is the interoperability standard for the secure and reliable exchange of data in the industrial automation 
space and in other industries. It is platform independent and ensures the seamless flow of information among devices 
from multiple vendors. The OPC Foundation is responsible for the development and maintenance of this standard. OPC UA is a platform 
independent service-oriented architecture that integrates all the functionality of the individual OPC Classic specifications into one 
extensible framework. 

### W3C
The mission of the World Wide Web Consortium (W3C) is to lead the Web to its full potential by creating technical standards 
and guidelines to ensure that the Web remains open, accessible, and interoperable for everyone around the globe. W3C well-known 
standards HTML and CSS are the foundational technologies upon which websites are built. W3C works on ensuring that all foundational 
Web technologies meet the needs of civil society, in areas such as accessibility, internationalization, security, and privacy. W3C also 
provides the standards that undergird the infrastructure for modern businesses leveraging the Web, in areas such as entertainment, 
communications, digital publishing, and financial services. That work is created in the open, provided for free and under the 
groundbreaking W3C Patent Policy. 


## Working Group 

Note: TBD will be defined during the Kick-off meeting. 

### Structure of working group
The name of the working group is TBD. The structure of the TBD Working Group consists a chair, an editor and members.

### Membership
The working group is open to any employee or representative of a member of the OPC Foundation or the W3C. 

### Working Group Chair 
The chairperson will be elected by the members of the working group. However, initially a provisional chairman will be nominated by the TBD. 

### Working Group Editor 
The editor(s) need both OPC UA expertise and Web of Things knowledge. A final determination will be made after the working group is formed.

### Working Group Start-up 
The working group will be formed with a call for members and announcement of an initial kick-off meeting.

### Working Group Operation 
TBD

### Working Group Meetings 

The working group meets as needed. Meetings may be electronic or in person. The frequency and form of the meetings will be established as the working group forms. 

Face-to-Face and electronic meetings will be organized jointly by W3C and the OPC Foundation. The working group will use github / SharePoint provided by the W3C / OPC Foundation for electronic scheduling and sharing (TBD).

### Proposed Project Schedule 
TBD


## Deliverables 
* OPC UA companion specification
  * defines OPC UA Binding Ontology 
  * guideline to transform UA NodesetFile to Thing Description (and vice versa)
* OPC UA Binding Document as W3C Note for WoT Thing Description
* Prototype implementation
