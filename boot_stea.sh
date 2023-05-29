#!/bin/bash

rm -rf ~/Desktop/steam.out

# kill -9  `ps aux | grep "steam" | awk '{print $2}' | awk '{printf "%s ", $0} END {print ""}' ` 
# echo $(ps aux | grep steam >> steam_process.md)
kill -9 $(pgrep steam)
echo "Staring steam..."
nohup steam > ./steam.out 2>&1 &
echo "Steam start"
