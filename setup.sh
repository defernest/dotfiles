#!/usr/bin/env bash

set -e

if ! [ -x "$(command -v ansible)" ]; then
    curl https://bootstrap.pypa.io/get-pip.py | python3
fi


ansible-playbook -i ~/.dotfiles/hosts ~/.dotfiles/dotfiles.yml --ask-become-passif command -v terminal-notifier 1>/dev/null 2>&1; then
  terminal-notifier -title "dotfiles: Bootstrap complete" -message "Successfully set up dev environment."
fi
