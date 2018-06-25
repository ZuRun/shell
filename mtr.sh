#!/bin/bash

# mtr命令,先手动检查下是否安装mtr
# centos: yum install mtr
# 建议nohup sh ./mtr.sh >mtr.log & 后台运行
while true
do
    #echo `date +%Y-%m-%d,%H:%M:%S`
	mtr -r -n qq.com
	echo "---------------------"
done
