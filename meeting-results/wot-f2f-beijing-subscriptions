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

* communication patterns -> protocol mappings
* subscription parameters
