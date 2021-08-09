#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"


# # Import GPG Keys
# # Spotify
# gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
# gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0x4E2C6E8793298290

# Update each package folder
cd $SCRIPT_DIR
git pull
for d in */; do
    $SCRIPT_DIR/update.sh $d
done
