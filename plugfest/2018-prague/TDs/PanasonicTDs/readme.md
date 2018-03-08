# Panasonic TDs

## Notice

- **Correct URL and JWT will be informed you locally.**
    - For the security reason, the URL in TD is tentative.
    - JSON Web Token(JWT) should be added, when you access to Panasonic servient.

- **[Panasonic-Airconditioner1](Panasonic-Airconditioner1.jsonld) and [Panasonic-Airconditioner2](Panasonic-Airconditioner2.jsonld) don't support a parallel access.**
    - A clinet should access these things in series, like bellow.
    ![Node-RED Parallel and Serial Access Flow Example](images/Node-RED_Parallel_and_Serial_Access_Flow_Example.png "Node-RED Parallel and Serial Access Flow Example")
