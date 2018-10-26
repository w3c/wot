## TD Report Saturday final

Report on invalid TDs

This report contains all the invalid TDs that have been posted to Github.

Most of the TDs here have:
1. camel case for the op key in forms, so observerProperty instead of observeproperty
2. subprotocol has LongPoll instead of longpoll. This a very recent update and the TDs should be updated accordingly.

Some TDs are not even valid JSON documents so please use a JSON editor while writing and editing the TDs.

Below are the output of the playground for each **invalid** TD. Under each "complicated" output there is a manually written analyzed error.

**Summary:** 24/38 of Plugfest TDs are valid, about 1/3 is not valid

**Details:**

1 / 72 TD: airConditioner_p1.jsonld
airConditioner_p1.jsonld was supposed to be valid but gave error
OUTPUT:  Taking TD found at ./WebContent/Examples/Lyon/Valid/airConditioner_p1.jsonld for validation JSON validation... OK Taking Schema found at ./WebContent/td-schema-lyon.json Taking Schema Draft found at ./WebContent/json-schema-draft-06.json X JSON Schema validation... KO: > data.properties['operationStatus'].forms[1].op should be equal to one of the allowed values, data.properties['operationStatus'].forms[1].op should be array, data.properties['operationStatus'].forms[1].op should match exactly one schema in oneOf JSON-LD validation... OK

**Error**: op should have small letters (no camelCase)

5 / 72 TD: Blue_Pump_Panasonic.jsonld
X JSON validation... KO:
> Unexpected token
 in JSON at position 43
/home/eko/git/thingweb-playground/Scripts/playground.js:38
        throw err;
        ^
SyntaxError: Unexpected token
 in JSON at position 43
    at JSON.parse (<anonymous>)
    at fs.readFile (/home/eko/git/thingweb-playground/Scripts/playground.js:33:27)
    at FSReqWrap.readFileAfterClose [as oncomplete] (internal/fs/read_file_context.js:53:3)
Blue_Pump_Panasonic.jsonld has some weird error
OUTPUT:  Taking TD found at ./WebContent/Examples/Lyon/Valid/Blue_Pump_Panasonic.jsonld for validation

**Error**: not a JSON document

6 / 72 TD: Blue_Pump_Siemens.jsonld
X JSON validation... KO:
> Unexpected token
 in JSON at position 43
/home/eko/git/thingweb-playground/Scripts/playground.js:38
        throw err;
        ^
SyntaxError: Unexpected token
 in JSON at position 43
    at JSON.parse (<anonymous>)
    at fs.readFile (/home/eko/git/thingweb-playground/Scripts/playground.js:33:27)
    at FSReqWrap.readFileAfterClose [as oncomplete] (internal/fs/read_file_context.js:53:3)
Blue_Pump_Siemens.jsonld has some weird error
OUTPUT:  Taking TD found at ./WebContent/Examples/Lyon/Valid/Blue_Pump_Siemens.jsonld for validation

**Error**: not a JSON document

18 / 72 TD: huegroup_p1.jsonld
huegroup_p1.jsonld was supposed to be valid but gave error
OUTPUT:  Taking TD found at ./WebContent/Examples/Lyon/Valid/huegroup_p1.jsonld for validation JSON validation... OK Taking Schema found at ./WebContent/td-schema-lyon.json Taking Schema Draft found at ./WebContent/json-schema-draft-06.json X JSON Schema validation... KO: > data.properties['operationStatus'].forms[1].op should be equal to one of the allowed values, data.properties['operationStatus'].forms[1].op should be array,data.properties['operationStatus'].forms[1].op should match exactly one schema in oneOf JSON-LD validation... OK

**Error**: op should have small letters (no camelCase)

23 / 72 TD: keti-iot-sensor.jsonld
X JSON validation... KO:
> Unexpected token / in JSON at position 0
/home/eko/git/thingweb-playground/Scripts/playground.js:38
        throw err;
        ^
SyntaxError: Unexpected token / in JSON at position 0
    at JSON.parse (<anonymous>)
    at fs.readFile (/home/eko/git/thingweb-playground/Scripts/playground.js:33:27)
    at FSReqWrap.readFileAfterClose [as oncomplete] (internal/fs/read_file_context.js:53:3)
keti-iot-sensor.jsonld has some weird error
OUTPUT:  Taking TD found at ./WebContent/Examples/Lyon/Valid/keti-iot-sensor.jsonld for validation

**Error**: not a JSON document

28 / 72 TD: OCF.json
OCF.json was supposed to be valid but gave error
OUTPUT:  Taking TD found at ./WebContent/Examples/Lyon/Valid/OCF.json for validation JSON validation... OK Taking Schema found at ./WebContent/td-schema-lyon.json Taking Schema Draft found at ./WebContent/json-schema-draft-06.json X JSON Schema validation... KO: > data should be object JSON-LD validation... OK

**Error**: This is an array of TDs, please separate

29 / 72 TD: PanaSimAirConditioner1.jsonld
PanaSimAirConditioner1.jsonld was supposed to be valid but gave error
OUTPUT:  Taking TD found at ./WebContent/Examples/Lyon/Valid/PanaSimAirConditioner1.jsonld for validation JSON validation... OK Taking Schema found at ./WebContent/td-schema-lyon.json Taking Schema Draft found at ./WebContent/json-schema-draft-06.json X JSON Schema validation... KO: > data.properties['power'].forms[1].op should be equal to one of the allowed values, data.properties['power'].forms[1].op should be array, data.properties['power'].forms[1].op should match exactly one schema in oneOf JSON-LD validation... OK

