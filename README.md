# ValheimServer
Server scripts and template folder structure from Valheim.

This is specifically for setting up a Valheim dedicated server on Windows (Mine is hosting on Azure in a Windows Server 2019 Core).

To use this server setup you will need to setup SteamCMD.

1. Copy this repository folder stucture into the c:\ folder on your server. 
2. Download SteamCMD for Windows: https://steamcdn-a.akamaihd.net/client/installer/steamcmd.zip
3. Extract the contents of the zip to the folder c:\steamcmd

Once this is complete, you need to configure your server by editing last line in the file c:\valheim-server\valheim\start_backup.bat

C:\valheim-server\valheim\valheim_server.exe -nographics -batchmode -name "my-server-name" -port 2456 -world "my-world-name" -password "my-password" -savedir "c:\valheim-server\valheim_worlds" -public=0

Change anything with "my-" to be the values you want to use for your server.

If you need documentation on the valheim_server.exe parameters, you can find that here:
https://valheim.fandom.com/wiki/Hosting_Servers

Finalyy, run the c:\valheim-server\valheim\start_backup.bat.  The script does the following:

1. Copy the valheim_worlds folder and the start_headless_server.bat into the valheim_backup folder.
2. Install/update the valheim server files.
3. Start the valheim server.

Once this is working properly, you can use the included Non-Sucking Service Manager in the nssm-2.24 folder to configure that start_backup.bat as a service.
This will aloow you to schedule downtime and restarts.  Every time the start_backup.bat command is invoked, valheim will be backup and updated as above.

***More updates coming soon

I hope this help a few people!
