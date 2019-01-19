#!/bin/bash

# $1 = aur package name
# $2 = branch (default = master)

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

if [ -z ${2+x} ]
then
    GIT_BRANCH=master
else
    GIT_BRANCH=$2
fi

# cd $SCRIPT_DIR
git submodule add -b $GIT_BRANCH https://aur.archlinux.org/${1}.git $1
