# http://wiki.garrysmod.com/page/Linux_Dedicated_Server_Hosting
# https://bitbucket.org/xspacesoft/prophunt-hidenseek-original/
FROM ubuntu

ENV LANG en_US.utf8

RUN dpkg --add-architecture i386 && \
	apt-get update -y && \
	apt-get install -y wget unzip nano sudo lib32tinfo5 locales locales-all lib32ncurses5 lib32z1 lib32gcc1 lib32stdc++6 && \
	rm -rf /var/lib/apt/lists/* && \
	localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8 && \
	useradd -m steam

USER steam

WORKDIR /home/steam

RUN wget -O ./steamcmd_linux.tar.gz "http://media.steampowered.com/client/steamcmd_linux.tar.gz" &&\
	tar -xvzf ./steamcmd_linux.tar.gz &&\
	./steamcmd.sh +login anonymous +quit &&\
	./steamcmd.sh +login anonymous +force_install_dir "./gmod" +app_update 4020 validate +quit && \
	./steamcmd.sh +login anonymous +force_install_dir "./content/css" +app_update 232330 validate +quit

CMD ./gmod/srcds_run -game garrysmod +maxplayers 12 +map gm_flatgrass +gamemode sanbox
#CMD ./gmod/srcds_run -console -game garrysmod +maxplayers 24 +host_workshop_collection 177117131 -authkey $AUTH_KEY +map TTT_Nuclear_Power_b2 +gamemode prop_hunt
