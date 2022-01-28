#!/bin/bash

##############
# a11ytester #
##############

#
# Just a few scripts that run a set of accessibility testing tools on one or more provided URLs.
#
# https://github.com/mikaelvesavuori/a11ytester
# Mikael Vesavuori 2022
# MIT license ---> https://opensource.org/licenses/MIT
#

pages=$(cat config.json | jq '.[]' -r)

for page in ${pages[@]}; do
  bash a11ytester.sh $page
done
