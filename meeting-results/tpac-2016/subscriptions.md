# Clarification of Event types

## Distinction/Requirements:

* Self-containing vs. Delta
 (does a single sample make sense?)
* Severity of loss / ensured delivery
(can samples be lost?)
* Equidistance in time vs. spontanous occurence
(are samples equidistant?)
* History/Buffer vs. only most recent value 
(can I get a specific set of samples from the past?)

### Options for subscriptions





## Micro use cases / application patterns

1. Microfone 
    * possible delta
    * no ensured delivery needed
    * equidistance 
    * most recent value
1. Alarms, doorbell
    * self-contained
    * ensured delivery
    * spontanous
    * no keeping of history
1. Delta-Temperature sensor, dimmer control and lights
    * no equidistance
    * no ensured delivery needed
    * selfcontained
    * most recent value
1. Sampled Temperature sensor
    * equidistance
    * no ensured delivery needed
    * selfcontained
    * most recent value
1. Video recorder, email-inbox
    * possible delta
    * ensured delivery needed
    * equidistance 
    * History

## Follow-Ups

* communication patterns (example based on RESThooks)
 * scripting API on apllication/runtime interface
 * protocol mappings of the resource model
 * how to express the subscriptions in the thing description 

## Open issues /prooosals needed

* named topics (MMC)
* timestamping (MMC, cabo)
* latched events (MMC)
* optional features (?)
* subscription parameters (Zoltan, MMC, Matthias)
* decoupling subscription management and data streams (cabo, Johannes)