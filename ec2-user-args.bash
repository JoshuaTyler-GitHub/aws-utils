#cloud-boothook
#!/bin/bash
# Update the system
yum update -y

# NVM Installation
echo "Setting up NVM"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
source ~/.bashrc
nvm install --lts

# Install Node
echo "Setting up Node"
nvm install v20.12.2
nvm use v20.12.2

# Install Docker
echo "Setting up Docker"
yum install -y docker
service docker start
usermod -a -G docker ec2-user