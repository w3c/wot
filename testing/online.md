# Online Things

## Intel

### Simple Web Camera

#### Camera 0

Network API is as follows:
* `/api` - get Thing Description
    * `/frame` - get last frame captured
        - `/observe` get next frame captured when ready (long polling)
    * `/exposure` - get/set manual exposure
        - `/observe` - observe changes in (manual) exposure (long polling)
    * `/crop` - get cropped version of last frame captured (an action using POST)
          
##### HTTPS and Basic Auth
* California Portal
    * [TD](https://portal.mmccool.net:28443/api)
    * [frame](https://portal.mmccool.net:28443/api/frame)
          [(observe)](https://portal.mmccool.net:28443/api/frame/observe)
    * [exposure](https://portal.mmccool.net:28443/api/exposure)
          [(observe)](https://portal.mmccool.net:28443/api/exposure/observe)
    * [crop](https://portal.mmccool.net:28443/api/crop)
* Japan Portal
    * [TD](https://tiktok.mmccool.org:28443/api)
    * [frame](https://tiktok.mmccool.org:28443/api/frame)
          [(observe)](https://tiktok.mmccool.org:28443/api/frame/observe)
    * [exposure](https://tiktok.mmccool.org:28443/api/exposure)
          [(observe)](https://tiktok.mmccool.org:28443/api/exposure/observe)
    * [crop](https://tiktok.mmccool.org:28443/api/crop)

##### HTTPS and Digest Auth
* California Portal
    * [TD](https://portal.mmccool.net:28444/api)
    * [frame](https://portal.mmccool.net:28444/api/frame)
           [(observe)](https://portal.mmccool.net:28444/api/frame/observe)
    * [exposure](https://portal.mmccool.net:28444/api/exposure)
           [(observe)](https://portal.mmccool.net:28444/api/exposure/observe)
    * [crop](https://portal.mmccool.net:28444/api/crop)
* Japan Portal
    * [TD](https://tiktok.mmccool.org:28444/api)
    * [frame](https://tiktok.mmccool.org:28444/api/frame)
           [(observe)](https://tiktok.mmccool.org:28444/api/frame/observe)
    * [exposure](https://tiktok.mmccool.org:28444/api/exposure)
           [(observe)](https://tiktok.mmccool.org:28444/api/exposure/observe)
    * [crop](https://tiktok.mmccool.org:28444/api/crop)

