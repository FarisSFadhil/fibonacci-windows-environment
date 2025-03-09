@echo off
setlocal enabledelayedexpansion

:: Set the value of N from the first argument, default to 10 if not provided.
set "N=%~1"
if "%N%"=="" set "N=10"

set "a=0"
set "b=1"

echo The Fibonacci series is:

for /L %%i in (0,1,%N%) do (
    echo %%i     !a!
    set /a fn=a+b
    set "a=!b!"
    set "b=!fn!"
)
