Minecraft Server Scripts
========================
These are for the Minecraft server using CraftBukkit.

Installation
============

First you have to download the scripts. You can do this using:
{{{
git clone https://github.com/daboross/MinecraftServerScripts.git
}}}
Then you will want to copy all the scripts into /usr/bin:
{{{
cd MinecraftServerScripts
sudo cp Bukkit/mc-* /usr/bin
}}}

Next I would recommend setting up a crontab. The following crontab will check if the server is running every 15 minutes, and it it isn't restart it. Also it will start the server on boot, and migrate the log every 24 hours.
{{{
@reboot mc-start-server
*/15 * * * * mc-server-script
59 23 * * * mc-log-migrate
}}}

Lastly, you will need to download CraftBukkit.

Create a 'jars' directory in your home directory. This can be done using:
{{{
mkdir "$HOME/jars"
}}}
Then download your build of choise. Do one of the next 3 commands.
{{{
# Latest recommended build
wget "http://dl.bukkit.org/latest-rb/craftbukkit-rb.jar" -O "$HOME/jars/craftbukkit.jar"

# Latest beta build
wget "http://dl.bukkit.org/latest-beta/craftbukkit-beta.jar" -O "$HOME/jars/craftbukkit.jar"

# Latest dev build
wget "http://dl.bukkit.org/latest-dev/craftbukkit-dev.jar" -O "$HOME/jars/craftbukkit.jar"
}}}
