#!/usr/bin/env bash

# Run zookeeper
/root/apache-zookeeper-3.6.1-bin/bin/zkServer.sh start

PID=`ps | grep java | awk '{print $1}'`

# while ps -p $PID > /dev/null ; do
#     sleep 1
# done
tail -F /root/apache-zookeeper-3.6.1-bin/logs/zookeeper_audit.log /root/apache-zookeeper-3.6.1-bin/logs/zookeeper--server-*.out



