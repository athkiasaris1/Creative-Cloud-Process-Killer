title Loading ^> Creative Cloud Process Killer
@echo off
mode con: cols=50 lines=30
set version=1.7.3
cls

:args
if "%~1"=="" GOTO startscreen
if "%~1"=="-help" (
title Creative Cloud Process Killer
echo[
echo  USAGE -killcc ^-^> Kills all CC Processes
echo[
echo        -stopautocc ^-^> Stops the CC Processes
echo                            from startup
echo[
echo        -updates ^-^> Checks for updates
echo[
pause
exit
)
if "%~1"=="-killcc" (
 if "%~2"=="" (
 call :ProcessKiller
 pause
 exit
 )
 else if "%2"=="-silent" (
 cls
 taskkill /F /im CClibrary.exe
 taskkill /F /im CCXProcess.exe
 taskkill /F /im CoreSync.exe
 taskkill /F /im "Creative Cloud.exe"
 taskkill /F /im "Creative Cloud Helper.exe"
 taskkill /F /im "Adobe Desktop Service.exe"
 taskkill /F /im AdobeNotificationClient.exe
 taskkill /F /im AdobeIPCBroker.exe
 taskkill /F /im "Adobe CEF Helper.exe"
 taskkill /F /im "adobe_licensing_wf.exe"
 taskkill /F /im "AdobeUpdateService.exe"
 exit
)
if "%~1"=="-stopautocc" (
 if "%~2"=="" (
 call :StartupStopper
 pause
 exit
 )
 else if "%~2"=="-silent" (
 schtasks.exe /Change /TN "Adobe Creative Cloud" /Disable
 exit
 )
)

if "%~1"=="-updates" (
 call :CheckUpdates
 pause
 exit
)
:startscreen
cls
title Creative Cloud Process Killer [ver %version%]
echo[
echo[
echo[
echo[
echo[
echo[
echo[
echo[
echo             _____  _____ ______ _   __
echo            /  __ \/  __ \^| ___ \ ^| / /
echo            ^| /  \/^| /  \/^| ^|_/ / ^|/ / 
echo            ^| ^|    ^| ^|    ^|  __/^|    \
echo            ^| \__/\^| \__/\^| ^|   ^| ^|\  \
echo             \____/ \____/\_^|   \_^| \_/
echo           Creative Cloud Process Killer
echo[
echo[
echo     Welcome to Creative Cloud Process Killer!
echo[
echo[
echo[
echo[
echo[
echo[
echo[
echo[
echo[
echo[
echo[
pause
:menu
cls
title Creative Cloud Process Killer
echo[
echo            --------------------------
echo           ^|                          ^|
echo           ^|   Adobe Creative Cloud   ^|
echo           ^|      Process Killer      ^|
echo           ^|                          ^|
echo           ^|      Version: %version%      ^|
echo           ^|                          ^|
echo           ^| [1]   Kill all Creative  ^|
echo           ^|        Cloud Processes   ^|
echo           ^|                          ^|
echo           ^| [2]     Stop Creative    ^|
echo           ^|      Cloud from start up ^|
echo           ^|                          ^|
echo           ^| [3]      Extras          ^|
echo           ^|                          ^|
echo           ^|                          ^|
echo           ^| [4]  Check for Updates   ^|
echo           ^|                          ^|
echo           ^|                          ^|
echo           ^| [5]       EXIT           ^|
echo           ^|                          ^|
echo            --------------------------
echo[
choice /C:1234567 /N /M ".                  Option: 

if errorlevel 7 (
title Credits ^> Creative Cloud Process Killer
cls
echo[
echo[
echo            --------------------------
echo           ^|                          ^|
echo           ^|          Credits         ^|
echo           ^|                          ^|
echo           ^|   Creator: athkiasaris1  ^|
echo           ^|                          ^|
echo           ^|       UI: CCStopper      ^|
echo           ^|                          ^|
echo           ^|                          ^|
echo           ^| This Script isn't meant  ^|
echo           ^| to be a copy of CCStopper^|
echo           ^|                          ^|
echo           ^|   Some Features are the  ^|
echo           ^| same but I added only the^|
echo           ^|    features I use. This  ^|
echo           ^|    script was meant for  ^|
echo           ^|       personal use!      ^|
echo           ^|                          ^|
echo           ^| And I added the disable  ^|
echo           ^|   on start up feature    ^|
echo           ^|                          ^|
echo           ^| If you want you can copy ^|
echo           ^|the code and make your own^|
echo           ^|         script!!!        ^|
echo            --------------------------
echo[
echo[
echo[
pause
cls
goto menu
)
if errorlevel 6 (
cls
start https://github.com/athkiasaris1/Creative-Cloud-Process-Killer
goto menu
)
if errorlevel 5 exit
if errorlevel 4 (
call :CheckUpdates
pause
cls
goto menu
)
if errorlevel 3 (
title Extras ^> Creative Cloud Process Killer
cls
echo[
echo[
echo            --------------------------
echo           ^|                          ^|
echo           ^|          Extras          ^|
echo           ^|                          ^|
echo           ^| [4] Check for Updates    ^|
echo           ^|                          ^|
echo           ^|                          ^|
echo           ^| [6]  Open the GitHub     ^|
echo           ^|                          ^|
echo           ^|                          ^|
echo           ^| [7]      Credits         ^|
echo           ^|                          ^|
echo           ^|                          ^|
echo            --------------------------
echo[
echo[
echo[
echo[
echo[
echo[
echo[
echo[
echo[
echo[
echo[
echo[
echo[
pause
cls
goto menu
)
if errorlevel 2 (
call :StartupStopper
pause
cls
goto menu
)
if errorlevel 1 (
call :ProcessKiller
pause
cls
goto menu
)

:ProcessKiller
title Creative Cloud Process Killer
cls
echo             _____  _____ ______ _   __
echo            /  __ \/  __ \^| ___ \ ^| / /
echo            ^| /  \/^| /  \/^| ^|_/ / ^|/ / 
echo            ^| ^|    ^| ^|    ^|  __/^|    \
echo            ^| \__/\^| \__/\^| ^|   ^| ^|\  \
echo             \____/ \____/\_^|   \_^| \_/
echo           Creative Cloud Process Killer
echo --------------------------------------------------
echo[
echo  Adobe Creative Cloud ^(CC^) Process Killer
echo[
echo  WARNING This script will JUST kill the processes
echo  meaning YOU HAVE TO run it everytime you boot 
echo  your computer! Use the Stop Creative Cloud on
echo  start up tool on the main menu to stop it from 
echo  start up
echo[
echo  FOR THE PROCESS "AdobeUpdateService.exe" to get
echo  TERMINATED you NEED TO RUN THE SCRIPT AS AN
echo  ADMINISTRATOR!
echo[
pause
echo[
taskkill /F /im CClibrary.exe
taskkill /F /im CCXProcess.exe
taskkill /F /im CoreSync.exe
taskkill /F /im "Creative Cloud.exe"
taskkill /F /im "Creative Cloud Helper.exe"
taskkill /F /im "Adobe Desktop Service.exe"
taskkill /F /im AdobeNotificationClient.exe
taskkill /F /im AdobeIPCBroker.exe
taskkill /F /im "Adobe CEF Helper.exe"
taskkill /F /im "adobe_licensing_wf.exe"
taskkill /F /im "AdobeUpdateService.exe"
echo[
echo DONE!
echo[
echo If it said success this tool worked!!!
echo[
echo If it said "ERROR The process was not found"
echo The processes were already killed or you 
echo need to run this script as an administrator
echo to kill the processes
echo[
goto :EOF

:StartupStopper
title Start Up Stopper ^> Creative Cloud Process Killer
cls
echo             _____  _____ ______ _   __
echo            /  __ \/  __ \^| ___ \ ^| / /
echo            ^| /  \/^| /  \/^| ^|_/ / ^|/ / 
echo            ^| ^|    ^| ^|    ^|  __/^|    \
echo            ^| \__/\^| \__/\^| ^|   ^| ^|\  \
echo             \____/ \____/\_^|   \_^| \_/
echo           Creative Cloud Process Killer
echo --------------------------------------------------
echo[
echo  Creative Cloud Start Up Stopper
echo[
echo   WARNING If it says ACCESS DENIED
echo   You need to RUN this Script as
echo   an administrator!
echo[
echo   WARNING 2 IF YOU WANT NONE OF THE
echo   CC PROCESSES RUNNING PLEASE 
echo   DISABLE CCXProcess.exe FROM TASK
echo   MANAGER START UP MENU
echo[
pause
echo[
schtasks.exe /Change /TN "Adobe Creative Cloud" /Disable
echo[
echo DONE!
echo[
goto :EOF

:CheckUpdates
title Updates ^> Creative Cloud Stopper Killer
cls
echo[
echo  Checking The Ineternet Connection
Ping www.google.com -n 1 -w 1000
cls
if errorlevel 1 (
echo[
echo            --------------------------
echo           ^|                          ^|
echo           ^|     Check for Updates    ^|
echo           ^|                          ^|
echo           ^|    Your Version: %version%   ^|
echo           ^|                          ^|
echo           ^|   Please Connect to the  ^|
echo           ^|   Internet to Check for  ^|
echo           ^|         Updates          ^|
echo           ^|                          ^|
echo            --------------------------
echo[
echo[
) else (
echo[
echo            --------------------------
echo           ^|                          ^|
echo           ^|     Check for Updates    ^|
echo           ^|                          ^|
echo           ^|   Your Version: %version%    ^|
echo           ^|                          ^|
curl https://athkiasaris1.github.io/CreativeCloudProcessKiller-web/1.7.1+/currentversionwithlines.html
curl https://athkiasaris1.github.io/CreativeCloudProcessKiller-web/1.7.1+/currentprereleasewithlines.html
echo           ^|                          ^|
echo           ^|    To Update go to the   ^|
echo           ^|          Github          ^|
echo           ^|                          ^|
echo            --------------------------
echo[
echo[
)
goto :EOF