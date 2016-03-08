
#!/bin/bash

# install via:
#   curl -s https://raw.githubusercontent.com/dcwangmit01/secure/master/install.sh | sudo bash

sudo apt-get update
sudo apt-get -y install gnupg
curl -s https://raw.githubusercontent.com/dcwangmit01/secure/master/secure > /usr/local/bin/secure
sudo chmod 755 /usr/local/bin/secure
