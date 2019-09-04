### Preparation for online-plugfest

#### Scenarios

- Test scenario 1: Smart house / Smart building
  - Scenario (draft)
    1. Passive IR sensor detect human (Fujitsu environment sensor)
    1. Turn on appliances
       - Turn on air conditioner (Panasonic air conditioner)
       - Turn on light (Philips hue light)
       - Take photo of the detected human (Intel web camera)
       - (Turn on other appliances?)
    1. Monitor power generation from solar panel (Oracle solar panel simulator)
    1. When power generation below the lower limit, turn off unused appliances
       - Turn off other air conditioners (Fujitsu air conditioner, Oracle HVAC simulator)
       - Turn off other lights (Mozilla LED light, TUM sense HAT)
       - Announce alert message (Intel web speak)
       - (Turn off other appliances?)
    1. Check status
       - Check power consumption (Fujitsu smart meter)
       - Check illuminance near the light (TUM light sensor)
  - Test phases
    - Phase 1: Simple communication test  
      Check deivces one by one from application layer.
    - Phase 2: Run application (If prepared)
![scenario1][]
- Test scenario 2: Industrial integration
  - Scenario (draft)
    1. Monitor environment
       - Monitor temperature, humidity, etc. (Fujitsu environment sensor, Fujitsu wearable sensor)
       - Monitor illuminance (TUM light sensor)
       - Display current temperature (Panasonic bulletin board)
    1. Cloud service discovers anomaly, critical condition (Oracle IoT cloud service?)
    1. Turn on warning devices
       - Turn on beacon light and buzzer (Fujitsu beacon light, Fujitsu buzzer)
       - Change light color to red (Mozilla LED light, TUM sense HAT?)
       - Announce alert message (Intel web speak)
    1. Control plant facilities
       - Turn off air conditioners (Panasonic air conditioner, Oracle HVAC simulator)
       - Turn off devices (Oracle blue pump simulator, Oracle fest plant simulator)
    1. (Other actions?)
  - Test phases
    - Phase 1: Simple communication test  
      Check deivces one by one from application layer.
    - Phase 2: Run application (If prepared)
![scenario2][]

[scenario1]:images/test_scenario_1.png
[scenario2]:images/test_scenario_2.png

#### Logistics
- vpn server
  - DHCP? / Fixed IP?
  - Can mDNS work over VPN?

#### Participants
Intel, Fujitsu, TUM, Siemens, Oracle, Hitachi

#### Date
Spet 10th, 9am-11am CDT, 4pm-6pm JST (+1 hour?)

#### Logistics

* WebEx and IRC

We will use the https://www.w3.org/WoT/IG/wiki/PlugFest_WebConf WebEx and IRC.

* Google Hangout (Matthias)
   - Used to video stream remote devices such as Festo Live or Panasonic Lab
   - https://hangouts.google.com/call/zMIBFnSSTxd4KpiLcP5DAAEI



