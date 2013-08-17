BungeeCord Server Scripts
=========================
These are for the BungeeCord servers.

Installation
============

First you have to download the scripts. You can do this using:
{{{
git clone https://github.com/daboross/MinecraftServerScripts.git
}}}
Then you will want to copy all the scripts into /usr/bin:
{{{
cd MinecraftServerScripts
sudo cp MinecraftServer/mc-* /usr/bin
}}}

Next I would recommend setting up a crontab. The following crontab will check if the server is running every 15 minutes, and it it isn't restart it. Also it will start the server on boot, and migrate the log every 24 hours.
{{{
@reboot bc-start-server
*/15 * * * * bc-server-script
59 23 * * * bc-log-migrate
}}
