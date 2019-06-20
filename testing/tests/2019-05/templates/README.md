# Results Templates

This directory holds templates to provide guidance on how assertions and interop test results should be reported.
The `results.csv` file is a template for assertions.  Each assertion has a unique identifier in the specification. 
Many but not all of these assertions can be tested automatically.  The assertions for which manual reporting is still 
required are given in `manual.csv`.

For interop testing, results should be reported in a copy of the `interop.csv` file, with each organization using
a unique name.  This file lists pairs of clients and servers (TD producers and TD consumers) that are known to
work together.  It also records whether the connection used a security mechanism to protect it, and if so, what mechanism.
The interop test results needs to refer to "implementations".  

Implementations are described in HTML files,
a template for which is also given in `impl.html`.
A single organization may have more than one implementation.
