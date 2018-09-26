This directory contains tools for converting device models into thing descriptions and vice versa.

* td2tm.js is a converter to generate a device model from a thing description.
* dm2td.js is a converter to convert a device model to a thing description.

Both converters are node.js applications. They are called with:

node td2dm.js {input_file} [-v]

and

node dm2td.js {input_file} [-v]
