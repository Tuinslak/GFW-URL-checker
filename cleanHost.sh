#!/bin/bash
# Yeri Tiete
# http://yeri.be
# This file cleans up the host file from nok files

: ${1?"Usage: $0 <input nok file> <host file>"}

TMP=/tmp/_cleanup
OUT=/tmp/hostlist.txt

# get URLs
awk '{print $1}' FS="," $1 > $TMP

# get unique
sort $TMP $2 | uniq -u > $OUT

echo "New host file at $OUT"