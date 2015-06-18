# Web of Things Standard Recommendation

This document is part of the [Web of Things Standard Recommendation](../).

This part looks into the different ways of integrating physical objects to the Web to make them Web Things. Once a pattern has been choosen the server of a Web Thing should follow the [Web Things Requirements](../web-things-requirements/) and the resources and payloads it uses should be following the [Web Things Model](../web-things-model/).


## Web Things Integration Patterns

Some physical entities might not expose a Web API themselves for various reasons (e.g., a ZigBee sensor node, or an Alarm clock accessible over Bluetooth only), in which case they aren’t WTs as such but they can use another Web Thing as a proxy or gateway to provide an Web API for them.

### Direct Connectivity

In the most straightforward case, a WT is simply a Web API that Web clients send requests to. In some cases, the client and the WT can be on the same network or on different networks. In both cases, you are sending the same request to a WT, the only difference is the URL to which you are sending the request (and obviously how the lamp gets the message).

![Direct Integration](http://webofthings.org/wp-content/uploads/2015/04/integration-direct.png)

### Gateway Based Connectivity

Gateway based connectivity is used when a Thing cannot offer a Web API. In this case an intermediate, the Gateway, exposes an Web API party Web server exposes an API on its behalf, therefore acting as a proxy (or gateway depending on the complexity/layer of the translation).

![Gateway Integration](http://webofthings.org/wp-content/uploads/2015/04/integration-gateways.png)

### Cloud Based Connectivity

This third case is similar to the Gateway based connectivity. However, in this case the Gateway is a cloud service and not another device in situ.

![Cloud Based Integration](http://webofthings.org/wp-content/uploads/2015/04/integration-cloud.png)

While these three inegration patterns need to be taken into account it is worth noting that the proposal (Web Things Requirements and the Web Thing Model) applies regardless of the integration pattern of choice.