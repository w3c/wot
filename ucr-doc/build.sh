if [ ! -f saxon9he.jar ]; then
    echo "I need a XSLT2 processor, so I'm downloading saxon..."
    curl -L http://sourceforge.net/projects/saxon/files/Saxon-HE/9.5/SaxonHE9-5-1-4J.zip/download > SaxonHE9.zip
    unzip SaxonHE9.zip
fi
echo "got saxon, building..."
java -jar saxon9he.jar -s:ucr-doc/wot-ucr.xml -o:wot-ucr-tmp.html -a -dtd
echo "done. if you see no errors, check wot-ucr-tmp.html"
