# docker-gmod
Garry's Mod server base. Can be used for other gamemodes, just change the map, workshop collection, and gamemode environment variables

## Example Usages
Containers may take several minutes to download new content.

[Find your Steam API key here](https://steamcommunity.com/dev/apikey)

### [PropHunt](https://steamcommunity.com/sharedfiles/filedetails/?id=177117131)
```docker run -d \
--name prophunt \
--network=host \
-e MAP "ph_starship" \
-e MAX_PLAYERS "24" \
-e GAMEMODE "prop_hunt" \
-e WORKSHOP_COLLECTION "177117131" \
-e AUTH_KEY "XXXXXX" \
laynal/docker-gmod
```

### [TTT](https://steamcommunity.com/sharedfiles/filedetails/?id=298502203)
```docker run -d \
--name ttt \
--network=host \
-e MAP "ttt_lego" \
-e MAX_PLAYERS "24" \
-e GAMEMODE "terrortown" \
-e WORKSHOP_COLLECTION "298502203" \
-e AUTH_KEY "XXXXXX" \
laynal/docker-gmod
```

### [Deathrun](https://steamcommunity.com/sharedfiles/filedetails/?id=215866002)
```docker run -d \
--name deathrun \
--network=host \
-e MAP "deathrun_iceworld" \
-e MAX_PLAYERS "24" \
-e GAMEMODE "" \
-e WORKSHOP_COLLECTION "215866002" \
-e AUTH_KEY "XXXXXX" \
laynal/docker-gmod
```
