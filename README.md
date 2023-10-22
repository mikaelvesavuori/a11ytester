# a11ytester

Just a few scripts that run a set of accessibility testing tools on one or more provided URLs.

Runs:

- [Webhint](https://webhint.io)
- [Lighthouse](https://github.com/GoogleChrome/lighthouse)
- [Axe](https://github.com/dequelabs/axe-core)
- [pa11y](https://pa11y.org)

## Installation

_Note that this entirely assumes that you are running on a Linux or Mac operating system!_

For the scripts just clone, copy, or download `install.sh`, `test.sh` and `a11ytester.sh` to your machine.

The installation script will set up a [`.hintrc`](https://webhint.io/docs/user-guide/configuring-webhint/summary/) configuration file and check for the presence of the required tools. If they are not installed you will be asked if you want them to be globally installed with [npm](https://nodejs.org/en/knowledge/getting-started/npm/what-is-npm/) or [Homebrew](https://brew.sh).

## Configuration for multiple pages

If you want to test multiple pages you must first create a JSON file (`config.json`) that contains a list of URLs.

## Running `a11ytester`

### Single page

Run `bash a11ytester.sh https://mydomain.com` in the folder where you keep the script.

### Multiple pages

**Make sure you have a JSON file (`config.json`) that contains a list of URLs!**

Run `bash test.sh` in the folder where you keep the script.

## Also check out

For testing in your IDE, consider:

- [axe Accessibility Linter](https://marketplace.visualstudio.com/items?itemName=deque-systems.vscode-axe-linter)
- [webhint](https://marketplace.visualstudio.com/items?itemName=webhint.vscode-webhint)
