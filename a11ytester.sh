#!/bin/bash

##############
# a11ytester #
##############

#
# Just a script that runs a set of accessibility testing tools on a provided URL.
#
# https://github.com/mikaelvesavuori/a11ytester
# Mikael Vesavuori 2022
# MIT license ---> https://opensource.org/licenses/MIT
#

URL=$1
FOLDER=$(echo "$URL" | sed -e 's/[^a-z0-9]//ig' -e 's/https//ig' -e 's/http//gi')

if [ -z $URL ]; then
  echo "Missing URL! Please run the script with a full URL appended, like this --> 'sh test.sh https://mydomain.com'"
  exit
fi

mkdir -p results/$FOLDER/axe
mkdir -p results/$FOLDER/lighthouse

echo "Running Webhint test..."
hint $URL
mv hint-report webhint
mv webhint results/$FOLDER

echo "Running axe test..."
axe $URL \
  --timeout=120 \
  --save results/$FOLDER/axe/results.json \
  --tags wcag21aa

echo "Running Lighthouse test..."
lighthouse $URL \
  --only-categories=accessibility \
  --output html \
  --output-path ./results/$FOLDER/lighthouse/report.html
