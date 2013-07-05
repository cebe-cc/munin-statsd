#!/bin/sh -e

ulimit -Sv 262144 # 256 MB

ulimit -St 10 # 10 seconds CPU time

perl /srv/munin-statsd/munin-statsd.pl
