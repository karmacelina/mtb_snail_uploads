#!/bin/bash

# Push data to Google Person Finder DB
# PersonFinder Documentation can be found here
# https://github.com/google/personfinder/wiki/DataAPI

API_KEY=$1
IN_FILE=$2

curl -X POST -H 'Content-type: application/xml' --data-binary ${IN_FILE} \     https://www.google.org/personfinder/repository/api/write?key=$API_KEY
