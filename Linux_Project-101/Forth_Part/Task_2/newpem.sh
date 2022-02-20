#!/bin/bash


sed 's/\\n/\n/g' certificate.pem | tee new.pem
