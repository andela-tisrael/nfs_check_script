#!/bin/bash
clear
mkdir samplefolder # create folder
cd samplefolder # move into the directory
cp ../samplefile.txt ./ # copies samplefile.txt into the directory
ls # lists 

##Checks if an NFS disk is mounted on the server

targetserver="192.168.3.1"
commandline=$(mount | grep "$targetserver" | wc -l)

if [ $commandline -gt 0 ]; then
  echo "Mounted !"
else
  echo "Not mounted"
fi
### end
