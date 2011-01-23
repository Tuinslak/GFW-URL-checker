#!/bin/bash
sort -f hosts/hostlist.txt > /tmp/hostlist.txt
mv /tmp/hostlist.txt hosts/hostlist.txt
