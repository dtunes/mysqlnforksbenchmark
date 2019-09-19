#!/bin/sh

sysbench --db-driver=mysql \
    --mysql-user=sysbench \
    --mysql-db=sysbench \
    --mysql-password=sysbench \
    --range_size=100 \
    --table_size=1000000 \
    --tables=1 \
    --threads=8 \
    --events=0 \
    --time=60 \
    --rand-type=uniform \
    /usr/share/sysbench/oltp_read_write.lua prepare