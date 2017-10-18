'use strict'

const ctx = {
    'owl': 'http://www.w3.org/2002/07/owl#',
    'xsd': 'http://www.w3.org/2001/XMLSchema#',
    'boolean': 'xsd:boolean',
    'integer': 'xsd:integer',
    'number': 'xsd:double', // TODO fix this
    'string': 'xsd:string',
    'allOf': {
        '@id': 'owl:intersectionOf',
        '@type': '@id',
        '@container': '@list'
    },
    // TODO JSON Schema's oneOf (vs. anyOf?)
    'anyOf': {
        '@id': 'owl:unionOf',
        '@type': '@id',
        '@container': '@list'
    },
    'enum': {
        '@id': 'owl:oneOf',
        '@type': '@id',
        '@container': '@list'
    },
    'withRestrtictions': {
        '@id': 'owl:withRestrtictions',
        '@type': '@id',
        '@container': '@list'
    },
    'equivalentClass': {
        '@id': 'owl:equivalentClass',
        '@type': '@id'
    },
    'onDatatype': {
        '@id': 'owl:onDatatype',
        '@type': '@id'
    },
    'onProperty': {
        '@id': 'owl:onProperty',
        '@type': '@id'
    },
    'allValuesFrom': {
        '@id': 'owl:allValuesFrom',
        '@type': '@id'
    },
    'someValuesFrom': {
        '@id': 'owl:someValuesFrom',
        '@type': '@id'
    },
    'minimum': {
        '@id': 'xsd:minInclusive'
    },
    'maximum': {
        '@id': 'xsd:maxInclusive'
    },
    'exclusiveMinimum': {
        '@id': 'xsd:minExclusive'
    },
    'exclusiveMaximum': {
        '@id': 'xsd:maxExclusive'
    },
    'minLength': {
        '@id': 'xsd:minLength'
    },
    'maxLength': {
        '@id': 'xsd:maxLength'
    },
    'pattern': {
        '@id': 'xsd:pattern'
    }
}

function canonicalize(json, root, stack, base) {
    if (json['$ref']) {
        let refStack = json['$ref'].split('/');
        let r = refStack.shift(); // remove root
        if (r === '#') { // local definition
            let ref = refStack.reduce((node, idx) => node[idx], root);
            return canonicalize(ref, root, refStack, base);
        } else {
            // FIXME specific to OCF
            let refBase = base.substring(0, base.lastIndexOf('/') + 1);
            return { 'id': refBase + json['$ref'] };
        }
    } else {
        if (!json.id) {
            json.id = stack.reduce((path, idx) => path + '/' + idx, base);
        }
        if (json.anyOf) {
            stack.push('anyOf');
            json.anyOf.forEach((def, i) => {
                stack.push(i);
                json.anyOf[i] = canonicalize(def, root, stack, base);
                stack.pop();
            });
            stack.pop();
        } else if (json.allOf) {
            stack.push('allOf');
            json.allOf.forEach((def, i) => {
                stack.push(i);
                json.allOf[i] = canonicalize(def, root, stack, base);
                stack.pop();
            });
            stack.pop();
        } else if (json.items) {
            stack.push('items');
            json.items = canonicalize(json.items, root, stack, base);
            stack.pop();
        } else if (json.properties) {
            Object.keys(json.properties).forEach(p => {
                stack.push(p);
                let def = json.properties[p];
                def = canonicalize(def, root, stack, base);
                stack.pop();
            });
        }
        return json;
    }
}

function equivalence(json) {
    return {
        'equivalentClass': json.type
    };
}

const facets = [
    'minimum',
    'maximum',
    'exclusiveMinimum',
    'exclusiveMaximum',
    'minLength',
    'maxLength',
    'pattern'
];
function restrictions(json) {
    return {
        'onDatatype': json.type,
        'withRestrictions': facets.map(facet => {
            if (json[facet]) {
                return {
                    [facet]: json[facet]
                };
            }
        })
    };
}

function intersection(json) {
    let restrictions = Object.keys(json.properties).map(p => ({
        'onProperty': p, // TODO property mapping
        'allValuesFrom': owlType(json.properties[p])
    }));
    if (json.required) {
        restrictions = restrictions.concat(json.required.map(p => ({
            'onProperty': p, // TODO property mapping
            'someValuesFrom': owlType(json.properties[p])
        })));
    }
    return {
        'allOf': restrictions
    };
}

function owlType(json) {
    let jsonld = {};
    if (json.enum) {
        jsonld = json;
    } else if (json.anyOf) {
        jsonld = { 'anyOf': json.anyOf.map(owlType) };
    } else if (json.allOf) {
        jsonld = { 'allOf': json.allOf.map(owlType) };
    } else if (json instanceof Array) {
        jsonld = { 'allOf': json.map(owlType) };
    } else {
        switch (json.type) {
            case 'boolean':
                jsonld = equivalence(json);
                break;
            case 'number':
            case 'integer':
                if (json.minimum ||
                    json.maximum ||
                    json.exclusiveMinimum ||
                    json.exclusiveMaximum) {
                    jsonld = restrictions(json);
                } else {
                    jsonld = equivalence(json);
                }
                break;
            case 'string':
                if (json.minLength ||
                    json.maxLength ||
                    json.pattern) {
                    jsonld = restrictions(json);
                } else {
                    jsonld = equivalence(json);
                }
                break;
            case 'array':
                // TODO include minItems, maxItems
                if (json.items) {
                    jsonld = owlType(json.items);
                }
            case 'object':
                if (json.properties) {
                    jsonld = intersection(json);
                }
                break;
        }
    }
    jsonld['@id'] = json.id;
    return jsonld;
}

const fs = require('fs');
let dir = 'D:\\oneIoTa\\IoTDataModels\\';
fs.readdir(dir, (err, files) => {
    let allTypes = [];
    files.filter(f => f.startsWith('oic.'))
         .forEach(f => {
             let data = fs.readFileSync(dir + f, 'UTF-8');
             let json = JSON.parse(data);
             let type = owlType(canonicalize(json, json, [], json.id));
             type['@context'] = ctx;
             allTypes.push(type);
         });
    console.log(JSON.stringify(allTypes));
});
