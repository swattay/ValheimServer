@ECHO ON
SET ThisScriptsDirectory="c:\valheim-server\scripts\ps\\"
SET PowerShellScriptPath=%ThisScriptsDirectory%Start-ValheimDedicatedServer.ps1
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '%PowerShellScriptPath%' -PathToSteamCMD 'C:\steamcmd' -PathToValheimBackup 'C:\valheim-server\valheim_backup' -PathToValheimInstall 'C:\valheim-server\valheim' -PathToData 'C:\valheim-server\valheim_worlds'"

C:\valheim-server\valheim\valheim_server.exe -nographics -batchmode -name "my-server-name" -port 2456 -world "world" -password "password" -savedir "c:\valheim-server\valheim_worlds" -public=0


