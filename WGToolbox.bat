@echo off
cls
ver | findstr /i "10" > nul
if %errorlevel% == 0 (
  echo Windows 10 detected.
  goto menu
  cls
) else (
  ver | findstr /i "11" > nul
  if %errorlevel% == 0 (
    echo Windows 11 detected.
    goto menu
    cls
  ) else (
    echo Warning: The version of Windows you are using does not support winget and Winget Toolbox needs winget to work.
  )
)

pause

title Winget Toolbox
cls
color 4F  
echo WINGET TOOLBOX
color 07 

:menu
echo WINGET TOOLBOX rev1
echo 1. Search for a package
echo 2. Install a package
echo 3. Update a package
echo 4. Uninstall a package
echo 5. List
echo 6. Exit
echo.
set /p choice="Enter your choice: "
echo.

if %choice%==1 (
  echo Enter the package name:
  set /p package_name=
  winget search "%package_name%"
  pause
  goto menu
) else if %choice%==2 (
  echo Enter the package name:
  set /p package_name=
  echo Enter the package ID:
  set /p package_id=
  winget install --id "%package_id%"
  if errorlevel 1 (
    echo Error installing package.
  ) else (
    echo Package installed successfully.
  )
  pause
  goto menu
) else if %choice%==3 (
  echo Enter the package ID:
  set /p package_id=
  winget upgrade --id "%package_id%"
  if errorlevel 1 (
    echo Error updating package.
  ) else (
    echo Package updated successfully.
  )
  pause
  goto menu
) else if %choice%==4 (
  echo Enter the package ID:
  set /p package_id=
  winget uninstall --id "%package_id%"
  if errorlevel 1 (
    echo Error uninstalling package.
  ) else (
    echo Package uninstalled successfully.
  )
  pause
  goto menu
) else if %choice%==5 (
  winget list
  pause
  goto menu
) else if %choice%==6 (
  echo Exiting...
  exit
) else (
  echo Invalid choice.
  pause
  goto menu
)
