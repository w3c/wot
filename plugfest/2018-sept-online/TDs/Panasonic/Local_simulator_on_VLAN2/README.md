## Local simulator on VLAN2

- You can use Local simulator on VLAN2 just like Online simulator.
- Local simulator is [here](http://10.8.2.5) (Access restricted to VLAN2 only).
- TDs include ip address.

### Important Notice

* Please close simulator UI window while not in use, so that others can use the simulator instance.
* Please don't access to WoT interface which you are not currently in use (note that path and port number described in TD).
* Please do not share id, password and access token with somebody outside of your company.

### Usage

* Open the [Local simulator](http://10.8.2.5) (Access restricted to VLAN2 only).
* GET TD from upper right JSON-LD icon.
* Choose menu from upper left hamburger icon.
    * Select device to simulate.
    * Sound on / off.
* Access to WoT interface of the device according to corresponding TD:
    * Supported interactions (depends each device)
        * Read and write (if writable) property
        * Invoke action
        * Subscribe to property (if observable) and event
    * Please add following HTTP header upon request:
    `Authorization: Bearer <access_token>`
* Operate simulated device directly from upper right grid icon:
    * modify properties (if writable)
        * If the property is also observable, it will emit notification (to receive the notification, client needs to subscribe the observe property beforehands).
    * Emit event notification (to receive the notification, client needs to subscribe the event beforehands).

### Limitation

* Only HTTP(S) is supported for basic interaction (no CoAP support).
* Currently, only HTTP long polling is supported for notification (oberve property and event).
* Currently, only **myRoomLight** has sound.
* Only Chrome is supported.

### Copyright

* 2018 Panasonic Corporation
