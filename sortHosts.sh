#!/bin/bash
sort -f hosts/hostlist.txt > hosts/_hostlist.txt
mv hosts/_hostlist.txt hosts/hostlist.txt
awk '!x[$0]++' hosts/hostlist.txt > hosts/_hostlist.txt
mv hosts/_hostlist.txt hosts/hostlist.txt
