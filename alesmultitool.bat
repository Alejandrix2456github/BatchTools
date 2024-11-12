@echo off
color 0a
chcp 65001
:home
cls
color 0a
title AK245's Multitool 
echo.
echo ███╗   ███╗██╗   ██╗██╗  ████████╗██╗████████╗ ██████╗  ██████╗ ██╗     
echo ████╗ ████║██║   ██║██║  ╚══██╔══╝██║╚══██╔══╝██╔═══██╗██╔═══██╗██║     
echo ██╔████╔██║██║   ██║██║     ██║   ██║   ██║   ██║   ██║██║   ██║██║     
echo ██║╚██╔╝██║██║   ██║██║     ██║   ██║   ██║   ██║   ██║██║   ██║██║     
echo ██║ ╚═╝ ██║╚██████╔╝███████╗██║   ██║   ██║   ╚██████╔╝╚██████╔╝███████╗
echo ╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝   ╚═╝   ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝
echo A batch script coded by AK245
echo.
echo ===========================================================================================================
echo Hello %username%!
echo.
echo Commands:
echo.
echo 1 - Check if a server is online [beta]
echo 2 - Make a note in this folder
echo 3 - Test your wifi connection
echo 4 - SysInfo
echo 5 - User info on this PC
echo 6 - Generate a random number.
echo 7 - Cancel
echo ===========================================================================================================
set /p Home= Command: 
if %Home%==1 goto servertest
if %Home%==2 goto note
if %Home%==3 goto wifitest
if %Home%==4 goto sysinfo
if %Home%==5 goto users
if %Home%==6 goto randnum
if %Home%==7 goto cancel
if %Home%==loadplugin goto pluginload
if %Home%==hist goto history
if %Home%==info goto info
if %Home%==thisisasecret goto secret
goto pluginload
echo That is an invalid command.
pause
goto home

:pluginload
start plugins\%Home%.bat
goto home


:randnum
title ALE'S Multitool - Generating a random number
cls
echo %random%
echo Number Generated successfully!
pause
goto home



:servertest
cls
title ALE'S MULTITOOL - Checking a server's status
set /p page= Enter the server you would like to test: 
cls
echo Checking "%page%" (this may take a bit.)
echo The Issues thing isnt avalible yet
ping %page%>nul
cls
if errorlevel 1 (
echo The server "%page%" is offline
) else echo The server "%page%" is online
pause
goto home


:cancel
cls
title ALE'S MULTITOOL - Exiting...
echo Bye!
timeout 3 /NOBREAK >nul
exit


:note
cls
title ALE'S MULTITOOL - Making a note
set /p note= Enter your note: 
set /p name= Enter what you want to name your file: 
echo %note% >> %name%.txt
pause
goto home


:wifitest
cls
title ALE'S MULTITOOL - Testing internet connection
echo Testing your internet...
ping 8.8.8.8>nul
cls
if errorlevel 1 (
echo Not Connected
) else echo Connected
pause
goto home


:sysinfo
sysinfo
cls
pause
goto home


:users
cls
title ALE'S MULTITOOL - Checking user info
net user
set /p usr= Please enter the username you want info about: 
cls 
net user %usr%
pause
goto home


:history
cls
title ALE'S MULTITOOL - Checking user info
title Checking command history
echo Command history:
doskey /history
pause
goto home


:secret
cls
echo This menu is where I put all the fun commands
pause
goto secretcmds


:info
cls
title ALE'S MULTITOOL - Showing version info
echo Multitool v1.0
echo.
echo Changelog:
echo Release
echo.
echo.
echo (c) AK245. 2024
echo.
echo    ██╗ 
echo ██╗╚██╗
echo ╚═╝ ██║
echo ██╗ ██║
echo ╚═╝██╔╝
echo    ╚═╝ 
echo.
echo.
pause
goto home



:canceldebg
goto home
echo Something went wrong.
timeout 2 /NOBREAK >nul
goto secretcmds

:ipclip
cls
echo This command will copy ALL IP INFO to you clipboard, DO NOT send this to an untrusted source.
pause
echo Copying...
ipconfig /all | clip
cls
echo IP info copied!
pause
goto secretcmds


:credits
cls 
echo.
echo.
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo.
echo Created by: AK245.
echo Original by: Corbin H.
echo Thank you for using my multitool!
echo.
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
timeout 1 /NOBREAK >nul
cls 
echo.
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo.
echo Created by: AK245.
echo Original by: Corbin H.
echo.
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
timeout 1 /NOBREAK >nul
cls 
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo.
echo Created by: AK245.
echo Original by: Corbin H.
echo.
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
timeout 1 /NOBREAK >nul
cls
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo.
echo Created by: AK245.
echo Original by: Corbin H.
echo.
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
timeout 1 /NOBREAK >nul
cls
echo.
echo Created by: AK245.
echo Original by: Corbin H.
echo.
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
timeout 1 /NOBREAK >nul
cls
echo 
echo Original by: Corbin H.
echo.
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
timeout 1 /NOBREAK >nul
cls
echo Thank you for using my multitool!
echo.
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
timeout 1 /NOBREAK >nul
cls
echo.
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
timeout 1 /NOBREAK >nul
cls
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
timeout 1 /NOBREAK >nul
cls
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
timeout 1 /NOBREAK >nul
cls
timeout 1 /NOBREAK >nul
goto secretcmds

