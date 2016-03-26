#!/bin/sh

mkdir -p /data1/hadoop/name /data1/hadoop/dfs /data2/hadoop/dfs /data1/hadoop/nm-local-dir /data2/hadoop/nm-local-dir /data1/hadoop/userlogs /data2/hadoop/userlogs /data1/zookeeper

if [[ $? -ne 0 ]]; then
    echo "Failed to create all directories."
    exit 0
fi
