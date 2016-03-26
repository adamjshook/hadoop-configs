#!/bin/sh

$ACCUMULO_HOME/bin/stop-here.sh

$HADOOP_HOME/sbin/stop-yarn.sh
$HADOOP_HOME/sbin/mr-jobhistory-daemon.sh stop historyserver

$HADOOP_HOME/sbin/stop-dfs.sh

tmp=`pwd`
cd $ZOOKEEPER_HOME
./bin/zkServer.sh stop
cd $tmp
