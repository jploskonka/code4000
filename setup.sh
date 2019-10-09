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

echo "Installing yarn packages"
yarn install && cd codeceptjs-docs/website && yarn

