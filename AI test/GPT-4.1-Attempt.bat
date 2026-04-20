@echo off
echo this one was different from the others. certainly something. anyway press any button to see the slop.
pause

:: Set logo "resolution"
set size=6

:: Create four squares using ASCII art
setlocal enabledelayedexpansion
for %%G in (1 2 3 4) do (
    set "file=square%%G.txt"
    echo Creating !file!
    >!file! (
        for /l %%I in (1,1,%size%) do (
            set "line="
            for /l %%J in (1,1,%size%) do set "line=!line!█"
            echo !line!
        )
    )
)

:: Show arrangement instructions
echo.
echo Windows 11 Logo Created!
echo Arrange the four generated square*.txt files as follows:
echo [square1] [square2]
echo [square3] [square4]
pause
