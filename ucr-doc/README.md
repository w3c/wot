# Use cases, requirements and technology landscape
## Proposed document structure
This folder contains a proposed document structure and example entries for a the use case document.
The baseline idea is mapping domain use cases to technologies by breaking them down into the elementary primitives that they require resp. solve.
These primitives are referred to as *atomic use case* or *building block*.
Together, the building blocks form a blueprint called the WoT Framework.

See the presentations "WoT_CommonView_KickOff.pdf" and "UC_dissamination.pdf" for the motivation and introduction behind this approach.

## Structure and Building
The data is collected in the xml file and rendered into a re:spec-page using xslt.

There is no TravisCI integration anymore and the xslt output has to be committed to the master as index.html to appear on github.io:

http://w3c.github.io/wot/ucr-doc/

## Contributing

Contributions are welcome via pull-requests. For this you need a free github account. You can sign up [here](https://github.com/join).

See also the github documentation on:
* [Fork a repo](https://help.github.com/articles/fork-a-repo/)
* [Using pull requests](https://help.github.com/articles/using-pull-requests/)
* [Creating a pull request](https://help.github.com/articles/creating-a-pull-request/)
* [Be social](https://help.github.com/articles/be-social/)

### Creating  a pull-request
To contribute, please follow the following steps:

* Fork this repo (using the button fork in the upper right)
* add your changes to your fork of the repo (best use a feature-branch)
* create a pull request using the button in  your repo

### There is a shortcut:

if you click the file [wot-ucr.xml](https://github.com/w3c/wot/blob/master/ucr-doc/wot-ucr.xml)
you have a pencil-icon in the upper right, enabling a direct edit. That will automagically create a fork, a feature-branch and a pull-request.

## License
As per W3C policies, all contributions are licensed under a [Creative Commons Attribution 3.0 License](http://creativecommons.org/licenses/by/3.0/).

## Credits / Contact
You can contact Johannes Hund (@h0ru5, johannes.hund -at - siemens.com) for questions.

Kudos to Erik Wilde (@dret) for initial XML, XSLT and examples.
