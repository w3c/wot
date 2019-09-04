#!/bin/sh

# Fujitsu
node td2dm.js ../../TDs/Fujitsu/cloud/Fujitsu-WiFiSensor-3C71BF428EF8.json > ../../TDs/Oracle/DMs/Fujitsu/Fujitsu-WiFiSensor-F8.json
node td2dm.js ../../TDs/Fujitsu/cloud/Fujitsu-RotarybeaconLight.json > ../../TDs/Oracle/DMs/Fujitsu/Fujitsu-RotarybeaconLight.json
node td2dm.js ../../TDs/Fujitsu/cloud/Fujitsu-BlindClose.json > ../../TDs/Oracle/DMs/Fujitsu/Fujitsu-BlindClose.json 
node td2dm.js ../../TDs/Fujitsu/cloud/Fujitsu-BlindOpen.json > ../../TDs/Oracle/DMs/Fujitsu/Fujitsu-BlindOpen.json

# EcoG
node td2dm.js ../../TDs/EcoG/EcoG-outlet-1.json > ../../TDs/Oracle/DMs/EcoG/EcoG-outlet-1.json
node td2dm.js ../../TDs/EcoG/EcoG-outlet-1-online.jsonld > ../../TDs/Oracle/DMs/EcoG/EcoG-outlet-1-online.json

# Panasonic
node td2dm.js ../../TDs/Panasonic/PanaSimAirConditioner5.jsonld > ../../TDs/Oracle/DMs/Panasonic/PanaSimAirConditioner5.json
node td2dm.js ../../TDs/Panasonic/PanaSimCleaner5.jsonld > ../../TDs/Oracle/DMs/Panasonic/PanaSimCleaner5.json
node td2dm.js ../../TDs/Panasonic/PanaSimRoomLight5.jsonld > ../../TDs/Oracle/DMs/Panasonic/PanaSimRoomLight5.json
node td2dm.js ../../TDs/Panasonic/electricBulletinBoard_p3.jsonld > ../../TDs/Oracle/DMs/Panasonic/electricBulletinBoard_p3.json
node td2dm.js ../../TDs/Panasonic/airConditioner_p1.jsonld > ../../TDs/Oracle/DMs/Panasonic/airConditioner_p1.json
node td2dm.js ../../TDs/Panasonic/huegroup_p1.jsonld > ../../TDs/Oracle/DMs/Panasonic/huegroup_p1.json
node td2dm.js ../../TDs/Panasonic/electricBulletinBoard_p1.jsonld > ../../TDs/Oracle/DMs/Panasonic/electricBulletinBoard_p1.json
node td2dm.js ../../TDs/Panasonic/cleaner_p1.jsonld > ../../TDs/Oracle/DMs/Panasonic/cleaner_p1.json
node td2dm.js ../../TDs/Panasonic/PanaSimHueGroup5.jsonld > ../../TDs/Oracle/DMs/Panasonic/PanaSimHueGroup5.json
node td2dm.js ../../TDs/Panasonic/electricBulletinBoard_p2.jsonld > ../../TDs/Oracle/DMs/Panasonic/electricBulletinBoard_p2.json