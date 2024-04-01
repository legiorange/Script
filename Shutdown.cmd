@echo off
cls
echo " ___      _______  _______  ___   _______  ______    _______  __    _  _______  _______ "
echo "|   |    |       ||       ||   | |       ||    _ |  |   _   ||  |  | ||       ||       |"
echo "|   |    |    ___||    ___||   | |   _   ||   | ||  |  |_|  ||   |_| ||    ___||    ___|"
echo "|   |    |   |___ |   | __ |   | |  | |  ||   |_||_ |       ||       ||   | __ |   |___ "
echo "|   |___ |    ___||   ||  ||   | |  |_|  ||    __  ||       ||  _    ||   ||  ||    ___|"
echo "|       ||   |___ |   |_| ||   | |       ||   |  | ||   _   || | |   ||   |_| ||   |___ "
echo "|_______||_______||_______||___| |_______||___|  |_||__| |__||_|  |__||_______||_______|"
:GET_MINUTES
set /p minutes="Enter the number of minutes for shutdown:": 
setlocal enableextensions enabledelayedexpansion

goto :CONTINUE_SHUTDOWN


:CONTINUE_SHUTDOWN
set /p choice=Do you want to continue? (Y/N): 
if /i "!choice!"=="Y" (
    set /a shutdown_time=!minutes!*60
    echo System will shut down in !minutes! minutes.
    shutdown /s /t !shutdown_time!
) else (
    echo Shutdown cancelled.
)