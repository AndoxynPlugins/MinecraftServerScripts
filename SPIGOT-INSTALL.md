Minecraft Server Scripts
========================
These are for the Minecraft server.

Installation
============

First you have to download the scripts. You can do this using:
```
git clone https://github.com/daboross/MinecraftServerScripts.git
```
Then you will want to copy all the scripts into /usr/local/bin:
```
cd MinecraftServerScripts
sudo cp src/MinecraftServer/mc-* /usr/local/bin
```

Next I would recommend setting up a crontab. The following crontab will check if the server is running every 15 minutes, and it it isn't restart it. Also it will start the server on boot, and migrate the log every 24 hours.
```
PATH="$PATH:/usr/local/bin"
@reboot mc-start-server
*/15 * * * * mc-server-script
59 23 * * * mc-log-migrate
```

Spigot setup
============
These minecraft scripts will automatically download Spigot for you.

One thing you might want to do is set the restart script to mc-spigot-restart so it works correctly.

You can do this by looking for the 'restart-script' line in spigot.yml, and replacing './start.sh' with '/usr/bin/mc-spigot-restart'.
