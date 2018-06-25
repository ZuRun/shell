#!/bin/bash

# 建议nohup sh ./curl.sh >curl.log & 后台运行
# 循环1s一次,循环10天会结束
# 大于maxTime的才会打印出来
addr=http://www.qq.com
maxTime=100
temp=0
for((i=0;i<864000;i++))
{
    tmp=$(echo "$(curl -o /dev/null -s -w %{time_total}"\n" "$addr" )*1000"|bc)
    datetime=`date +%Y-%m-%d,%H:%M:%S`
    temp=$(echo "$tmp > $maxTime"|bc)
    if [ $temp -eq  1 ]; then
        echo "seq: $i  time: $tmp  $datetime"
    fi
    sleep 1s
}
