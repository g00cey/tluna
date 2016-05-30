#!/bin/bash
nohup rsync -avze "ssh" /Volumes/3tv1/Documents luna@192.168.1.20:/mnt/2tv1/ &
nohup rsync -avze "ssh" /Volumes/3tv1/Download luna@192.168.1.20:/mnt/2tv1/ &
nohup rsync -avze "ssh" /Volumes/3tv1/Dropbox luna@192.168.1.20:/mnt/2tv1/ &
nohup rsync -avze "ssh" /Volumes/3tv1/confs luna@192.168.1.20:/mnt/2tv1/ &
nohup rsync -avze "ssh" /Volumes/3tv1/dotdir luna@192.168.1.20:/mnt/2tv1/ &
nohup rsync -avze "ssh" /Volumes/3tv1/gitrepo luna@192.168.1.20:/mnt/2tv1/ &
nohup rsync -avze "ssh" /Volumes/3tv1/iTunes luna@192.168.1.20:/mnt/2tv1/ &
nohup rsync -avze "ssh" /Volumes/3tv1/key luna@192.168.1.20:/mnt/2tv1/ &
nohup rsync -avze "ssh" '/Volumes/3tv1/linux app' luna@192.168.1.20:/mnt/2tv1/ &
nohup rsync -avze "ssh" /Volumes/3tv1/media luna@192.168.1.20:/mnt/2tv1/ &
nohup rsync -avze "ssh" /Volumes/3tv1/movie luna@192.168.1.20:/mnt/2tv1/ &
nohup rsync -avze "ssh" /Volumes/3tv1/music luna@192.168.1.20:/mnt/2tv1/ &
nohup rsync -avze "ssh" /Volumes/3tv1/nndd luna@192.168.1.20:/mnt/2tv1/ &
nohup rsync -avze "ssh" /Volumes/3tv1/pic luna@192.168.1.20:/mnt/2tv1/ &
nohup rsync -avze "ssh" /Volumes/3tv1/rtorrent luna@192.168.1.20:/mnt/2tv1/ &
nohup rsync -avze "ssh" /Volumes/3tv1/src luna@192.168.1.20:/mnt/2tv1/ &
nohup rsync -avze "ssh" /Volumes/3tv1/vagrant luna@192.168.1.20:/mnt/2tv1/ &
#rsync -avze "ssh" /Volumes/3tv1/workspace luna@192.168.1.20:/mnt/2tv1/
