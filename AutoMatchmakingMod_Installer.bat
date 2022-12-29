@echo off
IF NOT EXIST Titanfall2.exe (
    echo "Wrong folder, only execute this script in your Titanfall2 game folder"
    pause
    exit
)
curl -LO https://github.com/R2Northstar/Northstar/releases/download/v1.11.1/Northstar.release.v1.11.1.zip
tar -xf Northstar.release.v1.11.1.zip
del discord_game_sdk.dll
rmdir /s /q "R2Northstar/plugins"
rmdir /s /q "R2Northstar/mods"
mkdir "R2Northstar/mods/TimeIsUnending.AutoMatchmaking.1.0.3"
cd R2Northstar/mods/TimeIsUnending.AutoMatchmaking.1.0.3
curl -LO https://github.com/TimeIsUnending/TF2-Auto-Matchmaking-Mod/releases/download/v1.0.3/TimeIsUnending.AutoMatchmaking.1.0.3.zip
tar -xf TimeIsUnending.AutoMatchmaking.1.0.3.zip
del TimeIsUnending.AutoMatchmaking.1.0.3.zip
cd ../../..
echo -multiple -norestrictservercommands +ns_has_agreed_to_send_token 2 > ns_startup_args.txt
del Northstar.release.v1.11.1.zip