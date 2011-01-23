#!/bin/bash
#
# Yeri Tiete (aka Tuinslak)
#
# simple bash (c)
# Thanks to Pieter Colpaert for the help
#
# Checks on 200 (found), and writes files

#
# Usage:
# checkHosts <input file> <output file>
#

# clean up
[ -e $2_nok.csv ] && rm $2_nok.csv
[ -e $2_ok.csv ]  && rm $2_ok.csv

# test
while read a; do {
	[[ `wget $a --user-agent="GFW-URL-checker (http://yeri.be/hr)" --no-check-certificate -O /dev/null 2>&1 | grep "200 OK"` == "" ]] && echo $a,nok,`date -u +%d-%m-%Y,%H:%M:%S` >> $2_nok.csv || echo $a,ok,`date -u +%d-%m-%Y,%H:%M:%S` >> $2_ok.csv
} done < $1
