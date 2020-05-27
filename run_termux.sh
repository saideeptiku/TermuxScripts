#/bin/bash
# 
# Script will prepare Termux to run Python3 and Sklearn
# Run from within termux session on the android device
#

# setup pointless repo
curl -L https://its-pointless.github.io/setup-pointless-repo.sh | sh

# install scipy
pkg install scipy

# install sklearn
pip3 install scikit-learn