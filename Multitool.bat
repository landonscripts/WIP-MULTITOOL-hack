=
echo [1m[38;5;202m          By Landon-ED - ONLY USE AT YOUR OWN RISK
echo [1m[38;5;196m==================================================
echo.
echo [1m[38;5;202mEnter the password to continue:
set /p password=Password: 

if "%password%"=="$1234$" goto mainMenu

echo [1m[38;5;196mIncorrect password. Access denied.
pause
exit /b

:: Main Menu
:mainMenu
cls
:: Disclaimer
echo [1m[38;5;196m==================================================
echo [1m[38;5;202m          By Landon-ED - ONLY USE AT YOUR OWN RISK
echo [1m[38;5;196m==================================================
echo.
pause

:: Function to set text color using ANSI escape codes
:setColor
echo %1
exit /b

:: Function to display the title with alternating colors
:showTitle
cls
echo.
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

if %choice%==1 goto vmware
if %choice%==2 goto iplogger
if %choice%==3 goto phonespoofer
if %choice%==4 goto wifibruteforce
if %choice%==5 goto ddos
if %choice%==6 goto emailspammer
if %choice%==7 goto best
if %choice%==8 goto xhell
if %choice%==9 goto schooismulti
if %choice%==10 goto vpnig
if %choice%==11 goto nextpage
if %choice%==0 exit

echo [1m[38;5;196mInvalid choice, please try again.
pause
goto menu

:vmware
cls
echo [1m[38;5;196mOpening VMware...
start "" "C:\Program Files (x86)\VMware\VMware Workstation\vmware.exe"
if %errorlevel%==0 (
    echo [1m[38;5;202mVMware launched successfully.
) else (
    echo [1m[38;5;196mFailed to launch VMware. Please ensure it is installed and the path is correct.
)
pause
goto menu

:iplogger
cls
echo [1m[38;5;196mOpening IPLogger in your default browser...
start "" "https://iplogger.org/"
if %errorlevel%==0 (
    echo [1m[38;5;202mIPLogger website opened successfully.
) else (
    echo [1m[38;5;196mFailed to open the IPLogger website. Please check your internet connection.
)
pause
goto menu

:phonespoofer
cls
echo [1m[38;5;196mOpening Phone Spoofer in your default browser...
start "" "https://mobile.spooftel.com/freecall/index.php"
if %errorlevel%==0 (
    echo [1m[38;5;202mPhone Spoofer website opened successfully.
) else (
    echo [1m[38;5;196mFailed to open the Phone Spoofer website. Please check your internet connection.
)
pause
goto menu

:wifibruteforce
cls
echo [1m[38;5;196mDownloading and running Wi-Fi Bruteforce script...
echo.

:: Download the bruteforce.bat file from GitHub
powershell -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/Illusivehacks/wifi-bruteforcer/main/bruteforce.bat' -OutFile 'bruteforce.bat'"

:: Check if the download was successful
if exist "bruteforce.bat" (
    echo [1m[38;5;202mWi-Fi Bruteforce script downloaded successfully.
    echo [1m[38;5;196mRunning the script...
    echo.
    call bruteforce.bat
) else (
    echo [1m[38;5;196mFailed to download the Wi-Fi Bruteforce script. Please check your internet connection.
)
pause
goto menu

:ddos
cls
echo [1m[38;5;196mDownloading and running DDOS multi-tool script...
echo.

:: Download the DDOS multi-tool script from GitHub Gist
powershell -Command "Invoke-WebRequest -Uri 'https://gist.githubusercontent.com/xeonreallycodes/9a56f1dfa7560a001e89623caa35c43c/raw/ddos-tool.bat' -OutFile 'ddos-tool.bat'"

:: Check if the download was successful
if exist "ddos-tool.bat" (
    echo [1m[38;5;202mDDOS multi-tool script downloaded successfully.
    echo [1m[38;5;196mRunning the script...
    echo.
    call ddos-tool.bat
) else (
    echo [1m[38;5;196mFailed to download the DDOS multi-tool script. Please check your internet connection.
)
pause
goto menu

:emailspammer
cls
echo [1m[38;5;196mDownloading and running Email Spammer tool...
echo.

:: Download the gmail-spammer repository as a ZIP file
powershell -Command "Invoke-WebRequest -Uri 'https://codeload.github.com/qro/gmail-spammer/zip/refs/heads/master' -OutFile 'gmail-spammer.zip'"

:: Check if the download was successful
if exist "gmail-spammer.zip" (
    echo [1m[38;5;202mEmail Spammer tool downloaded successfully.
    echo [1m[38;5;196mExtracting the ZIP file...
    powershell -Command "Expand-Archive -Path 'gmail-spammer.zip' -DestinationPath 'gmail-spammer'"
    if exist "gmail-spammer" (
        echo [1m[38;5;202mExtraction successful.
        echo [1m[38;5;196mRunning the Email Spammer tool...
        cd gmail-spammer\gmail-spammer-master
        echo [1m[38;5;202mPlease follow the instructions in the tool to proceed.
        call run.bat || echo [1m[38;5;196mIf "run.bat" is not found, check the extracted files for the correct script.
    ) else (
        echo [1m[38;5;196mFailed to extract the ZIP file.
    )
) else (
    echo [1m[38;5;196mFailed to download the Email Spammer tool. Please check your internet connection.
)
pause
goto menu

:best
cls
echo [1m[38;5;196mDownloading and setting up the BEST tool...
echo.

:: Download the BEST tool from the provided URL
powershell -Command "Invoke-WebRequest -Uri 'https://example.com/path/to/repository.zip' -OutFile 'best-tool.zip'"

:: Check if the download was successful
if exist "best-tool.zip" (
    echo [1m[38;5;202mBEST tool downloaded successfully.
    echo [1m[38;5;196mExtracting the ZIP file...
    powershell -Command "Expand-Archive -Path 'best-tool.zip' -DestinationPath 'best-tool'"
    if exist "best-tool" (
        echo [1m[38;5;202mExtraction successful.
        echo [1m[38;5;196mRunning setup.bat...
        cd best-tool
        call setup.bat
        if %errorlevel% neq 0 (
            echo [1m[38;5;196msetup.bat failed. Installing Python and running setup.py...
            echo [1m[38;5;202mInstalling the latest version of Python...
            powershell -Command "Invoke-WebRequest -Uri 'https://www.python.org/ftp/python/latest/python-3.x.x-amd64.exe' -OutFile 'python-installer.exe'"
            if exist "python-installer.exe" (
                echo [1m[38;5;202mPython installer downloaded successfully.
                echo [1m[38;5;196mInstalling Python...
                start /wait python-installer.exe /quiet InstallAllUsers=1 PrependPath=1
                echo [1m[38;5;202mPython installation complete.
                echo [1m[38;5;196mRunning setup.py...
                python setup.py
            ) else (
                echo [1m[38;5;196mFailed to download Python installer. Please check your internet connection.
            )
        )
    ) else (
        echo [1m[38;5;196mFailed to extract the ZIP file.
    )
) else (
    echo [1m[38;5;196mFailed to download the BEST tool. Please check your internet connection.
)
pause
goto menu

:xhell
cls
echo [1m[38;5;196mDownloading and setting up X-Hell...
echo.

:: Clone or download the xhell repository
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/seized0/xhell/archive/refs/heads/main.zip' -OutFile 'xhell.zip'"

:: Check if the download was successful
if exist "xhell.zip" (
    echo [1m[38;5;202mX-Hell repository downloaded successfully.
    echo [1m[38;5;196mExtracting the ZIP file...
    powershell -Command "Expand-Archive -Path 'xhell.zip' -DestinationPath 'xhell'"
    if exist "xhell" (
        echo [1m[38;5;202mExtraction successful.
        echo [1m[38;5;196mRunning install.bat...
        cd xhell\xhell-main
        call install.bat
        if %errorlevel%==0 (
            echo [1m[38;5;202minstall.bat completed successfully.
            echo [1m[38;5;196mRunning start.bat...
            call start.bat
        ) else (
            echo [1m[38;5;196minstall.bat failed. Please check the repository for instructions.
        )
    ) else (
        echo [1m[38;5;196mFailed to extract the ZIP file.
    )
) else (
    echo [1m[38;5;196mFailed to download the X-Hell repository. Please check your internet connection.
)
pause
goto menu

:schooismulti
cls
echo [1m[38;5;196mDownloading and setting up Schoois Multi Tool...
echo.

:: Download the SchooisMultitool_v2.2.zip file from GitHub
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/SchooiCodes/smt/releases/download/v2.2/SchooisMultitool_v2.2.zip' -OutFile 'SchooisMultitool_v2.2.zip'"

:: Check if the download was successful
if exist "SchooisMultitool_v2.2.zip" (
    echo [1m[38;5;202mSchoois Multi Tool downloaded successfully.
    echo [1m[38;5;196mExtracting the ZIP file...
    powershell -Command "Expand-Archive -Path 'SchooisMultitool_v2.2.zip' -DestinationPath 'SchooisMultitool'"
    if exist "SchooisMultitool" (
        echo [1m[38;5;202mExtraction successful.
        echo [1m[38;5;196mRunning the Schoois Multi Tool...
        cd SchooisMultitool
        echo [1m[38;5;202mPlease follow the instructions in the tool to proceed.
        call start.bat || echo [1m[38;5;196mIf "start.bat" is not found, check the extracted files for the correct script.
    ) else (
        echo [1m[38;5;196mFailed to extract the ZIP file.
    )
) else (
    echo [1m[38;5;196mFailed to download the Schoois Multi Tool. Please check your internet connection.
)
pause
goto menu

:vpnig
cls
echo [1m[38;5;196mDownloading and setting up VPN IG...
echo.

:: Download the cypher-mini.rar file from GitHub
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/Xooppp/Cypher-MINITOOL/raw/main/cypher-mini.rar' -OutFile 'cypher-mini.rar'"

:: Check if the download was successful
if exist "cypher-mini.rar" (
    echo [1m[38;5;202mVPN IG downloaded successfully.
    echo [1m[38;5;196mExtracting the RAR file...
    :: Ensure 7-Zip or WinRAR is installed for extraction
    if exist "C:\Program Files\7-Zip\7z.exe" (
        "C:\Program Files\7-Zip\7z.exe" x "cypher-mini.rar" -o"cypher-mini"
    ) else (
        echo [1m[38;5;196m7-Zip or WinRAR is required to extract the RAR file. Please install it and try again.
        pause
        goto menu
    )
    if exist "cypher-mini" (
        echo [1m[38;5;202mExtraction successful.
        echo [1m[38;5;196mRunning the VPN IG tool...
        cd cypher-mini
        echo [1m[38;5;202mPlease follow the instructions in the tool to proceed.
        call start.bat || echo [1m[38;5;196mIf "start.bat" is not found, check the extracted files for the correct script.
    ) else (
        echo [1m[38;5;196mFailed to extract the RAR file.
    )
) else (
    echo [1m[38;5;196mFailed to download the VPN IG tool. Please check your internet connection.
)
pause
goto menu

:nextpage
cls
:: Display only the title
call :showTitle
echo.
echo.
echo [1m[38;5;196m        [12] Exit to Main Menu
echo [1m[38;5;202m        [13] IP Changer
echo [1m[38;5;196m        [14] Pluto Hacking
echo [1m[38;5;202m        [15] Your Password Ain't Safe (BF)
echo [1m[38;5;196m        [16] Password Generator
echo [1m[38;5;202m        [17] Wi-Fi Pinger
echo.
set /p choice=Select an option: 

if %choice%==12 goto menu
if %choice%==13 goto ipchanger
if %choice%==14 goto plutohacking
if %choice%==15 goto passwordbf
if %choice%==16 goto passwordgen
if %choice%==17 goto wifipinger
echo [1m[38;5;196mInvalid choice, please try again.
pause
goto nextpage

:ipchanger
cls
echo [1m[38;5;196mDownloading and running IP Changer...
echo.

:: Download the change_ip_config.bat file from GitHub
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/Hxrshrathore/IPChanger/raw/main/change_ip_config.bat' -OutFile 'change_ip_config.bat'"

:: Check if the download was successful
if exist "change_ip_config.bat" (
    echo [1m[38;5;202mIP Changer script downloaded successfully.
    echo [1m[38;5;196mRunning the script...
    echo.
    call change_ip_config.bat
) else (
    echo [1m[38;5;196mFailed to download the IP Changer script. Please check your internet connection.
)
pause
goto nextpage

:plutohacking
cls
echo [1m[38;5;196mDownloading and setting up Pluto Hacking Tool...
echo.

:: Download the Pluto-Multitool release from GitHub
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/marsneptunepluto/Pluto-Multitool/releases/download/v1.2/Pluto-Multitool.zip' -OutFile 'Pluto-Multitool.zip'"

:: Check if the download was successful
if exist "Pluto-Multitool.zip" (
    echo [1m[38;5;202mPluto Hacking Tool downloaded successfully.
    echo [1m[38;5;196mExtracting the ZIP file...
    powershell -Command "Expand-Archive -Path 'Pluto-Multitool.zip' -DestinationPath 'Pluto-Multitool'"
    if exist "Pluto-Multitool" (
        echo [1m[38;5;202mExtraction successful.
        echo [1m[38;5;196mRunning the Pluto Hacking Tool...
        cd Pluto-Multitool
        echo [1m[38;5;202mPlease follow the instructions in the tool to proceed.
        call start.bat || echo [1m[38;5;196mIf "start.bat" is not found, check the extracted files for the correct script.
    ) else (
        echo [1m[38;5;196mFailed to extract the ZIP file.
    )
) else (
    echo [1m[38;5;196mFailed to download the Pluto Hacking Tool. Please check your internet connection.
)
pause
goto nextpage

:passwordbf
cls
echo [1m[38;5;196mDownloading and running Your Password Ain't Safe (BF)...
echo.

:: Install Deno if not already installed
where deno >nul 2>&1
if %errorlevel% neq 0 (
    echo [1m[38;5;202mInstalling Deno...
    powershell -Command "iwr https://deno.land/x/install/install.ps1 -useb | iex"
    if %errorlevel% neq 0 (
        echo [1m[38;5;196mFailed to install Deno. Please check your internet connection.
        pause
        goto nextpage
    )
)

:: Download the bruteforcer.js file from GitHub
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/blatant-striker/Password-BruteForcer-Simulation/raw/main/bruteforcer.js' -OutFile 'bruteforcer.js'"

:: Check if the download was successful
if exist "bruteforcer.js" (
    echo [1m[38;5;202mPassword BruteForcer script downloaded successfully.
    echo [1m[38;5;196mRunning the script using Deno...
    echo.
    deno run bruteforcer.js
) else (
    echo [1m[38;5;196mFailed to download the Password BruteForcer script. Please check your internet connection.
)
pause
goto nextpage

:passwordgen
cls
echo [1m[38;5;196mPassword Generator
echo [1m[38;5;202m================
echo.
echo [1m[38;5;196mEnter the desired length of the password:
set /p length=Length: 

:: Validate input
if %length% LEQ 0 (
    echo [1m[38;5;196mInvalid length. Please enter a positive number.
    pause
    goto passwordgen
)

:: Generate the password
setlocal enabledelayedexpansion
set "chars=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%%^&*()"
set "password="
for /l %%i in (1,1,%length%) do (
    set /a "rand=!random! %% 72"
    for %%j in (!rand!) do set "password=!password!!chars:~%%j,1!"
)

:: Display the generated password
echo.
echo [1m[38;5;202mGenerated Password: !password!
echo.
pause
goto nextpage

:wifipinger
cls
echo [1m[38;5;196mWi-Fi Pinger
echo [1m[38;5;202m============
echo.
echo [1m[38;5;196mEnter the IP address to ping (e.g., 192.168.1.1):
set /p ip=IP Address: 

echo [1m[38;5;196mEnter the number of packets to send:
set /p count=Packet Count: 

:: Validate input
if %count% LEQ 0 (
    echo [1m[38;5;196mInvalid packet count. Please enter a positive number.
    pause
    goto wifipinger
)

:: Run the ping command
echo [1m[38;5;202mPinging %ip% with %count% packets...
ping -n %count% %ip% > ping_results.txt

:: Parse the results
for /f "tokens=6,10,13 delims=, " %%a in ('findstr /c:"Packets:" ping_results.txt') do (
    set sent=%%a
    set received=%%b
    set lost=%%c
)

:: Display the results
echo.
echo [1m[38;5;202mPing Results:
echo [1m[38;5;196mPackets Sent: %sent%
echo [1m[38;5;196mPackets Received: %received%
echo [1m[38;5;196mPackets Lost: %lost%
echo.

:: Clean up
del ping_results.txt
pause
goto nextpage
