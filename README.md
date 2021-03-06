<h2 align='center'>Counter-Strike: Global Offensive Server Installer</h2>

<p align='center'>Automated Counter-Strike Global Offensive Server Installer with Metamod and Sourcemod.</p>

<p align='center'><img src="http://drive.google.com/uc?export=view&id=0B53_UHGqg56QV2R1cVBqYVlvYzA"></p>
<br><br>
Metamod: https://www.sourcemm.net/
<br>
Metamod Plugins: https://forums.alliedmods.net/forumdisplay.php?f=108
<br><br>
SourceMod: http://www.sourcemod.net/
<br>
SourceMod Plugins: http://www.sourcemod.net/plugins.php?cat=0&mod=21&title=&author=&description=&search=1

<br><br>
CSGO Automated Server Options
------------------------------------
+ Standard Server (Casual, Competitive, Arms Race, Demolition, and Deathmatch)
+ Practice Mode Server /w Config and Nade Tails Plugin (https://forums.alliedmods.net/showthread.php?t=240668)
+ Retakes Server /w Retakes v1.2.1 Plugin (https://forums.alliedmods.net/showthread.php?t=251829)
+ Game Mode & Game Type Selection
+ Map Group Selection
+ Map Selection
+ Tickrate Selection
+ Max Players Selection
+ IP Address Selection
+ Server Listen Port Selection

<br><br>

Compatibility
-------------
+ CentOS 6/7
+ Fedora 19/20
+ Ubuntu 12/14
+ Debian 6/7

<br><br>

Install
-------
```
su root
```
```
wget --no-check-certificate https://raw.githubusercontent.com/stokes84/Counter-Strike-Global-Offensive-Server-Installer/master/install.sh; bash install.sh; rm -f install.sh
```

<br><br>

Usage
-----
```
su steam
```
For interactive launcher (Practice Mode, Retakes, or Server Option Selectors)
```
csgo
```
For classic CLI launcher (options listed @ bottom)
```
cd /home/steam/csgo
```
```
./srcds_run -game csgo +Command_Line_Options
```

<br><br>

Command Line Options
--------------------
+ -usercon (enable rcon)
+ -strictportbind (prevent binding to next available port)
+ -ip
+ -port (default 27015)
+ +clientport (default: 27005)
+ -steamport
+ +tv_port
+ -tickrate
+ +map
+ +servercfgfile
+ -maxplayers_override
+ +mapgroup
+ +game_mode
+ +game_type
+ +host_workshop_collection 
+ +workshop_start_map 
+ -authkey
