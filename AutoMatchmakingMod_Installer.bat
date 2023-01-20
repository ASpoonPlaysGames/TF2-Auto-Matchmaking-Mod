@echo off
IF NOT EXIST Titanfall2.exe (
    echo "Installer executed in the wrong folder, make sure you are running this in your Titanfall2 install folder!"
    pause
    exit
)
curl -LO https://github.com/R2Northstar/Northstar/releases/download/v1.11.1/Northstar.release.v1.11.1.zip
tar -xf Northstar.release.v1.11.1.zip
del discord_game_sdk.dll
rmdir /s /q "R2Northstar/plugins/DiscordRPC.dll"
rmdir /s /q "R2Northstar/mods/Northstar.Client"
rmdir /s /q "R2Northstar/mods/Northstar.Custom"
rmdir /s /q "R2Northstar/mods/Northstar.CustomServers"
mkdir "R2Vanilla/mods/TimeIsUnending.AutoMatchmaking.1.0.4"
cd R2Vanilla/mods/TimeIsUnending.AutoMatchmaking.1.0.4
curl -LO https://github.com/TimeIsUnending/TF2-Auto-Matchmaking-Mod/releases/download/v1.0.4/TimeIsUnending.AutoMatchmaking.1.0.4.zip
tar -xf TimeIsUnending.AutoMatchmaking.1.0.4.zip
del TimeIsUnending.AutoMatchmaking.1.0.4.zip
cd ../../..
echo -multiple -norestrictservercommands -profile="R2Vanilla" +ns_has_agreed_to_send_token 2 > ns_startup_args.txt
del Northstar.release.v1.11.1.zip
