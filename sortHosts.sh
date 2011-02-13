#!/bin/bash
# Yeri Tiete

# sort alphabetically
sort -f hosts/hostlist.txt > hosts/_hostlist.txt
mv hosts/_hostlist.txt hosts/hostlist.txt

# to lower()
awk '{print tolower($0)}' hosts/hostlist.txt > hosts/_hostlist.txt
mv hosts/_hostlist.txt hosts/hostlist.txt

# make unique
awk '!x[$0]++' hosts/hostlist.txt > hosts/_hostlist.txt
mv hosts/_hostlist.txt hosts/hostlist.txt
