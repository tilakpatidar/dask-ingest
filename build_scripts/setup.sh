#!/bin/bash

#Check python 3.7 installed on the system
which python3.7
if [[ $? -ne 0 ]]
then
  echo "Failure: Python3.7 should be available (which python3.7)" >&2
  exit 1
fi

# Install pip
easy_install pip
# Install autoenv to switch env
pip install autoenv
echo "source `which activate.sh`" >> ~/.bashrc
# Install virtualenv
pip install virtualenv
virtualenv env --python=python3.7
source env/bin/activate
source .envrc
curl https://bootstrap.pypa.io/get-pip.py | python
pip install -r requirements.txt

echo "$PWD/scripts" > env/lib/python3.7/site-packages/classpath.pth
