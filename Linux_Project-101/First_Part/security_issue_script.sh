#!/bin/bash

cat event_history.csv | grep -i "serdar" | grep -i "terminate" | awk -F',' '{print $10}' | awk -F':' '{print $2}' | tr -d '}]"' | tee result.txt
