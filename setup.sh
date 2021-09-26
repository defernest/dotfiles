#!/usr/bin/env bash

set -e

if ! [ -x "$(command -v curl)" ]; then
    echo "installing curl"
    apt install -q=3 curl
fi

if ! [ -x "$(command -v python3)" ]; then
    echo "installing python3"
    apt install -q=3 python3
    apt install -q=3 python3-distutils
    echo "installing pip3"
    curl -sS https://bootstrap.pypa.io/get-pip.py | python3
fi

if ! [ -x "$(command -v ansible)" ]; then
    pip3 install ansible
    pip3 install jinja2
fi
