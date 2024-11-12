@echo off
title Roblox Server Checker 1.0
ping www.roblox.com>nul
cls
if errorlevel 1 (
echo Roblox servers are not online or you arent connected to the internet
) else echo Roblox servers are online!
pause
