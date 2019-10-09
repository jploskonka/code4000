#!/usr/bin/env bash

set -e

if [[ -f ~/.nvm/nvm.sh ]]; then
  echo "nvm script found"
else
  echo "nvm command not found, installing..."
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.0/install.sh | bash
fi

source ~/.nvm/nvm.sh

echo "Installing node $(cat .nvmrc)"
nvm install

echo "Installing packages"
npm install && (cd codeceptjs-docs && npm install)

echo "Starting codeceptJS docs"
(cd codeceptjs-docs/website && BROWSER=false npm start -- --no-watch &>/dev/null &)

echo "Waiting 15 seconds for codeceptJS docs to start up..."
sleep 15

echo "Checking setup"
npm test

echo "Killing codeceptJS docs"
ps aux | grep docusaurus-start | grep -v grep | awk '{print $2 }' | xargs kill
