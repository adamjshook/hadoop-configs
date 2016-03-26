#!/bin/sh

$HADOOP_HOME/sbin/start-dfs.sh
$HADOOP_HOME/sbin/start-yarn.sh
$HADOOP_HOME/sbin/mr-jobhistory-daemon.sh start historyserver

tmp=`pwd`
cd $ZOOKEEPER_HOME
./bin/zkServer.sh start
cd $tmp

$ACCUMULO_HOME/bin/start-here.sh

