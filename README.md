When doing a clone, use --recursive to pull submodules:
* git clone git@github.com:jscheel42/aur.git --recursive

Update a single package:
* ./update.sh DIRECTORY_NAME
* ./update.sh google-chrome

Update all packages:
* ./update_all.sh

Add a new AUR package:
* ./add.sh PACKAGE_NAME
* ./add.sh google-chrome
