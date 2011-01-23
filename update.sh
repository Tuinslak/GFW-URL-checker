#!/bin/bash
# Yeri Tiete

source country.txt
DATE=`date`

# pull git
git pull

# test
./checkHosts.sh hosts/hostlist.txt testResults/$COUNTRY/results

# merge ;)
cat testResults/$COUNTRY/results_nok.csv > testResults/$COUNTRY/results.csv
cat testResults/$COUNTRY/results_ok.csv >> testResults/$COUNTRY/results.csv

# sort
sort -f hosts/hostlist.txt > /tmp/hostlist.txt
mv /tmp/hostlist.txt hosts/hostlist.txt
sort -f testResults/$COUNTRY/results_nok.csv > /tmp/results_nok.csv
mv /tmp/results_nok.csv testResults/$COUNTRY/results_nok.csv
sort -f testResults/$COUNTRY/results_ok.csv > /tmp/results_ok.csv
mv /tmp/results_ok.csv testResults/$COUNTRY/results_ok.csv
sort -f testResults/$COUNTRY/results.csv > /tmp/results.csv
mv /tmp/results.csv testResults/$COUNTRY/results.csv

# commit
git add .
git commit -m "BE check @ $DATE"
git push

