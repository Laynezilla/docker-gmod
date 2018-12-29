#!/bin/bash

# Require clients to download workshop resources
echo "resource.AddWorkshop("$WORKSHOP_COLLECTION")" > ./gmod/garrysmod/lua/autorun/server/workshop.lua;

# Deathrun gamemode doesn't have a workshop addon, only github page. Add manually
if [ $GAMEMODE == "deathrun" ]; then
	wget -O ./content/deathrun.zip "https://github.com/Mr-Gash/GMod-Deathrun/archive/master.zip";
	unzip -o ./content/deathrun.zip -d ./content;
	mv ./content/GMod-Deathrun-master/deathrun ./gmod/garrysmod/gamemodes/;
	rm -R ./content/GMod-Deathrun-master;
	rm ./content/deathrun.zip;
fi

# Update all content
./steamcmd.sh +login anonymous +force_install_dir ./gmod +app_update 4020 validate +force_install_dir ./content/css +app_update 232330 validate +quit;

# Start server
./gmod/srcds_run -game garrysmod +maxplayers $MAX_PLAYERS +map $MAP +gamemode $GAMEMODE +host_workshop_collection $WORKSHOP_COLLECTION -authkey $AUTH_KEY
