# Intel Thing Descriptions

![Lab Image](images/lab.jpg)

## Authentication

The following is linked to a post on a W3C email server and is therefore only available to W3C members:  
[Reverse proxy username/passwords](https://lists.w3.org/Archives/Member/member-wot-ig/2018May/0003.html)

## OCF Devices

### Cached TDs
- [All](OCF.json)
- [Touch Button, Node 1](OCF/button1touch.jsonld)
- [Buzzer, Node 0](OCF/buzzer0.jsonld)
- [Illuminance Sensor, Node 0](OCF/illuminance0.jsonld)
- [Blue LED, Node 0](OCF/led0blue.jsonld)
- [Green LED, Node 0](OCF/led0green.jsonld)
- [Red LED, Node 0](OCF/led0red.jsonld)
- [Red LED, Node 1](OCF/led1red.jsonld)
- [MOSFET LED, Node 0](OCF/led0mosfet.jsonld)
- [MOSFET LED, Node 1](OCF/led1mosfet.jsonld)
- [Relay LED, Node 1](OCF/led1relay.jsonld)
- [Motion Sensor, Node 0](OCF/motion0.jsonld)
- [Motion Sensor, Node 1](OCF/motion1.jsonld)
- [RGB LED, Node 1](OCF/rgbled1.jsonld)
- [Temperature Sensor, Node 0](OCF/temperature0.jsonld)
- [Temperature Sensor, Node 1](OCF/temperature1.jsonld)
- [Toggle Switch, Node 0](OCF/toggle0.jsonld)
- [Toggle Switch, Node 1](OCF/toggle1.jsonld)

### Live via HTTPS Proxy

## Simple Web Camera

### Cached TD
- [Simple Web Camera TD](SimpleWebCamera.jsonld)

### Live via HTTPS Proxy
#### Via San Franscisco
##### Basic Auth
- [TD](https://portal.mmccool.net:8098/api)
- [Brightness](https://portal.mmccool.net:8098/api/brightness)
- [Frame](https://portal.mmccool.net:8098/api/frame)
- [Frame (Observe via longpoll)](https://portal.mmccool.net:8098/api/frame/observe)
##### Digest Auth
- [TD](https://portal.mmccool.net:8099/api)
- [Brightness](https://portal.mmccool.net:8099/api/brightness)
- [Frame](https://portal.mmccool.net:8099/api/frame)
- [Frame (Observe via longpoll)](https://portal.mmccool.net:8099/api/frame/observe)
#### Via Tokyo
##### Basic Auth
- [TD](https://tiktok.mmccool.org:8098/api)
- [Brightness](https://tiktok.mmccool.org:8098/api/brightness)
- [Frame](https://tiktok.mmccool.org:8098/api/frame)
- [Frame (Observe via longpoll)](https://tiktok.mmccool.org:8098/api/frame/observe)
##### Digest Auth
- [TD](https://tiktok.mmccool.org:8099/api)
- [Brightness](https://tiktok.mmccool.org:8099/api/brightness)
- [Frame](https://tiktok.mmccool.org:8099/api/frame)
- [Frame (Observe via longpoll)](https://tiktok.mmccool.org:8099/api/frame/observe)

## Web Speak

### Cached TD
- [Web Speak TD](WebSpeak.jsonld)

### Live via HTTPS Proxy
#### Via San Franscisco
##### Basic Auth
- [TD](https://portal.mmccool.net:8096/api)
- [Say (post string)](https://portal.mmccool.net:8096/api/say)
##### Digest Auth
- [TD](https://portal.mmccool.net:8097/api)
- [Say (post string)](https://portal.mmccool.net:8097/api/say)
#### Via Tokyo
##### Basic Auth
- [TD](https://tiktok.mmccool.org:8096/api)
- [Say (post string)](https://tiktok.mmccool.org:8096/api/say)
##### Digest Auth
- [TD](https://portal.mmccool.net:8097/api)
- [Say (post string)](https://tiktok.mmccool.org:8097/api/say)
