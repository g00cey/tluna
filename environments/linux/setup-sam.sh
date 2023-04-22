#!/bin/bash
curl -L "https://github.com/aws/aws-sam-cli/releases/latest/download/aws-sam-cli-linux-x86_64.zip" -o "/tmp/aws-sam-cli.zip"
unzip /tmp/aws-sam-cli.zip -d /tmp/sam-installation
sudo /tmp/sam-installation/install --update
