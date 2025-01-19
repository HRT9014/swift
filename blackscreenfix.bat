@echo off
setlocal enabledelayedexpansion

cls

echo Void's BSF Setup. Created by 109dg.

set "green=[1;32m"
set "red=[1;31m"
set "reset_color=[0m"


tasklist /fi "imagename eq bloxstrap.exe" | find /i "bloxstrap.exe" >nul
if not errorlevel 1 (
    echo %red%BLOXSTRAP is running. Killing the process.
    taskkill /f /im bloxstrap.exe >nul 2>&1
)

tasklist /fi "imagename eq robloxplayerbeta.exe" | find /i "robloxplayerbeta.exe" >nul
if not errorlevel 1 (
    echo %red%ROBLOX is running. Killing the process.
    taskkill /f /im robloxplayerbeta.exe >nul 2>&1
)

if exist "%localappdata%\Bloxstrap" (
    echo %green%Removing BLOXSTRAP and Reinstalling...
    rmdir /s /q "%localappdata%\Bloxstrap"
) else (
    echo BLOXSTRAP not found. Installing...
)

set REPO_URL=https://api.github.com/repos/bloxstraplabs/bloxstrap/releases/latest

curl -s %REPO_URL% > latest_release.json

for /f "tokens=*" %%A in ('powershell -Command "(Get-Content latest_release.json | ConvertFrom-Json).assets | Where-Object { $_.name -like '*.exe' } | Select-Object -ExpandProperty browser_download_url"') do set EXE_URL=%%A

set DOWNLOAD_PATH=%USERPROFILE%\Downloads\bloxstrap_installer.exe

echo Downloading...
curl -s -L -o "%DOWNLOAD_PATH%" %EXE_URL%

del latest_release.json >nul 2>&1

echo Please install BLOXSTRAP and then continue.
start "" "%USERPROFILE%\Downloads\bloxstrap_installer.exe"

:loop
tasklist | find /i "robloxplayerbeta.exe" >nul
if %errorlevel%==0 (
    echo Launched
    goto end
)
timeout /t 1 >nul
goto loop
:end

tasklist /fi "imagename eq bloxstrap.exe" | find /i "bloxstrap.exe" >nul
if not errorlevel 1 (
    echo %reset_color%BLOXSTRAP is running. Killing the process.
    taskkill /f /im bloxstrap.exe >nul 2>&1
)

tasklist /fi "imagename eq robloxplayerbeta.exe" | find /i "robloxplayerbeta.exe" >nul
if not errorlevel 1 (
    echo ROBLOX is running. Killing the process.
    taskkill /f /im robloxplayerbeta.exe >nul 2>&1
)

timeout /t 5 >nul

set "path1=%localappdata%\Bloxstrap\Bloxstrap.exe"
set "path2="


for /d %%F in (%localappdata%\Bloxstrap\Versions\version-*) do set "path2=%%F\RobloxPlayerBeta.exe"
if not exist "%path1%" (
    echo %red%Bloxstrap.exe not found at the specified path.
	echo Install the latest Bloxstrap and try again.%reset_color%
	echo Press any key to exit...
	pause >nul
    exit /b 1
)
if not exist "%path2%" (
    echo %red%RobloxPlayerBeta.exe not found at the specified path.
	echo Launch Roblox through Bloxstrap and try again.%reset_color%
	echo Press any key to exit...
	pause >nul
    exit /b 2
)

reg add "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "%path1%" /t REG_SZ /d "~ DISABLEDXMAXIMIZEDWINDOWEDMODE" /f
reg add "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "%path2%" /t REG_SZ /d "~ DISABLEDXMAXIMIZEDWINDOWEDMODE" /

echo %red%Black screen hopefully fixed, try injecting Swift.%reset_color%
echo Press any key to exit...
pause >nul
exit /b 0
set "roblox_dir=%localappdata%\Roblox\Versions"
if not exist "%roblox_dir%" (
    echo Roblox directory not found.
    pause
    exit /b
)
for /d %%d in ("%roblox_dir%\*") do (
    if exist "%%d\RobloxPlayerBeta.exe" (
        reg add "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "%%d\RobloxPlayerBeta.exe" /t REG_SZ /d "~ DISABLEDXMAXIMIZEDWINDOWEDMODE" /f
        if %errorlevel% neq 0 (
            echo Failed to modify compatibility settings for %%d\RobloxPlayerBeta.exe.
        ) else (
            echo Fullscreen optimizations disabled for %%d\RobloxPlayerBeta.exe.
        )
    ) else (
        echo RobloxPlayerBeta.exe not found in %%d.
    )
)
echo All versions processed.

pause