#!/bin/bash

filename='../vagrant-install-plugins'
while read line; do
  vagrant plugin install $line
done < $filename
