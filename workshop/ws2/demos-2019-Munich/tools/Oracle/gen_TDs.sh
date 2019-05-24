#!/bin/sh
node dm2td.js ../../TDs/Oracle/DMs/Blue_Pump.json iotpoc8.oracleiotcloud.com 0-AB EB41FEA2-EEEB-4E30-81BB-AFEB08A3830C > ../../TDs/Oracle/Blue_Pump_Shared.jsonld
node dm2td.js ../../TDs/Oracle/DMs/HVAC_device_model.json iotpoc8.oracleiotcloud.com 0-AB 6FE5A77F-BB2B-4F88-AD82-B76C8C017C39 > ../../TDs/Oracle/HVAC_Shared.jsonld
