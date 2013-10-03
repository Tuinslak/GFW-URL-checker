#!/bin/bash
# Yeri Tiete
# http://yeri.be

#
# This file should be executed.
#

# some vars.
DATE=`date -u '+%H:%M:%S %d-%m-%Y'`
ISRUNNING=yes

# pull git
git pull

# get country
COUNTRY=`whois \`curl icanhazip.com -s\` | grep country | awk '{ print $2; }' | tr '[:upper:]' '[:lower:]'`

# test
./checkHosts.sh hosts/hostlist.txt testResults/$COUNTRY/results

# check until wget is no longer running
while [ $ISRUNNING != "no" ]
do
	# if there is no wget process anymore, continue
	if ! ps x | grep -v grep | grep wget > /dev/null
	then
		ISRUNNING=no
	fi
done

# merge -- this will overwrite the old file
cat testResults/$COUNTRY/results_nok.csv > testResults/$COUNTRY/results.csv
cat testResults/$COUNTRY/results_ok.csv >> testResults/$COUNTRY/results.csv

# sort
sort -f testResults/$COUNTRY/results_nok.csv > /tmp/results_nok.csv
mv /tmp/results_nok.csv testResults/$COUNTRY/results_nok.csv
sort -f testResults/$COUNTRY/results_ok.csv > /tmp/results_ok.csv
mv /tmp/results_ok.csv testResults/$COUNTRY/results_ok.csv
sort -f testResults/$COUNTRY/results.csv > /tmp/results.csv
mv /tmp/results.csv testResults/$COUNTRY/results.csv

# commit
git add .
git commit -m "$COUNTRY check @ $DATE (UTC)"
git push

# EOF
