@ECHO OFF
REM SC CONFIG MESSENGER START= DISABLED
REM SC CONFIG MESSENGER START= DEMAND
REM SC CONFIG MESSENGER START= AUTO
NET TIME \\SERVER3 /SET /Y >NULL
NET SEND %1 %2>%3.log
