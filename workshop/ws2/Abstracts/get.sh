#!/bin/sh

URLs="
https://easychair.org/conferences/submission_info_show.cgi?number=4302788;a=21223139;noprev=1;navi=submissions
https://easychair.org/conferences/submission_info_show.cgi?number=4326638;a=21223139;navi=submissions
https://easychair.org/conferences/submission_info_show.cgi?number=4365423;a=21223139;navi=submissions
https://easychair.org/conferences/submission_info_show.cgi?a=21223139;number=4373658;navi=submissions
https://easychair.org/conferences/submission_info_show.cgi?navi=submissions;number=4375221;a=21223139
https://easychair.org/conferences/submission_info_show.cgi?a=21223139;number=4378033;navi=submissions
https://easychair.org/conferences/submission_info_show.cgi?navi=submissions;a=21223139;number=4382896
https://easychair.org/conferences/submission_info_show.cgi?number=4383548;a=21223139;navi=submissions
https://easychair.org/conferences/submission_info_show.cgi?number=4387123;a=21223139;navi=submissions
https://easychair.org/conferences/submission_info_show.cgi?navi=submissions;a=21223139;number=4388557
https://easychair.org/conferences/submission_info_show.cgi?navi=submissions;number=4390041;a=21223139
https://easychair.org/conferences/submission_info_show.cgi?number=4390335;a=21223139;navi=submissions
https://easychair.org/conferences/submission_info_show.cgi?number=4391417;a=21223139;navi=submissions
https://easychair.org/conferences/submission_info_show.cgi?navi=submissions;a=21223139;number=4391584
https://easychair.org/conferences/submission_info_show.cgi?number=4391741;a=21223139;navi=submissions
https://easychair.org/conferences/submission_info_show.cgi?a=21223139;number=4393926;navi=submissions
https://easychair.org/conferences/submission_info_show.cgi?number=4393991;a=21223139;navi=submissions
https://easychair.org/conferences/submission_info_show.cgi?navi=submissions;number=4398020;a=21223139
https://easychair.org/conferences/submission_info_show.cgi?navi=submissions;number=4398294;a=21223139
https://easychair.org/conferences/submission_info_show.cgi?navi=submissions;number=4398296;a=21223139
https://easychair.org/conferences/submission_info_show.cgi?a=21223139;number=4398497;navi=submissions
https://easychair.org/conferences/submission_info_show.cgi?a=21223139;number=4398502;navi=submissions
https://easychair.org/conferences/submission_info_show.cgi?number=4398777;a=21223139;navi=submissions
https://easychair.org/conferences/submission_info_show.cgi?navi=submissions;number=4399298;a=21223139
https://easychair.org/conferences/submission_info_show.cgi?navi=submissions;a=21223139;number=4399395
https://easychair.org/conferences/submission_info_show.cgi?a=21223139;number=4399428;navi=submissions
https://easychair.org/conferences/submission_info_show.cgi?navi=submissions;a=21223139;number=4399477
https://easychair.org/conferences/submission_info_show.cgi?a=21223139;number=4399486;navi=submissions
https://easychair.org/conferences/submission_info_show.cgi?a=21223139;number=4399521;navi=submissions
https://easychair.org/conferences/submission_info_show.cgi?a=21223139;number=4399567;navi=submissions
https://easychair.org/conferences/submission_info_show.cgi?number=4399569;a=21223139;navi=submissions
https://easychair.org/conferences/submission_info_show.cgi?number=4399662;a=21223139;navi=submissions
https://easychair.org/conferences/submission_info_show.cgi?number=4399771;navi=submissions;a=21223139
https://easychair.org/conferences/submission_info_show.cgi?a=21223139;number=4399886;navi=submissions
https://easychair.org/conferences/submission_info_show.cgi?a=21223139;navi=submissions;number=4399947
https://easychair.org/conferences/submission_info_show.cgi?navi=submissions;number=4400351;a=21223139
https://easychair.org/conferences/submission_info_show.cgi?a=21223139;navi=submissions;number=4400415
https://easychair.org/conferences/submission_info_show.cgi?a=21223139;number=4400618;navi=submissions
https://easychair.org/conferences/submission_info_show.cgi?navi=submissions;a=21223139;number=4401986
https://easychair.org/conferences/submission_info_show.cgi?number=4410780;navi=submissions;a=21223139
https://easychair.org/conferences/submission_info_show.cgi?a=21223139;number=4412776;navi=submissions
https://easychair.org/conferences/submission_info_show.cgi?a=21223139;navi=submissions;number=4412819
https://easychair.org/conferences/submission_info_show.cgi?number=4414418;navi=submissions;a=21223139
https://easychair.org/conferences/submission_info_show.cgi?navi=submissions;a=21223139;number=4429016
https://easychair.org/conferences/submission_info_show.cgi?navi=submissions;number=4438549;a=21223139
https://easychair.org/conferences/submission_info_show.cgi?navi=submissions;number=4438692;a=21223139
https://easychair.org/conferences/submission_info_show.cgi?a=21223139;number=4441784;navi=submissions
https://easychair.org/conferences/submission_info_show.cgi?navi=submissions;number=4451277;a=21223139
https://easychair.org/conferences/submission_info_show.cgi?navi=submissions;a=21223139;number=4457353
https://easychair.org/conferences/submission_info_show.cgi?a=21223139;number=4459963;navi=submissions
https://easychair.org/conferences/submission_info_show.cgi?navi=submissions;a=21223139;number=4465601
https://easychair.org/conferences/submission_info_show.cgi?navi=submissions;a=21223139;number=4465813
https://easychair.org/conferences/submission_info_show.cgi?navi=submissions;a=21223139;number=4465935;nonext=1
"

n=0
for f in $URLs
do
  n=`expr $n + 1`
  n=`printf %02d $n`
  echo "$n"
  #wget -O abstract-${n}.html --post-data="name=ashimura&password=8aksjaakR" ${f}
  wget -O abstract-${n}.html "${f}&name=ashimura&password=8aksjaakR"
done
