#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Git pull this repo & any submodules w/ aur config
git submodule update --recursive --remote

# Update each package folder
for d in */; do
    $SCRIPT_DIR/update.sh $d
done
