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

echo "Checking for presence of tooling..."

# Check for homebrew
if ! command -v brew &>/dev/null; then
  echo "Homebrew could not be found"
  read -p "Install homebrew? [y/n] " install_brew
  if [[ $install_brew == "Y" || $install_brew == "y" ]]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  else
    echo "Skipping install..."
  fi
fi

# Check for jq
if ! command -v jq &>/dev/null; then
  echo "jq could not be found"
  read -p "Install jq? (Requires brew!) [y/n] " install_jq
  if [[ $install_jq == "Y" || $install_jq == "y" ]]; then
    brew install jq
  else
    echo "Skipping install..."
  fi
fi

# Check for axe
if ! command -v axe &>/dev/null; then
  echo "Axe could not be found"
  read -p "Install axe-core? [y/n] " install_axe
  if [[ $install_axe == "Y" || $install_axe == "y" ]]; then
    npm install -g axe-core
  else
    echo "Skipping install..."
  fi
fi

# Check for webhint
if ! command -v hint &>/dev/null; then
  echo "Webhint could not be found"
  read -p "Install webhint? [y/n] " install_webhint
  if [[ $install_webhint == "Y" || $install_webhint == "y" ]]; then
    npm install -g hint
  else
    echo "Skipping install..."
  fi
fi

# Check for lighthouse
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
