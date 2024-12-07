@echo off
color a
for /f "tokens=15 delims=: " %%i in ('ipconfig ^| findstr /i "IPv4"') do set IP=%%i
echo %IP% | clip
echo Current IPv4 Adress is:%IP% Copied
pause
