#!/bin/bash

rm -rf ~/Desktop/steam.out

# kill -9  `ps aux | grep "steam" | awk '{print $2}' | awk '{printf "%s ", $0} END {print ""}' ` 
# echo $(ps aux | grep steam >> steam_process.md)
kill -9 $(pgrep steam)
echo "Staring steam..."

# I hope it can output to /dev/null, but it will pirnt output to the screen if do so. Need help.
nohup steam > ./steam.out 2>&1 &
echo "Steam start"
