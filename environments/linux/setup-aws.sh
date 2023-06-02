#!/bin/zsh
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "/tmp/aws-cli.zip"
unzip /tmp/aws-cli.zip -d /tmp/aws-cli
sudo /tmp/aws-cli/aws/install --update
#curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "/tmp/awscliv2.zip"
#unzip /tmp/awscliv2.zip -d /tmp/awscliv2
#sudo /tmp/awscliv2/aws/install
