#!/bin/bash
sort -f hosts/hostlist.txt > hosts/_hostlist.txt
mv hosts/_hostlist.txt hosts/hostlist.txt
