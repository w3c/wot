---
coding: utf-8

title: WoT Thing Description Discovery
abbrev: wot-td-discovery
docname: draft-wot-td-discovery
category: info

stand_alone: yes
pi: [toc, sortrefs, symrefs, comments]

author:
  -
    ins: M. McCool
    name: Michael McCool
    org: Intel Corporation
    street: 33 av Chouinard
    city: Edmundston
    code: E3V 3J3
    country: Canada
    phone: +1-506-739-6753
    email: michael.mccool@intel.com
  -
    ins: C. Bormann
    name: Carsten Bormann
    org: Universität Bremen TZI
    street: Postfach 330440
    city: Bremen
    code: D-28359
    country: Germany
    phone: +49-421-218-63921
    email: cabo@tzi.org

normative:
  ACE: RFC0793
  CoAP: RFC0793
  CoRE-Link: RFC0793
  CoRE-RD: RFC0793
  HTTP: RFC0793
  WoT-TD: RFC0793
informative:
  WoTArch: RFC0793

--- abstract

W3C Web of Things (WoT) Thing Descriptions (TD) provide metadata that
describe the affordances and semantics of IoT devices and services.
However, before a TD can be interpreted and used, it needs to be found.
This document describes a discovery process for WoT TDs that also 
provides appropriate security and privacy access controls, supports 
multiple "first contact" mechanisms, supports advanced querying
capabilities, and supports both local and global discovery use cases.
This discovery process is based on CoRE Resource Directory {{CoRE-RD}}
with authentication following ACE {{ACE}} and can be accessed over either
CoAP {{CoAP}} or HTTP {{HTTP}}.  To preserve privacy, the system
separates the discovery process into two stages, open
introduction protocols for first contact and a directory service that
provides querying capabilities and access to metadata, but only after
authentication and authorization.  Any introduction mechanism may be
used that can provide the address of a directory service but we will
specify several useful ones.  

--- middle

# Introduction

This MAY {{?RFC2119}} be useful.
