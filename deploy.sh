#!/bin/sh
# 添加更改
git add . 

log_date=`date +%Y%m%d%H%M`

git commit -m "update blog for $log_date"

git push -u origin master

ssh letou110.win ./update-letou110.sh &

echo done
