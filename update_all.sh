#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Update the main repo (not submodules)
git pull

# Update each package folder
for d in */; do
    $SCRIPT_DIR/update.sh $d
done
