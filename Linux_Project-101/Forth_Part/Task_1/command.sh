#!/bin/bash

ip=$(cat info.json | grep -i privateip | awk -F' ' 'NR==1{print $2}' | tr -d '",')
sed -i "s/ec2-private_ip/$ip/" terraform.tf
