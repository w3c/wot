# PlugFest Preparation for Prague F2F 2018

# 1. Introduction

# 2. Servients

## 2.1 4-layered Servients

## 2.2 Servients and Protocols

<table>
	<tbody>
		<tr>
			<th>Servients</th>
			<th colspan="2">Siemens</th>
		</tr>
		<tr>
			<td>Application</td>
			<td>Scripting App.</td>
			<td>WebUI</td>
		</tr>
		<tr>
			<td>=protocol</td>
			<td>HTTP(S), CoAP(S), BACnet, Modbus</td>
			<td>HTTP(S), CoAP</td>
		</tr>
		<tr>
			<td>Remote Proxy</td>
			<td colspan="2">Oracle IoT Cloud Service</td>
		</tr>
		<tr>
			<td>=protocol</td>
			<td colspan="2">HTTP(S)</td>
		</tr>
		<tr>
			<td>Local Proxy</td>
			<td colspan="2">node-wot Oracle Binding</td>
		</tr>
		<tr>
			<td>=Protocol</td>
			<td colspan="2">HTTP(S), CoAP(S), Modbus, BACnet</td>
		</tr>
		<tr>
			<td>Device</td>
			<td colspan="2">
        <p>Local: RGB LED Light, NodeMCU</p>
    		<p>Munich: Remote Festo Plant (valve, pump, levelmeter)</p>
    		<p>(Princeton, US: BACnet Demonstrator, Logo! Demonstrator)</p>
			</td>
		</tr>
	</tbody>
</table>

### 2.2.1 Application Servients

Siemens:
 - Scripting App.: [node-wot](https://github.com/thingweb/node-wot)
 - WebUI: [Thingweb WebUI](https://github.com/mkovatsc/wot-webui)

### 2.2.2 Remote Proxy Servients

### 2.2.3 Local Proxy Servients

Siemens:
 - Scripting Proxy: [node-wot](https://github.com/thingweb/node-wot)

### 2.2.4 Device Servients

Siemens:
 - RGB LED Light
 - NodeMCU (LED, light sensor, button)
 - Live Festo Plant (Munich, Germany)
 - BACnet Demonstrator (Princeton, US) - to be connected
 - Logo! Demonstrator (Princeton, US) - to be connected

# 3 Plugfest scenarios

## 3.1 Event / Observable using HTTP Long Polling

Siemens:
 - Integrating long-poll support into node-wot - work-in-progress

## 3.2. IoT Cloud Integration Scenarios

### Festo Live
- Festo Plant sends regular status info and alerts to Oracle IoT Cloud Service
- WoT Clients can control Festo Plant valve and pump via IoT CS
- Stand-alone HTTP Server displays alerts raised by Festo Plant

<img src="images/plugfest-prague-2018-siemens-festolive.png"/>

1. Local node-wot proxy consumes CoAP-based Things augmenting the Festo plant
2. Local node-wot proxy exposes [Festo Live](https://github.com/w3c/wot/blob/master/plugfest/2018-prague/TDs/SiemensTDs/FestoLive.jsonld) Thing over Oracle IoT Cloud Service binding (and local HTTP binding, lightgreen TD)
3. Oracle IoT Cloud Service receives Property values and can send Action invocations to node-wot proxy via the (proprietary) Oracle binding
4. Oracle IoT Cloud Service exposes [Festo Live](https://github.com/w3c/wot/blob/master/plugfest/2018-prague/TDs/SiemensTDs/FestoLive.jsonld) Thing over RESTful Oracle IoT Cloud Service Server API, which was extended with a TD
5. WoT Clients can consume [Festo Live](https://github.com/w3c/wot/blob/master/plugfest/2018-prague/TDs/SiemensTDs/FestoLive.jsonld) Thing from Oracle IoT Cloud Service

# 4 Schedule

# 5 Requirements for PlugFest Setting

# 6 Changes from previous PlugFest in Burlingame

# 7 Implementation guidelines
