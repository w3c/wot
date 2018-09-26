for i in TDs/*; do j=`echo $i | sed "s#.*/##g" | sed "s#jsonld#json#g"` ; node td2dm.js $i>DM2s/${j}; done

