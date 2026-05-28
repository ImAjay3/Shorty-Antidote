@echo off
color 0A
echo =======================
echo Shortcut virus-Antidote
echo =======================
echo.

:: Ask user for drive letter
set /p drive=Enter infected drive letter (e.g. E): 

:: Normalize input (add colon if missing)
if not "%drive:~-1%"==":" set drive=%drive%:

:: Check if drive exists
if not exist %drive%\ (
    echo Invalid drive. Exiting...
    pause
    exit
)

echo.
color 0E
echo Scanning drive %drive% ...
cd /d %drive%\

:: Restore files
color 0C
echo Restoring hidden files...
attrib -h -r -s /s /d *.*

:: Remove common malware artifacts
echo Removing malicious files...
del /a *.lnk
del /a *.vbs
del /a *.js
del /a autorun.inf

echo.
color 0A
echo Cleanup completed on %drive%
pause