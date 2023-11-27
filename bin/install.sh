#!/bin/bash

if [ ! -d ~/.nvm ]; then

  log_info "Installing nvm..."

  curl -s https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash || exit 1

  log_info "You can safely ignore any instructions printed above"

else

  log_info "Updating nvm..."

  cd ~/.nvm || exit 1

  git fetch --tags origin || exit 1

  nvm_hash=$(git rev-list --tags --max-count=1) || exit 1
  nvm_version=$(git describe --abbrev=0 --tags --match "v[0-9]*" "$nvm_hash") || exit 1

  git checkout "$nvm_version" || exit 1

fi
