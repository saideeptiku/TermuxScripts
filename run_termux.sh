#/bin/bash
# 
# Script will prepare Termux to run Python3 and Sklearn
# Run from within termux session on the android device
#

# setup pointless repo
curl -L https://its-pointless.github.io/setup-pointless-repo.sh | sh

# install scipy
apt install -y scipy

# update pip
pip install --upgrade pip

# install sklearn
pip3 install scikit-learn==0.19.2