#!/bin/sh

# Blue Pump
node dm2td.js ../../TDs/Oracle/DMs/Blue_Pump.json w3ctest.iadstg.iot.ocs.oraclecloud.com 0-AB 8FBD4503-41FC-422F-90E1-3BE3D1F2D13A > ../../TDs/Oracle/Blue_Pump_Shared.jsonld
node dm2td.js ../../TDs/Oracle/DMs/Blue_Pump.json w3ctest.iadstg.iot.ocs.oraclecloud.com 0-AB F68452F4-E498-4A15-BB14-E0DB0E0539DB > ../../TDs/Oracle/Blue_Pump_Hitachi.jsonld
node dm2td.js ../../TDs/Oracle/DMs/Blue_Pump.json w3ctest.iadstg.iot.ocs.oraclecloud.com 0-AB 253DFFA2-2CC1-4DF9-B6F5-D294E65DE80D > ../../TDs/Oracle/Blue_Pump_Intel.jsonld
node dm2td.js ../../TDs/Oracle/DMs/Blue_Pump.json w3ctest.iadstg.iot.ocs.oraclecloud.com 0-AB F4DB4FC9-5AD8-4CB1-AD11-CB7D64ABCDAC > ../../TDs/Oracle/Blue_Pump_Panasonic.jsonld
node dm2td.js ../../TDs/Oracle/DMs/Blue_Pump.json w3ctest.iadstg.iot.ocs.oraclecloud.com 0-AB 7401D4E1-F2AB-4DAD-BD4B-F643A6C224C0 > ../../TDs/Oracle/Blue_Pump_Siemens.jsonld
node dm2td.js ../../TDs/Oracle/DMs/Blue_Pump.json w3ctest.iadstg.iot.ocs.oraclecloud.com 0-AB EDE4CED7-11FC-4B4B-97D7-47F35F243FAF > ../../TDs/Oracle/Blue_Pump_SmartThings.jsonld
node dm2td.js ../../TDs/Oracle/DMs/Blue_Pump.json w3ctest.iadstg.iot.ocs.oraclecloud.com 0-AB BEA30827-9904-4B9E-8FD6-9EEDB3EF9798 > ../../TDs/Oracle/Blue_Pump_TUM.jsonld
node dm2td.js ../../TDs/Oracle/DMs/Blue_Pump.json w3ctest.iadstg.iot.ocs.oraclecloud.com 0-AB 5441468D-32E5-480F-8C57-0400E89E1ACA > ../../TDs/Oracle/Blue_Pump_NHK.jsonld

# HVAC
node dm2td.js ../../TDs/Oracle/DMs/HVAC_device_model.json w3ctest.iadstg.iot.ocs.oraclecloud.com 0-AB 58F17EE5-5C40-4C6A-B4AF-9AAB5F06912D > ../../TDs/Oracle/HVAC_Shared.jsonld
node dm2td.js ../../TDs/Oracle/DMs/HVAC_device_model.json w3ctest.iadstg.iot.ocs.oraclecloud.com 0-AB 54326C2A-FDEC-4E97-9A58-7C93F67F6FD8 > ../../TDs/Oracle/HVAC_Fujitsu.jsonld
node dm2td.js ../../TDs/Oracle/DMs/HVAC_device_model.json w3ctest.iadstg.iot.ocs.oraclecloud.com 0-AB 8BACD1DE-532A-472B-803C-6EB578B253DC > ../../TDs/Oracle/HVAC_Hitachi.jsonld
node dm2td.js ../../TDs/Oracle/DMs/HVAC_device_model.json w3ctest.iadstg.iot.ocs.oraclecloud.com 0-AB 93787CA0-3659-4900-8C91-DD91802F3432 > ../../TDs/Oracle/HVAC_NHK.jsonld
node dm2td.js ../../TDs/Oracle/DMs/HVAC_device_model.json w3ctest.iadstg.iot.ocs.oraclecloud.com 0-AB CF74D0E8-00C1-4FC5-BD53-DA552AD092C0 > ../../TDs/Oracle/HVAC_Panasonic.jsonld
node dm2td.js ../../TDs/Oracle/DMs/HVAC_device_model.json w3ctest.iadstg.iot.ocs.oraclecloud.com 0-AB F16D2510-986D-4FEB-98C7-61DDE365C0DC > ../../TDs/Oracle/HVAC_Siemens.jsonld
node dm2td.js ../../TDs/Oracle/DMs/HVAC_device_model.json w3ctest.iadstg.iot.ocs.oraclecloud.com 0-AB 0AC5DCBF-B088-494E-9784-2F494E9D0709 > ../../TDs/Oracle/HVAC_TUM.jsonld

# Truck
node dm2td.js ../../TDs/Oracle/DMs/ora_obd2_device_model.json w3ctest.iadstg.iot.ocs.oraclecloud.com 0-AB 8ED184E2-DB25-4514-B75F-9AA930E12995 > ../../TDs/Oracle/Truck_Shared.jsonld

# Festo
node dm2td.js ../../TDs/Oracle/DMs/Festo.json w3ctest.iadstg.iot.ocs.oraclecloud.com 0-AB 	AA8E546A-ABDD-46B2-A603-78DB28800B87 > ../../TDs/Oracle/Festo_Shared.jsonld
node dm2td.js ../../TDs/Oracle/DMs/Festo.json w3ctest.iadstg.iot.ocs.oraclecloud.com 0-AB 	D142D836-64FF-4A3C-B256-38D10BEB0D70 > ../../TDs/Oracle/Festo_Fujitsu.jsonld
node dm2td.js ../../TDs/Oracle/DMs/Festo.json w3ctest.iadstg.iot.ocs.oraclecloud.com 0-AB 	C7B82A81-F268-44FB-8044-65C5D0BAC63E > ../../TDs/Oracle/Festo_Hitachi.jsonld
node dm2td.js ../../TDs/Oracle/DMs/Festo.json w3ctest.iadstg.iot.ocs.oraclecloud.com 0-AB 	B95C2F32-137F-4FC8-A9AA-68ABAD2382F3 > ../../TDs/Oracle/Festo_NHK.jsonld
node dm2td.js ../../TDs/Oracle/DMs/Festo.json w3ctest.iadstg.iot.ocs.oraclecloud.com 0-AB 	1450E352-D1F1-4471-89A0-1E0C83EC6AB4 > ../../TDs/Oracle/Festo_Panasonic.jsonld
node dm2td.js ../../TDs/Oracle/DMs/Festo.json w3ctest.iadstg.iot.ocs.oraclecloud.com 0-AB 	A3231F84-5CE2-42CF-A039-BC93D59B2A4A > ../../TDs/Oracle/Festo_Siemens.jsonld
node dm2td.js ../../TDs/Oracle/DMs/Festo.json w3ctest.iadstg.iot.ocs.oraclecloud.com 0-AB 	C5CAB861-F2CE-4E4A-8D5B-F7996B2E2FFB > ../../TDs/Oracle/Festo_TUM.jsonld

# Connected Car
node dm2td.js ../../TDs/Oracle/DMs/Connected_Car.json w3ctest.iadstg.iot.ocs.oraclecloud.com 0-AB F846B3B1-1154-4721-8790-1586DC802366 > ../../TDs/Oracle/Connected_Car_Shared.jsonld

# Solar Panel
node dm2td.js ../../TDs/Oracle/DMs/SolarPanel.json w3ctest.iadstg.iot.ocs.oraclecloud.com 0-AB 	113972C0-6CFC-4FBD-A586-87E7FFD385F1 > ../../TDs/Oracle/SolarPanel_Fujitsu.jsonld
