#/bin/sh

# install some tools
sudo apt-get install -y git vim gcc build-essential telnet

# install python and pip
sudo add-apt-repository ppa:deadsnakes/ppa && sudo apt-get update && sudo apt-get install -y python3.6 python-pip

# install docker
curl -fsSL get.docker.com -o get-docker.sh
sh get-docker.sh

# start docker service
sudo groupadd docker
sudo gpasswd -a ubuntu docker
sudo service docker restart

rm -rf get-docker.sh

# install chrome browser
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - && echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list && sudo apt-get update && sudo apt-get install -y google-chrome-stable

# install pipenv
sudo pip install pipenv
