:: 图标白板一般是图标缓存有问题，删掉之后重启资源管理器一般就好了
@echo off
CD /d %userprofile%\AppDate\Local
DEL lconCache.db /a
taskkill /f /im explorer.exe
start explorer.exe
