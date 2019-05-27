#!/bin/sh
node dm2td.js ../../TDs/Oracle/DMs/Blue_Pump.json iotpoc8.oracleiotcloud.com 0-AB EB41FEA2-EEEB-4E30-81BB-AFEB08A3830C > ../../TDs/Oracle/Blue_Pump_Shared.jsonld
node dm2td.js ../../TDs/Oracle/DMs/HVAC_device_model.json iotpoc8.oracleiotcloud.com 0-AB 6FE5A77F-BB2B-4F88-AD82-B76C8C017C39 > ../../TDs/Oracle/HVAC_Shared.jsonld
node dm2td.js ../../TDs/Oracle/DMs/ora_obd2_device_model.json iotpoc8.oracleiotcloud.com 0-AB 66CD324A-08F2-45A6-809E-F0A626C31D96 > ../../TDs/Oracle/Truck_Shared.jsonld
node dm2td.js ../../TDs/Oracle/DMs/Blue_Pump.json iotpoc8.oracleiotcloud.com 0-AB 03627042-E63B-46F5-BAE7-1758B11B9277 > ../../TDs/Oracle/Blue_Pump_Hitachi.jsonld
node dm2td.js ../../TDs/Oracle/DMs/Blue_Pump.json iotpoc8.oracleiotcloud.com 0-AB 021F23EB-AFE7-4FCF-8F0D-E636188DFD8A > ../../TDs/Oracle/Blue_Pump_Intel.jsonld
node dm2td.js ../../TDs/Oracle/DMs/Blue_Pump.json iotpoc8.oracleiotcloud.com 0-AB 2DF3086C-4FC4-4D32-976F-149A56932E1A > ../../TDs/Oracle/Blue_Pump_Panasonic.jsonld
node dm2td.js ../../TDs/Oracle/DMs/Blue_Pump.json iotpoc8.oracleiotcloud.com 0-AB 061254FA-9FFD-4DD3-B58A-E3977808C134 > ../../TDs/Oracle/Blue_Pump_Siemens.jsonld
node dm2td.js ../../TDs/Oracle/DMs/Blue_Pump.json iotpoc8.oracleiotcloud.com 0-AB 5A1289B3-413B-41C3-8CDA-AF74AD7E67F4 > ../../TDs/Oracle/Blue_Pump_SmartThings.jsonld
node dm2td.js ../../TDs/Oracle/DMs/Festo.json iotpoc8.oracleiotcloud.com 0-AB AE69159D-BED2-4931-BB2D-115865CD1F02 > ../../TDs/Oracle/Festo_Shared.jsonld
node dm2td.js ../../TDs/Oracle/DMs/Connected_Car.json iotpoc8.oracleiotcloud.com 0-AB 4F5D26A4-FDF8-4D6F-83BA-0CB6989A076A > ../../TDs/Oracle/Connected_Car_Shared.jsonld
