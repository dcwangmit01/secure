#!/bin/bash

# install via:
#   curl -s https://raw.githubusercontent.com/dcwangmit01/secure/master/install.sh | sudo bash

# Take care of dependencies, and do nothing if deps are not there
if [ `uname` = "Darwin" ]; then
    if ! which gpg; then
	echo "Please install program gpg (gnupg)";
	exit 0;
    fi
fi
if [ `uname` = "Linux" ]; then
    sudo apt-get update;
    sudo apt-get -y install gnupg;
fi

curl -s https://raw.githubusercontent.com/dcwangmit01/secure/master/secure > /usr/local/bin/secure
sudo chmod 755 /usr/local/bin/secure
