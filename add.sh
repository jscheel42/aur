#!/bin/bash

# $1 = aur package name
# $2 = branch (default = master)

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

GIT_BRANCH=master

cd $SCRIPT_DIR
git submodule add -b $GIT_BRANCH https://aur.archlinux.org/${1}.git $1
