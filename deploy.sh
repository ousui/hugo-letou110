#!/bin/sh
# 添加更改
echo [log] commit modified files......
git add . 
log_date=`date +%Y%m%d%H%M`
git commit -m "update blog for $log_date"
git push -u origin master
echo [log] modifieds pushed, now update blog......
ssh letou110.win ./update-letou110.sh 

echo [log] done, action done!
