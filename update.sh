#!/bin/bash

# $1 = folder name

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
PACKAGE_DIR=$SCRIPT_DIR/$1

cd $PACKAGE_DIR
git pull
makepkg --syncdeps --install --clean --noconfirm
git clean -fdx
