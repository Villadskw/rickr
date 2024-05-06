@echo off
REM Displays saved wireless passwords on screen
REM Author: UberGuidoZ

REM Delay for 2 seconds
timeout /t 2 /nobreak >nul

REM Clear Command Prompt screen
cls

REM Execute the command to display saved wireless passwords
for /f "skip=9 tokens=1,2 delims=:" %%i in ('netsh wlan show profiles') do @echo %%j | netsh wlan show profiles %%j key=clear | findstr /C:"SSID name" /C:"Key Content"

REM Pause before closing Command Prompt window
pause
