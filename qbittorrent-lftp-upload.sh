#!/bin/bash

#############################################################################
#                             qbittorrent-lftp                              #
#                               Coder: d0ofy                                #
#############################################################################
#                      * Requires qbittorrent & lftp *                      #
#############################################################################
# Changelog
# v1 - Hardcoded remote folders

torrentid=$1
torrentname=$2
torrentpath=$3
torrentcategory=$4
torrentsavepath=$5
torrentinfohash=$6

curl -XPOST http://127.0.0.1:2468/api/webhook?apikey=<api key> -d "infoHash="$6"" -d "includeSingleEpisodes=true"

/usr/bin/lftp <bookmark name> -e "mirror -R "$5"/"$2" "/iSO/LiNUX/"; bye" 2>&1