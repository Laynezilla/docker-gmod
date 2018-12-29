# docker-gmod
Garry's Mod server base with CS:S content. Can be used for other gamemodes, just change the map, workshop collection, and gamemode environment variables

## Example Usages
Containers may take several minutes to download new content.

[Find your Steam API key here](https://steamcommunity.com/dev/apikey)

### [PropHunt](https://steamcommunity.com/sharedfiles/filedetails/?id=177117131)
```
docker run -d \
--name prophunt \
--network=host \
-e MAP "ph_starship" \
-e MAX_PLAYERS "24" \
-e GAMEMODE "prop_hunt" \
-e WORKSHOP_COLLECTION "177117131" \
-e AUTH_KEY "XXXXXX" \
laynal/docker-gmod
```
#### PropHunt Maps
* gm_housewithgardenV2
* ph_niteoflivingdead
* TTT_Nuclear_Power_b2
* ph_restaurant_2017
* ph_office
* ph_fancyhouse
* ph_parkinglot
* ph_starship

### [TTT](https://steamcommunity.com/sharedfiles/filedetails/?id=298502203)
```
docker run -d \
--name ttt \
--network=host \
-e MAP "ttt_lego" \
-e MAX_PLAYERS "24" \
-e GAMEMODE "terrortown" \
-e WORKSHOP_COLLECTION "298502203" \
-e AUTH_KEY "XXXXXX" \
laynal/docker-gmod
```
#### TTT Maps
* ttt_lego
* ttt_mcskyblocks02
* ttt_bb_teenroom_b2
* ttt_mcvillage_V6
* ttt_minecraftcity_v4
* ttt_mc_mineshaft
* ttt_mc_tiptsky_b5
* ttt_minecraft_b5
* ttt_krusty_krab
* ttt_Clue_se
* ttt_theship_v1
* ttt_mw2_terminal
* ttt_rooftops_2016_v1
* ttt_southpark
* ttt_community_bowling_v5a
* ttt_mw2_rust
* ttt_minecraftcity_v4_dark
* ttt_skyscraper
* ttt_camel_v1
* ttt_airbus_b3
* ttt_cluedo_b5_improved1
* ttt_mc_skyislands
* ttt_waterworld

### [Deathrun](https://steamcommunity.com/sharedfiles/filedetails/?id=215866002)
```
docker run -d \
--name deathrun \
--network=host \
-e MAP "deathrun_iceworld" \
-e MAX_PLAYERS "24" \
-e GAMEMODE "deathrun" \
-e WORKSHOP_COLLECTION "215866002" \
-e AUTH_KEY "XXXXXX" \
laynal/docker-gmod
```
#### Deathrun Maps
* deathrun_iceworld_v2fix
* deathrun_simpsons_finalfix
* deathrun_helix_b8
* deathrun_tribute_final
* deathrun_rocketending_v4
* deathrun_mountains_rc
* Deathrun_Goldfever_a
* deathrun_industrial
* deathrun_family_guy_final2
* deathrun_tp_percolate_oreo
* deathrun_cb_egypt_v1
* deathrun_marvelicious_alpha

### [The Hidden](https://steamcommunity.com/sharedfiles/filedetails/?id=1605914841)
```
docker run -d \
--name hidden \
--network=host \
-e MAP "hdn_decay" \
-e MAX_PLAYERS "24" \
-e GAMEMODE "thehidden" \
-e WORKSHOP_COLLECTION "1605914841" \
-e AUTH_KEY "XXXXXX" \
laynal/docker-gmod
```
#### The Hidden Maps
* hdn_decay
* hdn_derelict
* hdn_discovery
* hdn_docks
* hdn_executive
* hdn_highrise
* hdn_origin
* hdn_sewers
* hdn_stalkyard
* hdn_traindepot
* htr_tutorial
* mtr_tutorial
* ovr_derelict
* ovr_docks
* ovr_executive

### [Murder](https://steamcommunity.com/sharedfiles/filedetails/?id=1606051310)
```
docker run -d \
--name murder \
--network=host \
-e MAP "md_clue" \
-e MAX_PLAYERS "24" \
-e GAMEMODE "murder" \
-e WORKSHOP_COLLECTION "1606051310" \
-e AUTH_KEY "XXXXXX" \
laynal/docker-gmod
```
#### Murder Maps
* cs_office
* de_chateau
* cs_italy
* md_clue
* mu_nightmare_church
* de_chateau
* de_prodigy
* gm_housewithgardenV2
* de_forest

### [GunGame](https://steamcommunity.com/sharedfiles/filedetails/?id=1606154573)
```
docker run -d \
--name gungame \
--network=host \
-e MAP "cs_assault" \
-e MAX_PLAYERS "24" \
-e GAMEMODE "gungame" \
-e WORKSHOP_COLLECTION "1606154573" \
-e AUTH_KEY "XXXXXX" \
laynal/docker-gmod
```
#### GunGame Maps
* de_aztec
* de_cbble
* de_chateau
* de_dust
* de_dust2
* de_inferno
* de_nuke
* de_piranesi
* cs_assault
* cs_compound
* cs_havana
* cs_italy
* cs_militia
* cs_office
* de_port
* de_prodigy
* de_tides
* de_train
