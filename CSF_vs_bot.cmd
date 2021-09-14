@echo off && Title Carta Sasso Forbice contro il Bot
color a 
mode con: cols=50 lines=11

::

set /a n=%random% %% 3
if %n% == 0 set bot=Carta && goto playerSelect
if %n% == 1 set bot=Sasso && goto playerSelect
if %n% == 2 set bot=Forbice && goto playerSelect

:playerSelect
cls
echo.
echo 1) Carta
echo 2) Sasso
echo 3) Forbice 
set /p s=Scegli la tua arma: 
if %s%==Carta set user=Carta && goto finish
if %s%==carta set user=Carta && goto finish
if %s%==1 set user=Carta && goto finish

if %s%==Sasso set user=Sasso && goto finish
if %s%==sasso set user=Sasso && goto finish
if %s%==2 set user=Sasso && goto finish

if %s%==Forbice set user=Forbice && goto finish
if %s%==forbice set user=Forbice && goto finish
if %s%==3 set user=Forbice && goto finish

:error
Echo Errore 404
pause >nul
goto playerSelect

:finish
echo.
echo Il bot ha scelto: %bot%
echo Tu hai scelto:    %user% 
if %bot% ==Carta goto cartavs
if %bot% ==Sasso goto sassovs
if %bot% ==Forbice goto forbicevs

:cartavs
if %user% ==Carta echo Pareggio! && goto finishh
if %user% ==Sasso echo Hai Perso! && goto finishh
if %user% ==Forbice echo Hai Vinto! && goto finishh

:sassovs
if %user% ==Carta echo Hai Vinto! && goto finishh
if %user% ==Sasso echo Pareggio! && goto finishh
if %user% ==Forbice echo Hai Perso! && goto finishh

:forbicevs
if %user% ==Carta echo Hai Perso! && goto finishh
if %user% ==Sasso echo Hai Vinto! && goto finishh
if %user% ==Forbice echo Pareggio! && goto finishh

:finishh
echo.
pause >nul