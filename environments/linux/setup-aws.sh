#!/bin/zsh
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "/tmp/aws-cli.zip"
unzip /tmp/aws-cli.zip -d /tmp/aws-cli
sudo /tmp/aws-cli/aws/install --update
