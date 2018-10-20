## Invalid TD Report

This report contains all the invalid TDs that have been posted to Github.

Most of the TDs here have:
1. camel case for the op key in forms, so observerProperty instead of observeproperty
2. subprotocol has LongPoll instead of longpoll. This a very recent update and the TDs should be updated accordingly.

Some TDs are not even valid JSON documents so please use a JSON editor while writing and editing the TDs.

### TestThing.jsonld

OUTPUT:  Taking TD found at ./WebContent/Examples/Lyon/Valid/TestThing.jsonld for validation JSON validation... OK Taking Schema found at ./WebContent/td-schema-lyon.json Taking Schema Draft found at ./WebContent/json-schema-draft-06.json :) Tip: Without base, each href should be an absolute URL X JSON Schema validation... KO: > data.events['on-bool'].forms[0].subProtocol should be equal to one of the allowed values JSON-LD validation... OK

Error: use longpoll

### PanaSimRoomLightX.jsonld

OUTPUT:  Taking TD found at ./WebContent/Examples/Lyon/Valid/PanaSimRoomLightX.jsonld for validation JSON validation... OK Taking Schema found at ./WebContent/td-schema-lyon.json Taking Schema Draft found at ./WebContent/json-schema-draft-06.json X JSON Schema validation... KO: > data.properties['power'].forms[1].op should be equal to one of the allowed values, data.properties['power'].forms[1].op should be array, data.properties['power'].forms[1].op should match exactly one schema in oneOf JSON-LD validation... OK

Error: op should have small letters, longpoll shound NOT be LongPoll

### PanaSimHueGroupX.jsonld

OUTPUT:  Taking TD found at ./WebContent/Examples/Lyon/Valid/PanaSimHueGroupX.jsonld for validation JSON validation... OK Taking Schema found at ./WebContent/td-schema-lyon.json Taking Schema Draft found at ./WebContent/json-schema-draft-06.json X JSON Schema validation... KO: > data.properties['power'].forms[1].op should be equal to one of the allowed values, data.properties['power'].forms[1].op should be array, data.properties['power'].forms[1].op should match exactly one schema in oneOf JSON-LD validation... OK

Error: same as above

### PanaSimAirConditionerX.jsonld

OUTPUT:  Taking TD found at ./WebContent/Examples/Lyon/Valid/PanaSimAirConditionerX.jsonld for validation JSON validation... OK Taking Schema found at ./WebContent/td-schema-lyon.json Taking Schema Draft found at ./WebContent/json-schema-draft-06.json X JSON Schema validation... KO: > data.properties['power'].forms[1].op should be equal to one of the allowed values, data.properties['power'].forms[1].op should bearray, data.properties['power'].forms[1].op should match exactly one schema in oneOf JSON-LD validation... OK

Error: same as above

### keti-iot-sensor.jsonld

OUTPUT:
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

Error: not JSON

### huegroup_p1.jsonld

OUTPUT:  Taking TD found at ./WebContent/Examples/Lyon/Valid/huegroup_p1.jsonld for validation JSON validation... OK Taking Schema found at ./WebContent/td-schema-lyon.json Taking Schema Draft found at ./WebContent/json-schema-draft-06.json X JSON Schema validation... KO: > data.properties['operationStatus'].forms[1].op should be equal to one of the allowed values, data.properties['operationStatus'].forms[1].op should be array,data.properties['operationStatus'].forms[1].op should match exactly one schema in oneOf JSON-LD validation... OK

Error: op should be lower case

### Blue_Pump_Siemens.jsonld

OUTPUT:
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

Error: not json because of the first string context

### Blue_Pump_Panasonic.jsonld

OUTPUT: 
X JSON validation... KO:
> Unexpected token
 in JSON at position 43
/home/eko/git/thingweb-playground/Scripts/playground.js:38
        throw err;
        ^

SyntaxError: Unexpected token
 in JSON at position 43

Error: same error as above

### airConditioner_p1.jsonld

OUTPUT:  Taking TD found at ./WebContent/Examples/Lyon/Valid/airConditioner_p1.jsonld for validation JSON validation... OK Taking Schema found at ./WebContent/td-schema-lyon.json Taking Schema Draft found at ./WebContent/json-schema-draft-06.json X JSON Schema validation... KO: > data.properties['operationStatus'].forms[1].op should be equal to one of the allowed values, data.properties['operationStatus'].forms[1].op should be array, data.properties['operationStatus'].forms[1].op should match exactly one schema in oneOf JSON-LD validation... OK

Error: op should be lower case