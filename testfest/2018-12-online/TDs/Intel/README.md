# Intel Thing Descriptions

![Lab Image](images/lab.jpg)

## Authentication

The following is linked to a post on a W3C email server and is therefore only available to W3C members:  
[Reverse proxy username/passwords](https://lists.w3.org/Archives/Member/member-wot-ig/2018May/0003.html)

## OCF Devices

### Cached TDs
- [All](OCF.json)

#### Node 0
- [Buzzer](OCF/buzzer0.jsonld)
- [Illuminance Sensor](OCF/illuminance0.jsonld)
- [Red LED](OCF/led0red.jsonld)
- [Green LED](OCF/led0green.jsonld)
- [Blue LED](OCF/led0blue.jsonld)
- [MOSFET LED](OCF/led0mosfet.jsonld)
- [Motion Sensor](OCF/motion0.jsonld)
- [Temperature Sensor](OCF/temperature0.jsonld)
- [Toggle Switch](OCF/toggle0.jsonld)

#### Node 1
- [Touch Button](OCF/button1touch.jsonld)
- [Red LED](OCF/led1red.jsonld)
- [MOSFET LED](OCF/led1mosfet.jsonld)
- [Relay](OCF/led1relay.jsonld)
- [Motion Sensor](OCF/motion1.jsonld)
- [RGB LED](OCF/rgbled1.jsonld)
- [Temperature Sensor](OCF/temperature1.jsonld)
- [Toggle Switch](OCF/toggle1.jsonld)

#### Node 2    
- [Touch Button](OCF/button2touch.jsonld)  
- [Illuminance Sensor](OCF/illuminance2.jsonld)
- [MOSFET LED](OCF/led2mosfet.jsonld)
- [Relay](OCF/led2relay.jsonld)
- [Motion Sensor](OCF/motion2.jsonld)
- [Top LED](OCF/led2top.jsonld)  
- [Side LED](OCF/led2side.jsonld)  
- [Temperature Sensor](OCF/temperature2.jsonld)
- [Toggle Switch](OCF/toggle2.jsonld)

### Live via Cloud Proxy
#### Via San Franscisco / Digital Ocean
##### Basic Auth
- [OCF Resources](https://portal.mmccool.net:8090/api/oic/res)
- [OCF Devices](https://portal.mmccool.net:8090/api/oic/d)
- [TDs](https://portal.mmccool.net:8094)
##### Digest Auth
- [OCF Resources](https://portal.mmccool.net:8091/api/oic/res)
- [OCF Devices](https://portal.mmccool.net:8091/api/oic/d)
- [TDs](https://portal.mmccool.net:8095)
#### Via Tokyo / AWS
##### Basic Auth
- [OCF Resources](https://tiktok.mmccool.org:8090/api/oic/res)
- [OCF Devices](https://tiktok.mmccool.org:8090/api/oic/d)
- [TDs](https://tiktok.mmccool.org:8094)
##### Digest Auth
- [OCF Resources](https://tiktok.mmccool.org:8091/api/oic/res)
- [OCF Devices](https://tiktok.mmccool.org:8091/api/oic/d)
- [TDs](https://tiktok.mmccool.org:8095)

## Simple Web Camera

### Cached TD
- [Simple Web Camera TD](SimpleWebCamera.jsonld)

### Live via Cloud Proxy
#### Via San Franscisco / Digital Ocean
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
#### Via Tokyo / AWS
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

### Live via Cloud Proxy
#### Via San Franscisco / Digital Ocean
##### Basic Auth
- [TD](https://portal.mmccool.net:8096/api)
- [Say (post string)](https://portal.mmccool.net:8096/api/say)
##### Digest Auth
- [TD](https://portal.mmccool.net:8097/api)
- [Say (post string)](https://portal.mmccool.net:8097/api/say)
#### Via Tokyo / AWS
##### Basic Auth
- [TD](https://tiktok.mmccool.org:8096/api)
- [Say (post string)](https://tiktok.mmccool.org:8096/api/say)
##### Digest Auth
- [TD](https://portal.mmccool.net:8097/api)
- [Say (post string)](https://tiktok.mmccool.org:8097/api/say)
