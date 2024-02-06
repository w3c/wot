# Discovery
Summary of main points from discussion.

- Multiprotocol support
    - Directory API for CoAP
    - Note: currently have TD Server supported with CoAP
    - Issue with CoAP-only devices with multiple TDs wanting to self-describe, right now that needs HTTP (read-only directory)
        - Could use CoRE-RD for this case
    - Discovery should be generic enough to handle different protocols
        - Follow-up comment:
              - We have a TD for a Directory service.  Can we make this generic enough that it can bind to any protocol?   Should bindings specify how to do discovery for that protocol?  Need to cover things not in the TD, such as security bootstrapping.
- New Introductions
    - MQTT
    - OPC UA
- MQTT Discovery
    - No OASIS standard (but we should talk to them)
    - Home Assistant has one specific way of doing it... but not following a standard?
    - Follow-up comment:
        - Sparkplug B is an Eclipse specification includes discovery - https://sparkplug.eclipse.org/specification; HiveMQ has some interest
        - Can we actually deliver TDs with MQTT links? e.g. a TD server, well-known topic, even if only for self-describing things?
