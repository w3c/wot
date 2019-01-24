## TD Report Saturday final

Report on invalid TDs

This report contains all the invalid TDs that have been posted to Github.

Most of the TDs here have:
1. camel case for the op key in forms, so observerProperty instead of observeproperty
2. subprotocol has LongPoll instead of longpoll. This a very recent update and the TDs should be updated accordingly.

Some TDs are not even valid JSON documents so please use a JSON editor while writing and editing the TDs.

Below are the output of the playground for each **invalid** TD. Under each "complicated" output there is a manually written analyzed error.

**Summary:** 57/62 of Plugfest TDs are valid, about 8% is not valid

**Details:**

29 / 96 TD: keti-iot-sensor.jsonld
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

**Error:** Not a JSON because of comments

45 / 96 TD: PanaSimAirConditionerX.jsonld
PanaSimAirConditionerX.jsonld was supposed to be valid but gave error
OUTPUT:  Taking TD found at ./WebContent/Examples/Lyon/Valid/PanaSimAirConditionerX.jsonld for validation JSON validation... OK Taking Schema found at ./WebContent/td-schema-lyon.json Taking Schema Draft found at ./WebContent/json-schema-draft-06.json X JSON Schema validation... KO: > data.properties['power'].forms[1].op should be equal to one of the allowed values, data.properties['power'].forms[1].op should be array, data.properties['power'].forms[1].op should match exactly one schema in oneOf JSON-LD validation... OK

**Error:** Don't use camel case

52 / 96 TD: PanaSimHueGroupX.jsonld
PanaSimHueGroupX.jsonld was supposed to be valid but gave error
OUTPUT:  Taking TD found at ./WebContent/Examples/Lyon/Valid/PanaSimHueGroupX.jsonld for validation JSON validation... OK Taking Schema found at ./WebContent/td-schema-lyon.json Taking Schema Draft found at ./WebContent/json-schema-draft-06.json X JSON Schema validation... KO: > data.properties['power'].forms[1].op should be equal to one of the allowed values, data.properties['power'].forms[1].op should be array, data.properties['power'].forms[1].op should match exactly one schema in oneOf JSON-LD validation... OK

**Error:** Don't use camel case

55 / 96 TD: PanaSimRoomLightX.jsonld
PanaSimRoomLightX.jsonld was supposed to be valid but gave error
OUTPUT:  Taking TD found at ./WebContent/Examples/Lyon/Valid/PanaSimRoomLightX.jsonld for validation JSON validation... OK Taking Schema found at ./WebContent/td-schema-lyon.json Taking Schema Draft found at ./WebContent/json-schema-draft-06.json X JSON Schema validation... KO: > data.properties['power'].forms[1].op should be equal to one of the allowed values, data.properties['power'].forms[1].op should be array, data.properties['power'].forms[1].op should match exactly one schema in oneOf JSON-LD validation... OK

**Error:** Don't use camel case

62 / 96 TD: td-light-local.json
td-light-local.json was supposed to be valid but gave error
OUTPUT:  Taking TD found at ./WebContent/Examples/Lyon/Valid/td-light-local.json for validation JSON validation... OK Taking Schema found at ./WebContent/td-schema-lyon.json Taking Schema Draft found at ./WebContent/json-schema-draft-06.json X JSON Schema validation... KO: > data.actions['SetBrightnessLevel'].forms[0].op should be equal to one of the allowed values, data.actions['SetBrightnessLevel'].forms[0].op should be array, data.actions['SetBrightnessLevel'].forms[0].op should match exactly one schema in oneOf JSON-LD validation... OK

**Error:** Don't use camel case