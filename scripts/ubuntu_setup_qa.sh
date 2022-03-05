#!/bin/bash

# updated github token before you run this script:
# export GITHUB_TOKEN

PROJECT_NAME="svc-auto-partslink24"

python_install () {
sudo apt install python3-pip &&
pip --version &&
sudo apt install pipenv &&
pipenv --version
}

tools_install () {
sudo apt install git -y &&
sudo apt install vim -y &&
sudo apt install firefox-geckodriver -y &&
sudo apt install tcpdump -y
}

project_setup () {
cd &&
git clone https://$GITHUB_TOKEN@github.com/pancudaniel7/$PROJECT_NAME.git &&
cd $PROJECT_NAME &&
pipenv install &&
pipenv shell &&
export PATH=$PATH:$(which geckodriver)
}


sudo apt update -y &&
sudo apt upgrade -y &&
python_install &&
tools_install &&
project_setup &&
nohup python $HOME/$PROJECT_NAME/app.py&
