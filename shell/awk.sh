#!/bin/bash

source /etc/profile

echo "AWK Test！"
cd /root
man awk > awk_help.txt

awk 'BEGIN {print "\n\t\t人员工资表"} $2 > 8 {time = time + 1} {printf("姓名：%5s\t工作时长：%4.1f\t工资：%8.2f\n",$1,$2,$3*$2)} END {printf("一共有 员工%2s人\n超时长工作的员工有%2s人\n",NR,time)}' file.txt

awk '$2 > 8 {names = names $1 " "} END {print"超时工作的员工："names}' file.txt