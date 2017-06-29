"use strict"

function checkPropertyWrite(expected, actual) {
    let output = "Property " + expected + " written with " + actual;
    if (expected === actual) {
        console.info("PASS: " + output);
    } else {
        throw new Error("FAIL: " + output);
    }
}

function checkActionInvocation(name, expected, actual) {
    let output = "Action " + name + " invoked with " + actual;
    if (expected === actual) {
        console.info("PASS: " + output);
    } else {
        throw new Error("FAIL: " + output);
    }
}

WoT.createThing("TestThing")
    .then(function (thing) {
        console.info(thing.name + " running");

        thing
            .addProperty("bool", { type: "boolean" })
            .setProperty("bool", false);

        thing
            .addProperty("int", { type: "integer" })
            .setProperty("int", 42);

        thing
            .addProperty("num", { type: "number" })
            .setProperty("num", 3.14);

        thing
            .addProperty("string", { type: "string" })
            .setProperty("string", "unset");

        thing
            .addProperty("array", { type: "array" })
            .setProperty("array", [2, ""]);

        thing
            .addProperty("object", { "type": "object",
                "properties": {
                    "prop1": {"type": "integer"},
                    "prop2": {"type": "string"}
                },
                "required": [
                    "prop1",
                    "prop2"
                ]})
            .setProperty("object", {"prop1": 123, "prop2" : "abc"});

        // Property checks
        thing
            .onUpdateProperty("bool", (param) => {
                checkPropertyWrite("boolean", typeof param);
            })
            .onUpdateProperty("int", (param) => {
                let inputtype = typeof param;
                if (param === Math.floor(param)) inputtype = "integer";
                checkPropertyWrite("integer", inputtype);
            })
            .onUpdateProperty("num", (param) => {
                checkPropertyWrite("number", typeof param);
            })
            .onUpdateProperty("string", (param) => {
                checkPropertyWrite("string", typeof param);
            })
            .onUpdateProperty("array", (param) => {
                let inputtype = typeof param;
                if (Array.isArray(param)) inputtype = "array";
                checkPropertyWrite("array", inputtype);
            })
            .onUpdateProperty("object", (param) => {
                let inputtype = typeof param;
                if (Array.isArray(param)) inputtype = "array";
                checkPropertyWrite("object", inputtype);
            });

        // Actions
        thing
            .addAction("void-void")
            .onInvokeAction("void-void", function (param) {
                checkActionInvocation("void-void", "undefined", typeof param);
            });

        thing
            .addAction("void-int", null, { type: "integer" })
            .onInvokeAction("void-int", function (param) {
                checkActionInvocation("void-int", "undefined", typeof param);
                return 0
            });

        thing
            .addAction("int-void", { type: "integer" })
            .onInvokeAction("int-void", function (param) {
                let inputtype = typeof param;
                if (param === Math.floor(param)) inputtype = "integer";
                checkActionInvocation("int-void", "integer", inputtype);
            });

        thing
            .addAction("int-int", { type: "integer" }, { type: "integer" })
            .onInvokeAction("int-int", function (param) {
                let inputtype = typeof param;
                if (param === Math.floor(param)) inputtype = "integer";
                checkActionInvocation("int-int", "integer", inputtype);
                return param+1;
            });

        thing
            .addAction("int-string", { type: "string" })
            .onInvokeAction("int-string", function (param) {
                let inputtype = typeof param;
                if (param === Math.floor(param)) inputtype = "integer";
                checkActionInvocation("int-string", "integer", inputtype);
                if (inputtype=="integer") {
                    return new String(param)
                                    .replace(/0/g,"zero-")
                                    .replace(/1/g,"one-")
                                    .replace(/2/g,"two-")
                                    .replace(/3/g,"three-")
                                    .replace(/4/g,"four-")
                                    .replace(/5/g,"five-")
                                    .replace(/6/g,"six-")
                                    .replace(/7/g,"seven-")
                                    .replace(/8/g,"eight-")
                                    .replace(/9/g,"nine-")
                } else {
                    return "ERROR";
                }
            });
        
        thing
            .addAction("void-complex", null, { "type": "object",
                "properties": {
                    "prop1": {"type": "integer"},
                    "prop2": {"type": "string"}
                },
                "required": [
                    "prop1",
                    "prop2"
                ]})
            .onInvokeAction("void-complex", function (param) {
                checkActionInvocation("void-complex", "undefined", typeof param);
                return {"prop1": 123, "prop2" : "abc"};
            });

        thing
            .addAction("complex-void", { "type": "object",
                "properties": {
                    "prop1": {"type": "integer"},
                    "prop2": {"type": "string"}
                },
                "required": [
                    "prop1",
                    "prop2"
                ]})
            .onInvokeAction("complex-void", function (param) {
                checkActionInvocation("complex-void", "object", typeof param);
            });
    });
