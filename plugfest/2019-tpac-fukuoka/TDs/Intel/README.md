# Intel - Fukuoka 2019 TPAC Plugfest

Two services are provided:
* A Simple Web Camera
* A Simple Speech interface

### Authentication
These services support end-to-end security
via a proxy.  Use the credentials, linked below, for "wotbasicproxy" or "wodigestproxy" based on whether you are using
basic or digest authentication.   Both services use the same credentials.

**WARNING: Digest auth is broken at the moment.  Basic should work.**

* [Proxy Authentication Credentials](https://lists.w3.org/Archives/Member/member-wot-ig/2018May/0003.html)

W3C WoT membership required to access these credentials.
Please do not repost them in a public forum
(for example,
do not check the keys into a public github repo as part of a test suite,
post on a forum,
share in a public messaging system, etc).
These will be updated peroidically so if an access does not work,
check that you have the latest version.

### Simple Web Camera
Example image is given below.
Note that this does not auto-update;
that is in progress,
but it needs client-side script support
(eg to follow the frame "observe" interaction)
so will have to be implemented in HTML.

![Example image from camera 0](intel_light_observe.jpeg)

Summary of network API (see TDs for details):
* `/api` - get Thing Description
    * `/frame` - get last frame captured
        - `/observe` get next frame captured when ready (long polling)
    * `/exposure` - get/set manual exposure
        - `/observe` - observe changes in (manual) exposure (long polling)
    * `/crop` - get cropped version of last frame captured
        - an action using POST
        - JSON parameters in body
    * `/region` - get cropped version of last frame captured
        - an action using POST
        - query parameters in request URL
    
**WARNING: in theory writing to properties like "brightness" is supported and
should update the corresponding V4L parameters in the camera.
In practice it tends to crash the camera driver, so...
it's better to treat these as read-only.  I will update the TDs corresspondingly soon.
Sorry.**

#### HTTP and Nosec 
* Local Access (must be on same LAN, uses mDNS):
    [TD](http://plus2.local:9190/api) 
          
#### HTTPS and Basic Auth
* Digital Ocean Portal (California):
    [TD](https://portal.mmccool.net:8098/api) 
* AWS Portal (Tokyo):
    [TD](https://tiktok.mmccool.org:8098/api) 

#### HTTPS and Digest Auth
* Digital Ocean Portal (California):
    [TD](https://portal.mmccool.net:8099/api) 
* AWS Portal (Tokyo):
    [TD](https://tiktok.mmccool.org:8099/api) 
       
### Web Speak
Speech synthesizer service.

Summary of network API: 
* POST a quoted string to /api/say and it will speak it.
* For example, to say "this is a test" using Basic Auth via the AWS Portal, use the following (replace "password" with the actual password):

```
curl -X POST -H "Content-Type: application/json" -d '"this is a test"' -u "wotbasicproxy:password" https://tiktok.mmccool.org:8096/api/say

```
#### HTTP and Nosec 
* Local Access (must be on same LAN, uses mDNS):
    [TD](http://plus2.local:8085/api) 
          
#### HTTPS and Basic Auth
* Digital Ocean Portal (California):
    [TD](https://portal.mmccool.net:8096/api) 
* AWS Portal (Tokyo):
    [TD](https://tiktok.mmccool.org:8096/api) 

#### HTTPS and Digest Auth
* Digital Ocean Portal (California):
    [TD](https://portal.mmccool.net:8097/api) 
* AWS Portal (Tokyo):
    [TD](https://tiktok.mmccool.org:8097/api) 
