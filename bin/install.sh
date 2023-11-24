#!/bin/bash
set -eo pipefail

if [ ! -d ~/.nvm ]; then

  log_info "Installing nvm..."

  curl -s https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash

fi

log_info "Updating nvm..."

cd ~/.nvm

git fetch --tags origin

nvm_hash=$(git rev-list --tags --max-count=1)
nvm_version=$(git describe --abbrev=0 --tags --match "v[0-9]*" "$nvm_hash")

git checkout "$nvm_version"

log_info "You can safely ignore any instructions printed above"
