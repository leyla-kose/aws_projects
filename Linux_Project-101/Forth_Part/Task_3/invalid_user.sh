#!/bin/bash

cat auth.log | grep -i "invalid user" | awk -F' ' '{print $8}' | sed 's/user//g;s/for//g' | sort | uniq -c
