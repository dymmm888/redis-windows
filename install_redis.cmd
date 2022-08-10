@echo on
cd /d %~dp0
sc create redis binPath= "%CD%\redis-service.exe" DisplayName= "Redis" start= auto
sc description redis "Redis Cache Service"
net start redis


