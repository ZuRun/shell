#!/bin/bash

# ping命令,带上时间,-c命令自己修改,示例指定10天
# 建议nohup sh ./ping.sh >ping.log & 后台运行
ping qq.com -c 864000 | awk '{ print $0"\t" strftime("%Y-%m-%d %H:%M:%S",systime()) } '
