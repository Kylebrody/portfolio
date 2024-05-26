@echo off
setlocal enabledelayedexpansion

set /p duration="Enter a duration to count down from in seconds: "
set chromePath="C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Google Chrome.lnk"
set websiteURL="https://www.youtube.com/watch?v=LIFFq5ar4fg&ab_channel=Just4every1"

if not "%duration%"=="" (
    for /l %%i in (%duration%,-1,0) do (
        cls
        echo !duration! seconds remaining
        ping -n 2 127.0.0.1 >nul
        set /a duration-=1
    )

    cls
    echo Wake UP!
    %chromePath% %websiteURL%
    pause
) else (
    echo Invalid input. Please enter a valid duration in seconds.
)

pause >nul