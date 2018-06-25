#!/bin/bash

# 老的,不要了
# ping命令,带上时间,-c命令自己修改,示例指定10天
# 建议nohup sh ./ping.sh >ping.log & 后台运行
#ping qq.com -c 864000 | awk '{ print $0"\t" strftime("%Y-%m-%d %H:%M:%S",systime()) } '

# 循环1s一次,循环10天会结束
# 大于maxTime的才会打印出来
addr=qq.com
maxTime=100
for((i=0;i<864000;i++))
{
    tmp=$(ping $addr -c 1 | sed -n 's/.* = .*\/\(.*\)\/.*/\1/p')
    datetime=`date +%Y-%m-%d,%H:%M:%S`
    #sum=$(echo "$tmp+$sum"|bc)
    if [ $tmp>$maxTime ]; then
        echo "seq: $i  time: $tmp  $datetime"
    fi
    sleep 1s
}
