# WoT Profiles

## Motivation
In order to address important interoperability use cases among diverse stakeholders, 
the WoT profile 1.0 specification has been developed.
This work will continue with a wider scope to address other use cases and scenarios,
including deployments in large scale cloud systems, edge devices, digital twins,
and on resource constrained devices.

## Description

Initially this work item will focus on delivering the Profile 1.1 specification.
When TD 2.0 becomes available, appropriate clarifications and constraints will be delivered in a Profile 2.0 specification.

In addition, specification work for other profiles will be carried out. 
Initial use cases and requirements for other profiles are described in https://www.w3.org/TR/wot-usecases .

To address some of these use cases, the following profiles have been proposed:  

### Digital Twin Profile
 
Digital twins enable defining a model of a thing, person or process. They are used as digital proxies for counterparts in the real world to better understand situations in the real world and act on state changes. 

Using a digital twin allows businesses to analyze their physical assets to troubleshoot in real time, predict future problems, minimize downtime, and perform simulations to create new business opportunities. A digital twin may also be called a twin or a shadow. 

Digital twins have different roles. They could be models of individual discrete things, composite twins or organisational twins of more complex entities, such as factories or cities.
Some use cases for digital twins have been described in the **WoT use cases and requirements** document, e.g. for Smart Cities, Production Monitoring, Health and Agriculture scenarios.

The *Digital Twin Profile* enables using the thing description for defining digital twins that address these roles, use cases and requrements. 

### Cloud Profile

Large scale deployments, for example in production lines for industrial manufacturing consist of multiple machines, where each machine incorporates sensors for various values. A failure of a single machine can cause defective products or a stop of the entire production.

Big data analysis enables to identify behavioral patterns across multiple production lines of the entire production plant and across multiple plants.

The results of this analysis can be used for optimizing consumption of raw materials, checking the status of production lines and plants and predicting and preventing fault conditions.

The *Cloud Profile* enables large scale deployments of devices across different manufacturers. 

### Profiles for constrained devices and other protocols

The current WoT Profile specification contains a protocol binding for HTTP(s). 
In an industrial environment individual actuators and production devices use several other protocols. Examples include MQTT, OPC UA, Modbus, and others. Gathering data from these devices, e.g. to support digital twins or big data use cases requires a protocol binding and additional semantic guarantees that enable them.

As part of the profile work item, other profiles may be defined, based on concrete use cases and requirements.





