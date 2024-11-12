@echo off
title ToolLauncher
set /p tool= Enter tool you want to load:
start %tool%
echo The selected tool has been launched!
pause
