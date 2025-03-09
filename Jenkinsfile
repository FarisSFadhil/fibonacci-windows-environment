@echo off

:: Select the value for F(n) for the Fibonacci sequence.
set /p NUMBER=Select the value for F(n) for the Fibonacci sequence (10, 20, 30, ...): 

:: Set timeout for 12 hours and log rotation options.
:: These options are not natively supported in Batch. They would need external tools or scripts.

:: Trigger using cron is not natively supported in Batch. Use Windows Task Scheduler for scheduling.

:: Stages in Batch

:: Stage: Make executable (not applicable for Batch since chmod is a Unix/Linux command)
:: Assume script is executable.

:: Stage: Relative path execution
call scripts\fibonacci.bat %NUMBER%

:: Stage: Full path execution
call "%cd%\scripts\fibonacci.bat" %NUMBER%

:: Stage: Change directory
pushd "%cd%\scripts"
call fibonacci.bat %NUMBER%
popd

:: Exit script
exit /b 0
