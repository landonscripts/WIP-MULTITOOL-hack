@echo off
color 0a
mode con: cols=80 lines=25
title MULTI TOOL

:: Password System
:passwordPrompt
call USRPW.cmd
cls
echo.
echo [1m[38;5;196m==================================================
echo [1m[38;5;202m          By Landon-ED - ONLY USE AT YOUR OWN RISK
echo [1m[38;5;196m==================================================
echo.
set /p password=Enter the password to continue:
if "%password%"=="%USRPW%" goto mainMenu
echo [1m[38;5;196mIncorrect password. Access denied.
pause
exit /b

:: Main Menu
:mainMenu
cls
echo [1m[38;5;196m==================================================
echo [1m[38;5;202m          By Landon-ED - ONLY USE AT YOUR OWN RISK
echo [1m[38;5;196m==================================================
pause

:: Function to display the title with alternating colors
:showTitle
cls
echo.
for /l %%i in (1,1,5) do (
    echo [1m[38;5;196m███╗   ███╗██╗   ██╗██╗  ████████╗██╗    ████████╗ ██████╗  ██████╗ ██╗
    echo [1m[38;5;202m████╗ ████║██║   ██║██║  ╚══██╔══╝██║    ╚══██╔══╝██╔═══██╗██╔═══██╗██║
    echo [1m[38;5;196m██╔████╔██║██║   ██║██║     ██║   ██║       ██║   ██║   ██║██║   ██║██║
    echo [1m[38;5;202m██║╚██╔╝██║██║   ██║██║     ██║   ██║       ██║   ██║   ██║██║   ██║██║
    echo [1m[38;5;196m██║ ╚═╝ ██║╚██████╔╝███████╗██║   ██║       ██║   ╚██████╔╝╚██████╔╝███████╗
    echo [1m[38;5;202m╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝   ╚═╝       ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝
    timeout /t 1 >nul
)
exit /b

:menu
call :showTitle
echo.
echo [1m[38;5;196m        [1] VMware
echo [1m[38;5;202m        [2] IPLogger
echo [1m[38;5;196m        [3] Phone Spoofer
echo [1m[38;5;202m        [4] Wi-Fi Bruteforce
echo [1m[38;5;196m        [5] DDOS
echo [1m[38;5;202m        [6] Email Spammer
echo [1m[38;5;196m        [7] BEST!!
echo [1m[38;5;202m        [8] X-Hell
echo [1m[38;5;196m        [9] Schoois Multi
echo [1m[38;5;202m        [10] VPN IG
echo [1m[38;5;196m        [11] Next Page
echo.
echo [1m[38;5;202m        [0] Exit
echo.
set /p choice=Select an option:
cls
if "%choice%"=="0" exit /b
if "%choice%"=="1" call :openTool "C:\Program Files (x86)\VMware\VMware Workstation\vmware.exe" "VMware"
if "%choice%"=="2" call :openURL "https://iplogger.org/" "IPLogger"
if "%choice%"=="3" call :openURL "https://mobile.spooftel.com/freecall/index.php" "Phone Spoofer"
if "%choice%"=="4" call :downloadAndRun "https://raw.githubusercontent.com/Illusivehacks/wifi-bruteforcer/main/bruteforce.bat" "Wi-Fi Bruteforce"
if "%choice%"=="5" call :downloadAndRun "https://gist.githubusercontent.com/xeonreallycodes/9a56f1dfa7560a001e89623caa35c43c/raw/ddos-tool.bat" "DDOS multi-tool"
if "%choice%"=="6" call :downloadAndExtract "https://codeload.github.com/qro/gmail-spammer/zip/refs/heads/master" "gmail-spammer.zip" "Email Spammer" "gmail-spammer\gmail-spammer-master\run.bat"
if "%choice%"=="7" call :downloadAndExtract "https://example.com/path/to/repository.zip" "best-tool.zip" "BEST tool" "best-tool\setup.bat"
if "%choice%"=="8" call :downloadAndExtract "https://github.com/seized0/xhell/archive/refs/heads/main.zip" "xhell.zip" "X-Hell" "xhell\xhell-main\install.bat"
if "%choice%"=="9" call :downloadAndExtract "https://github.com/SchooiCodes/smt/releases/download/v2.2/SchooisMultitool_v2.2.zip" "SchooisMultitool_v2.2.zip" "Schoois Multi Tool" "SchooisMultitool\start.bat"
if "%choice%"=="10" call :downloadAndExtract "https://github.com/Xooppp/Cypher-MINITOOL/raw/main/cypher-mini.rar" "cypher-mini.rar" "VPN IG" "cypher-mini\start.bat"
if "%choice%"=="11" goto nextPage
echo [1m[38;5;196mInvalid choice, please try again.
pause
goto menu

:nextPage
call :showTitle
echo.
echo [1m[38;5;196m        [12] Exit to Main Menu
echo [1m[38;5;202m        [13] IP Changer
echo [1m[38;5;196m        [14] Pluto Hacking
echo [1m[38;5;202m        [15] Your Password Ain't Safe (BF)
echo [1m[38;5;196m        [16] Password Generator
echo [1m[38;5;202m        [17] Wi-Fi Pinger
echo.
set /p choice=Select an option:
cls
if "%choice%"=="12" goto menu
if "%choice%"=="13" call :downloadAndRun "https://github.com/Hxrshrathore/IPChanger/raw/main/change_ip_config.bat" "IP Changer"
if "%choice%"=="14" call :downloadAndExtract "https://github.com/marsneptunepluto/Pluto-Multitool/releases/download/v1.2/Pluto-Multitool.zip" "Pluto-Multitool.zip" "Pluto Hacking Tool" "Pluto-Multitool\start.bat"
if "%choice%"=="15" call :runPasswordBruteForcer
if "%choice%"=="16" call :passwordGenerator
if "%choice%"=="17" call :wifiPinger
echo [1m[38;5;196mInvalid choice, please try again.
pause
goto nextPage

:openTool
echo [1m[38;5;196mOpening %~2...
start "" "%~1"
if %errorlevel%==0 (
    echo [1m[38;5;202m%~2 launched successfully.
) else (
    echo [1m[38;5;196mFailed to launch %~2. Please ensure it is installed and the path is correct.
)
pause
goto menu

:openURL
echo [1m[38;5;196mOpening %~2 in your default browser...
start "" "%~1"
if %errorlevel%==0 (
    echo [1m[38;5;202m%~2 website opened successfully.
) else (
    echo [1m[38;5;196mFailed to open the %~2 website. Please check your internet connection.
)
pause
goto menu

:downloadAndRun
echo [1m[38;5;196mDownloading and running %~2 script...
powershell -Command "Invoke-WebRequest -Uri '%~1' -OutFile '%~2.bat'"
if exist "%~2.bat" (
    echo [1m[38;5;202m%~2 script downloaded successfully.
    echo [1m[38;5;196mRunning the script...
    call "%~2.bat"
) else (
    echo [1m[38;5;196mFailed to download the %~2 script. Please check your internet connection.
)
pause
goto menu

:downloadAndExtract
echo [1m[38;5;196mDownloading and setting up %~3...
powershell -Command "Invoke-WebRequest -Uri '%~1' -OutFile '%~2'"
if exist "%~2" (
    echo [1m[38;5;202m%~3 downloaded successfully.
    echo [1m[38;5;196mExtracting the file...
    if "%~x2"==".zip" (
        powershell -Command "Expand-Archive -Path '%~2' -DestinationPath '%~n2'"
    ) else (
        if exist "C:\Program Files\7-Zip\7z.exe" (
            "C:\Program Files\7-Zip\7z.exe" x "%~2" -o"%~n2"
        ) else (
            echo [1m[38;5;196m7-Zip or WinRAR is required to extract the file. Please install it and try again.
            pause
            goto menu
        )
    )
    if exist "%~n2" (
        echo [1m[38;5;202mExtraction successful.
        echo [1m[38;5;196mRunning the tool...
        cd "%~n2"
        call "%~4" || echo [1m[38;5;196mIf "%~4" is not found, check the extracted files for the correct script.
    ) else (
        echo [1m[38;5;196mFailed to extract the file.
    )
) else (
    echo [1m[38;5;196mFailed to download the %~3. Please check your internet connection.
)
pause
goto menu

:runPasswordBruteForcer
echo [1m[38;5;196mDownloading and running Your Password Ain't Safe (BF)...
where deno >nul 2>&1
if %errorlevel% neq 0 (
    echo [1m[38;5;202mInstalling Deno...
    powershell -Command "iwr https://deno.land/x/install/install.ps1 -useb | iex"
    if %errorlevel% neq 0 (
        echo [1m[38;5;196mFailed to install Deno. Please check your internet connection.
        pause
        goto nextPage
    )
)
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/blatant-striker/Password-BruteForcer-Simulation/raw/main/bruteforcer.js' -OutFile 'bruteforcer.js'"
if exist "bruteforcer.js" (
    echo [1m[38;5;202mPassword BruteForcer script downloaded successfully.
    echo [1m[38;5;196mRunning the script using Deno...
    deno run bruteforcer.js
) else (
    echo [1m[38;5;196mFailed to download the Password BruteForcer script. Please check your internet connection.
)
pause
goto nextPage

:passwordGenerator
echo [1m[38;5;196mPassword Generator
echo [1m[38;5;202m================
echo.
set /p length=Enter the desired length of the password:
if %length% LEQ 0 (
    echo [1m[38;5;196mInvalid length. Please enter a positive number.
    pause
    goto passwordGenerator
)
setlocal enabledelayedexpansion
set "chars=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%%^&*()"
set "password="
for /l %%i in (1,1,%length%) do (
    set /a "rand=!random! %% 72"
    for %%j in (!rand!) do set "password=!password!!chars:~%%j,1!"
)
echo.
echo [1m[38;5;202mGenerated Password: !password!
echo.
pause
goto nextPage

:wifiPinger
echo [1m[38;5;196mWi-Fi Pinger
echo [1m[38;5;202m============
echo.
set /p ip=Enter the IP address to ping (e.g., 192.168.1.1):
set /p count=Enter the number of packets to send:
if %count% LEQ 0 (
    echo [1m[38;5;196mInvalid packet count. Please enter a positive number.
    pause
    goto wifiPinger
)
echo [1m[38;5;202mPinging %ip% with %count% packets...
ping -n %count% %ip% > ping_results.txt
for /f "tokens=6,10,13 delims=, " %%a in ('findstr /c:"Packets:" ping_results.txt') do (
    set sent=%%a
    set received=%%b
    set lost=%%c
)
echo.
echo [1m[38;5;202mPing Results:
echo [1m[38;5;196mPackets Sent: %sent%
echo [1m[38;5;196mPackets Received: %received%
echo [1m[38;5;196mPackets Lost: %lost%
del ping_results.txt
pause
goto nextPage
