# Intel Thing Descriptions

![Lab Image](images/lab.jpg)

## Authentication

The following is linked to a post on a W3C email server and is therefore only available to W3C members:  
[Reverse proxy username/passwords](https://lists.w3.org/Archives/Member/member-wot-ig/2018May/0003.html)

## OCF Devices

#### Node 0
- [Buzzer](../../inputs/Intel/intel-ocf/buzzer0.jsonld)
- [Illuminance Sensor](../../inputs/Intel/intel-ocf/illuminance0.jsonld)
- [Red LED](../../inputs/Intel/intel-ocf/led0red.jsonld)
- [Green LED](../../inputs/Intel/intel-ocf/led0green.jsonld)
- [Blue LED](../../inputs/Intel/intel-ocf/led0blue.jsonld)
- [MOSFET LED](../../inputs/Intel/intel-ocf/led0mosfet.jsonld)
- [Motion Sensor](../../inputs/Intel/intel-ocf/motion0.jsonld)
- [Temperature Sensor](../../inputs/Intel/intel-ocf/temperature0.jsonld)
- [Toggle Switch](../../inputs/Intel/intel-ocf/toggle0.jsonld)

#### Node 1
- [Touch Button](../../inputs/Intel/intel-ocf/button1touch.jsonld)
- [Red LED](../../inputs/Intel/intel-ocf/led1red.jsonld)
- [MOSFET LED](../../inputs/Intel/intel-ocf/led1mosfet.jsonld)
- [Relay](../../inputs/Intel/intel-ocf/led1relay.jsonld)
- [Motion Sensor](../../inputs/Intel/intel-ocf/motion1.jsonld)
- [RGB LED](../../inputs/Intel/intel-ocf/rgbled1.jsonld)
- [Temperature Sensor](../../inputs/Intel/intel-ocf/temperature1.jsonld)
- [Toggle Switch](../../inputs/Intel/intel-ocf/toggle1.jsonld)

#### Node 2    
- [Touch Button](../../inputs/Intel/intel-ocf/button2touch.jsonld)  
- [Illuminance Sensor](../../inputs/Intel/intel-ocf/illuminance2.jsonld)
- [MOSFET LED](../../inputs/Intel/intel-ocf/led2mosfet.jsonld)
- [Relay](../../inputs/Intel/intel-ocf/led2relay.jsonld)
- [Motion Sensor](../../inputs/Intel/intel-ocf/motion2.jsonld)
- [Top LED](../../inputs/Intel/intel-ocf/led2top.jsonld)  
- [Side LED](../../inputs/Intel/intel-ocf/led2side.jsonld)  
- [Temperature Sensor](../../inputs/Intel/intel-ocf/temperature2.jsonld)
- [Toggle Switch](../../inputs/Intel/intel-ocf/toggle2.jsonld)

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
- [Simple Web Camera TD](../../inputs/Intel/intel-camera.jsonld)

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
- [Web Speak TD](../../inputs/Intel/intel-speak.jsonld)

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
