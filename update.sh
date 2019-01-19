#!/bin/bash

# $1 = folder name

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
PACKAGE_DIR=$SCRIPT_DIR/$1
cd $PACKAGE_DIR

# Update the submodules
git submodule update --remote

# Build/install
makepkg --syncdeps --install --clean --noconfirm

# Cleanup built files
git clean -fdx
