#!/bin/bash

#Release process
process_id=`sudo lsof +L1 |grep *需要过滤的文件名* |grep -v "grep" | awk '{print $2}'`
echo $process_id

echo "---------------"


for id in $process_id
do
        kill -9 $id
        echo "killed $id"
done