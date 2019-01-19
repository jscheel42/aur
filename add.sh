#!/bin/bash

# $1 = aur package name

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cd $SCRIPT_DIR
git submodule add https://aur.archlinux.org/${1}.git $1
