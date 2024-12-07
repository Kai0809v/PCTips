@echo off
for /f "tokens=15 delims=: " %%i in ('ipconfig ^| findstr /i "IPv4"') do set IP=%%i
echo %IP% | clip
echo Current IPv4Adress is:%IP% .Copied
pause