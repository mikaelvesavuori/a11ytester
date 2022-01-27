# a11ytester

Just a script that runs a set of accessibility testing tools on a provided URL.

Runs:

- [Webhint](https://webhint.io)
- [Lighthouse](https://github.com/GoogleChrome/lighthouse)
- [Axe](https://github.com/dequelabs/axe-core)

## Installation

For the scripts just clone, copy, or download `install.sh` and `a11ytester.sh` to your machine.

The installation script will set up a [`.hintrc`](https://webhint.io/docs/user-guide/configuring-webhint/summary/) configuration file and check for the presence of the required tools. If they are not installed you will be asked if you want them to be globally installed with [npm](https://nodejs.org/en/knowledge/getting-started/npm/what-is-npm/).

## Running `a11ytester`

Run `bash a11ytester.sh https://mydomain.com` in the folder where you keep the script.

## Also check out

For testing in your IDE, consider:

- https://marketplace.visualstudio.com/items?itemName=deque-systems.vscode-axe-linter
- https://marketplace.visualstudio.com/items?itemName=webhint.vscode-webhint
