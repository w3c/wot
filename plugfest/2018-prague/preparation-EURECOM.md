# PlugFest Preparation for Prague F2F 2018

# 1. Introduction

# 2. Servients

## 2.1 Servients and Protocols

<table>
	<tbody>
		<tr>
			<th>Servients</th>
			<th colspan="2">EURECOM</th>
		</tr>
		<tr>
			<td>Application</td>
			<td>Scripting App.</td>
			<td>SPARQL endpoint</td>
		</tr>
		<tr>
			<td>=protocol</td>
			<td>HTTP</td>
		</tr>
		<tr>
			<td>Remote Proxy</td>
			<td colspan="2"></td>
		</tr>
		<tr>
			<td>=protocol</td>
			<td colspan="2">HTTP</td>
		</tr>
		<tr>
			<td>Local Proxy</td>
			<td colspan="2"></td>
		</tr>
		<tr>
			<td>=Protocol</td>
			<td colspan="2">HTTP</td>
		</tr>
		<tr>
			<td>Device</td>
			<td colspan="2">
        <p>Local: BMW X5, BMW S7</p>
    		<p>Remote (EURECOM): Remote BMW X5</p>
			</td>
		</tr>
	</tbody>
</table>

### 2.2 Application Servients

#### Application servient (basic scenarii): http://192.168.1.108/
-  Consume TD: http://192.168.1.108/discover
-  Run scenario 1-2-3: http://192.168.1.108/scenario1 (change last char)
#### SPARQL endpoint
- http://192.168.1.108/query

### 2.3 Device Servients

#### BMW X5 (simulated): http://192.168.1.122 (local) and http://18.195.11.116 (remote)
- TD: http://192.168.1.122/v2/north/wot/td
- example (gear position property) : http://192.168.1.122/v2/north/sensor/gearPosition
- example (turnon left headlight action) :  http://192.168.1.122/v2/north/actuator/left-headlight/turnon - payload:{"turnon":"true"}
#### BMW S7 (simulated): http://192.168.1.222 (/td /consumetd)
- TD: http://192.168.1.222/td
- consumed TD: http://192.168.1.222/consumetd
- example (speed property) : http://192.168.1.222/wot/bk/property/speed
- example (activate DSC action) : http://192.168.1.222/wot/bk/action/activate-ESC

# 3 Plugfest scenarios

## Automotive use cases:
- Check if door is open or a belt unbuckled while the vehicle is moving
- Activate the DSC if the temperature is below 0°C, desacitive it if it is above
- Define new destination coordinates for stopping when the fuel range or tire pressure are critical.

## Semantic queries
- in the application servient: /query opens a SPARL endpoint for querying a TD. You specify the URI of the TD and the query.

# 4 Implementation guidelines

## Properties:
- Read: HTTP GET over the href of the property
- Write: HTTP POST over the href of the property with {[value]} as payload

## Actions:
- S7: HTTP GET over the href of the Action
- X5: HTTP POST over the href of the Action with payload
