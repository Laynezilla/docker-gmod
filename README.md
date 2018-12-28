# docker-gmod-prophunt
Garry's Mod server for PropHunt gamemode. Can also be used for other gamemodes, just change the map, workshop collection, and gamemode environment variables

## Example Usage

docker run -d \\\
--name prophunt \\\
--network=host \\\
-e MAP "ph_starship" \\\
-e MAX_PLAYERS "24" \\\
-e GAMEMODE "prop_hunt" \\\
-e WORKSHOP_COLLECTION "177117131" \\\
-e AUTH_KEY "find yours [here](https://steamcommunity.com/dev/apikey)" \\\
laynal/docker-gmod-prophunt

Container may take several minutes to download new content.
