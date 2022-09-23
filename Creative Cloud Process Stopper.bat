title Loading ^> Creative Cloud Stopper
@echo off
mode con: cols=50 lines=30
cls

:menu
title Creative Cloud Process Stopper
echo[
echo[
echo            --------------------------
echo           ^|                          ^|
echo           ^|   Adobe Creative Cloud   ^|
echo           ^|     Process Stopper      ^|
echo           ^|                          ^|
echo           ^|                          ^|
echo           ^| [1]   Kill all Creative  ^|
echo           ^|        Cloud Processes   ^|
echo           ^|                          ^|
echo           ^| [2]     Stop Creative    ^|
echo           ^|      Cloud from start up ^|
echo           ^|                          ^|
echo           ^| [3]   Open the GitHub    ^|
echo           ^|                          ^|
echo           ^|                          ^|
echo           ^| [4]      Credits         ^|
echo           ^|                          ^|
echo           ^|                          ^|
echo           ^| [5]       EXIT           ^|
echo           ^|                          ^|
echo            --------------------------
echo[
choice /C:12345 /N /M ".                  Option: 

if errorlevel 5 exit
if errorlevel 4 (
title Credits ^> Creative Cloud Process Stopper
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
echo            --------------------------
echo[
echo[
echo[
pause
cls
goto menu
)
if errorlevel 3 (
title Soon ^> Creative Cloud Process Stopper
cls
echo[
echo  Coming Soon
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
title Start Up Stopper ^> Creative Cloud Process Stopper
cls
echo[
echo Creative Cloud Start Up Stopper
echo[
echo  WARNING If it says ACCESS DENIED
echo  You need to RUN this Script as
echo  an administrator!
echo[
echo  WARNING 2 IF YOU WANT NONE OF THE
echo  CC PROCESSES RUNNING PLEASE 
echo  DISABLE CCXProcess.exe FROM TASK
echo  MANAGER START UP
echo[
pause
echo[
schtasks.exe /Change /TN "Adobe Creative Cloud" /Disable
echo[
echo DONE!
echo[
pause
cls
goto menu
)
if errorlevel 1 (
title Creative Cloud Process Killer
cls
echo[
echo  Adobe Creative Cloud ^(CC^) Process Killer
echo[
echo  WARNING This script will JUST kill the processes
echo  meaning YOU HAVE TO run it everytime you boot 
echo  your computer! Use the Stop Creative Cloud on
echo  start up tool on the main menu to stop it from 
echo  start up
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
echo[
echo DONE!
echo[
echo If it said success this tool worked!!!
echo[
echo If it said "ERROR The process was not found"
echo The processes were already killed or you 
echo need to run this script as an administrator
echo to kill the processes
pause
cls
goto menu
)