#!/bin/sh -e

LOGFILE=/var/log/munin-statsd.crashlog

ulimit -Hv 65536 # 64 MB

ulimit -Ht 10 # 10 seconds CPU time

perl /srv/munin-statsd/munin-statsd.pl || env >> $LOGFILE
