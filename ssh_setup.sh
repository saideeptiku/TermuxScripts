# update package list
apt update

# install ssh
apt install openssh -y

# run ssh service
sshd

# add public key
touch ~/.ssh/authorized_keys

# Set Permissions to the file
chmod 600 ~/.ssh/authorized_keys

# Make sure the folder .ssh folder has the correct permissions
chmod 700 ~/.ssh

# gen keys
ssh-keygen


# You may or may not enter a passphrase 
# if you don't specify otherwise, your key pair will have been saved under ~/.ssh/id_rsa and ~/.ssh/id_rsa.pub. 
# You can then add it to the ~/.ssh/authorized_keys with
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys


