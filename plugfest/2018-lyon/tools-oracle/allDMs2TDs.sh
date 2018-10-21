for i in DMs/*; do j=`echo $i | sed "s#.*/##g"` ; node dm2td.js $i>TDs/${j}ld; done

