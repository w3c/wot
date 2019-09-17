# Preparation for unified demo scenario

## Applications and Devices available as of Sep. 15

Please add your applications and devices if it's available for the demo on Wednesday, Sep. 18.

### Applicaitons
* NodeRED by Fujitsu
* NodeRED by Panasonic
* NodeRED by Panasonic
* node-wot by NHK

### Devices
* Local devices in Fukuoka
  * Panasonic Cleaner
  * Panasonic LED
  * Panasonic Bulletin Board
  * Fujitsu Rotary Beacon
  * Fujitsu Buzzer
  * Mozilla LED (provided by Fujitsu)
  * [TUM SenseHAT](TDs/TUM/SenseHAT.json) - Sensors and LED matrix and button for events
  * [TUM Light sensor](TDs/TUM/lightSensor.json)
  * [TUM EnviroHAT](TDs/TUM/enviroPHAT.json) - Similar to SenseHAT but smaller
  * [TUM Camera](TDs/TUM/camera.json) - Small camera that can only take pictures
* Remote devices
  * Panasonic cleaner in Osaka
  * Panasonic LED in Osaka
  * Panasonic air conditioner in Osaka
  * ...
* Simulators
  * Oracle Fest Plant Simulator
  * Oracle Blue Pump Simulator
  * Oracle HVAC Simulator
  * [Virtual-Thing](https://www.npmjs.com/package/virtual-thing): Can be used to simulate any device based on a TD. Example included simulates a coffee machine.

## Demo Scenarios

- Test scenario 1: Smart house / Smart building
  - Scenario (draft)
    1. Passive IR sensor detect human (Fujitsu environment sensor)
    2. Turn on appliances
       - Turn on air conditioner (Panasonic air conditioner)
       - Turn on light (Philips hue light)
    3. Monitor power generation from solar panel (Oracle solar panel simulator)
       - Monitor power generation (Oracle solar panel simulator)
    4. When power generation below the lower limit, turn off unused appliances
       - Turn off other air conditioners (Fujitsu air conditioner, Oracle HVAC simulator)
       - Turn off other lights (Mozilla LED light)
    5. Check status
       - Monitor power consumption (Fujitsu smart meter)
  - Test phases
    - Phase 1: Simple communication test  
        - Fujitsu
          - Turn on/off air conditioner ... passed
          - Turn on/off led light ... passed
          - Read power cnsumption value from smart meter ... passed
          - Read PIR data from environment sensor ... passed
        - Panasonic
          - Turn on/off air conditioner ... passed
          - Turn on/off led light ... passed
        - Oracle
          - Read power power generation value from solar panel simulator ... not tested
          - Turn on/off HVAC simulator ... not tested
    - Phase 2: Run application (If prepared)
![scenario1][]
- Test scenario 2: Industrial integration
  - Scenario (draft)
    1. Monitor environment
       - Monitor temperature, humidity, etc. (Fujitsu environment sensor)
       - Display current temperature (Panasonic bulletin board)
    1. Detect turnover
       - Monitor Z axis acceralation (Fujitsu environment sensor)
    1. Turn on warning devices
       - Turn on beacon light and buzzer (Fujitsu beacon light, Fujitsu buzzer)
       - Change light color to red (Mozilla LED light)
    1. Control plant facilities
       - Turn off air conditioners (Panasonic air conditioner, Oracle HVAC simulator)
       - Turn off devices (Oracle blue pump simulator, Oracle fest plant simulator)
  - Test phases
    - Phase 1: Simple communication test  
        - Fujitsu
          - Turn on/off beacon light ... passed
          - Turn on/off buzzer ... passed
          - Turn on/off LED light ... passed
          - Change light color ... passed
          - Read sensor data from environment sensor ... passed
        - Panasonic
          - Turn on/off air conditioner ... passed
          - Turn on/off bulletin board ... passed
          - Set numer to bulletion board ... passed
        - Oracle
          - Turn on/off HVAC ... not tested
          - Turn on/off blue pump ... not tested
          - Open/Close valve on fest plant simulator ... not tested
          - Start/Stop pump on fest plant simulator ... not tested
    - Phase 2: Run application (If prepared)
![scenario2][]
- Test scenario 3: Home smart devices behave according to TV programs
  - Scenario (draft)
    1. Broadcaster sends Event Messages as triggers via broadcast wave
       - Laptop PC outputs broadcast wave using modulators
       - Event Messages describes triggers for smart devices behaviors such as TV programs information and requests for performances
    1. Hybridcast connect application receives Event Messages
       - This app receives triggers via Hybridcast proprietary protocol
       - Event Message ({})
    1. Turn on/off a robot cleaner
       - Turn off with Event Message ({room:quiet})
       - Turn on again with Event Message ({room:default})
    1. Control lights 
       - Turn lights on with Event Message ({room:bright})
       - Make lights blue with Event Message ({room:cool})
       - Make lights white color with Event Message ({room:cool})

[scenario1]:images/test_scenario_1.png
[scenario2]:images/test_scenario_2.png
