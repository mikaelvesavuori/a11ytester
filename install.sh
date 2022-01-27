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

echo "Checking for presence of accessibility tooling..."

if ! command -v axe &>/dev/null; then
  echo "Axe could not be found"
  read -p "Install axe-core? [y/n] " install_axe
  if [[ $install_axe == "Y" || $install_axe == "y" ]]; then
    npm install -g axe-core
  else
    echo "Skipping install..."
  fi
fi

if ! command -v hint &>/dev/null; then
  echo "Webhint could not be found"
  read -p "Install webhint? [y/n] " install_webhint
  if [[ $install_webhint == "Y" || $install_webhint == "y" ]]; then
    npm install -g hint
  else
    echo "Skipping install..."
  fi
fi

if ! command -v lighthouse &>/dev/null; then
  echo "Lighthouse could not be found"
  read -p "Install lighthouse? [y/n] " install_lighthouse
  if [[ $install_lighthouse == "Y" || $install_lighthouse == "y" ]]; then
    npm install -g lighthouse
  else
    echo "Skipping install..."
  fi
fi

echo "Creating .hintrc configuration file..."

cat <<EOF >>.hintrc
{
  "extends": ["accessibility"]
}
EOF
