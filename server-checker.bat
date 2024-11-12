@echo off
title Server Checker 1.0 
echo  Server Checker 1.0 - Made by AK245
set /p page= Enter the server you would like to test:
cls
echo Checking "%page%" (this may depend in your internet connection)
ping %page%>nul
cls
if errorlevel 1  (
echo The server of "%page%" is offline or you are not connected to the internet
) else echo The server of "%page%" is Online!
pause