**Error**: op should have small letters (no camelCase)

30 / 72 TD: PanaSimAirConditionerX.jsonld
PanaSimAirConditionerX.jsonld was supposed to be valid but gave error
OUTPUT:  Taking TD found at ./WebContent/Examples/Lyon/Valid/PanaSimAirConditionerX.jsonld for validation JSON validation... OK Taking Schema found at ./WebContent/td-schema-lyon.json Taking Schema Draft found at ./WebContent/json-schema-draft-06.json X JSON Schema validation... KO: > data.properties['power'].forms[1].op should be equal to one of the allowed values, data.properties['power'].forms[1].op should be array, data.properties['power'].forms[1].op should match exactly one schema in oneOf JSON-LD validation... OK

**Error**: op should have small letters (no camelCase)

34 / 72 TD: PanaSimHueGroup1.jsonld
PanaSimHueGroup1.jsonld was supposed to be valid but gave error
OUTPUT:  Taking TD found at ./WebContent/Examples/Lyon/Valid/PanaSimHueGroup1.jsonld for validation JSON validation... OK Taking Schema found at ./WebContent/td-schema-lyon.json Taking Schema Draft found at ./WebContent/json-schema-draft-06.json X JSON Schema validation... KO: > data.properties['power'].forms[1].op should be equal to one of the allowed values, data.properties['power'].forms[1].op should be array, data.properties['power'].forms[1].op should match exactly one schema in oneOf JSON-LD validation... OK

**Error**: op should have small letters (no camelCase)

35 / 72 TD: PanaSimHueGroupX.jsonld
PanaSimHueGroupX.jsonld was supposed to be valid but gave error
OUTPUT:  Taking TD found at ./WebContent/Examples/Lyon/Valid/PanaSimHueGroupX.jsonld for validation JSON validation... OK Taking Schema found at ./WebContent/td-schema-lyon.json Taking Schema Draft found at ./WebContent/json-schema-draft-06.json X JSON Schema validation... KO: > data.properties['power'].forms[1].op should be equal to one of the allowed values, data.properties['power'].forms[1].op should be array, data.properties['power'].forms[1].op should match exactly one schema in oneOf JSON-LD validation... OK

**Error**: op should have small letters (no camelCase)

36 / 72 TD: PanaSimRoomLight1.jsonld
PanaSimRoomLight1.jsonld was supposed to be valid but gave error
OUTPUT:  Taking TD found at ./WebContent/Examples/Lyon/Valid/PanaSimRoomLight1.jsonld for validation JSON validation... OK Taking Schema found at ./WebContent/td-schema-lyon.json Taking Schema Draft found at ./WebContent/json-schema-draft-06.json X JSON Schema validation... KO: > data.properties['power'].forms[1].op should be equal to one of the allowed values, data.properties['power'].forms[1].op should be array, data.properties['power'].forms[1].op should match exactly one schema in oneOf JSON-LD validation... OK

**Error**: op should have small letters (no camelCase)

37 / 72 TD: PanaSimRoomLightX.jsonld
PanaSimRoomLightX.jsonld was supposed to be valid but gave error
OUTPUT:  Taking TD found at ./WebContent/Examples/Lyon/Valid/PanaSimRoomLightX.jsonld for validation JSON validation... OK Taking Schema found at ./WebContent/td-schema-lyon.json Taking Schema Draft found at ./WebContent/json-schema-draft-06.json X JSON Schema validation... KO: > data.properties['power'].forms[1].op should be equal to one of the allowed values, data.properties['power'].forms[1].op should be array, data.properties['power'].forms[1].op should match exactly one schema in oneOf JSON-LD validation... OK

**Error**: op should have small letters (no camelCase)

42 / 72 TD: td-light-local.json
td-light-local.json was supposed to be valid but gave error
OUTPUT:  Taking TD found at ./WebContent/Examples/Lyon/Valid/td-light-local.json for validation JSON validation... OK Taking Schema found at ./WebContent/td-schema-lyon.json Taking Schema Draft found at ./WebContent/json-schema-draft-06.json X JSON Schema validation... KO: > data.actions['SetBrightnessLevel'].forms[0].op should be equal to one of the allowed values, data.actions['SetBrightnessLevel'].forms[0].op should be array, data.actions['SetBrightnessLevel'].forms[0].op should match exactly one schema in oneOf JSON-LD validation... OK

**Error**: op should have small letters (no camelCase)

45 / 72 TD: TestThing.jsonld
TestThing.jsonld was supposed to be valid but gave error
OUTPUT:  Taking TD found at ./WebContent/Examples/Lyon/Valid/TestThing.jsonld for validation JSON validation... OK Taking Schema found at ./WebContent/td-schema-lyon.json Taking Schema Draft found at ./WebContent/json-schema-draft-06.json :) Tip: Without base, each href should be an absolute URL X JSON Schema validation... KO: > data.events['on-bool'].forms[0].subProtocol should be equal to one of the allowed values JSON-LD validation... OK

**Error**: longpoll should NOT be LongPoll