@echo off
mode con cols=3200
rem makes the console window large
setlocal enabledelayedexpansion
rem Set the message to issue as second line
set "msg=*         %*Adventures in Learning         *"
rem Calculate the length of the string
set Length=0
for /l %%A in (1,1,1000) do if "%msg%"=="!msg:~0,%%A!" (
  set /a Length=%%A
  goto :doit
)
:doit
rem Create a string of asterisks of same length
set header=
for /l %%i in (1,1,%Length%) do set "header=!header!*
rem Issue the message
echo %header%
echo %msg%
echo %header%
pause

cls

:start
cls

set "msg=*         %*Adventures in Learning         *"
set Length=0
for /l %%A in (1,1,1000) do if "%msg%"=="!msg:~0,%%A!" (
  set /a Length=%%A
  goto :doit
)

:doit
set header=
for /l %%i in (1,1,%Length%) do set "header=!header!*
echo %header%
echo %msg%
echo %header%

set choice=
set /p choice="Would you like me to see some cool animals? If you don't chose yes, I'll just ask again... Press 'y' and enter for Yes: "
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='y' goto stage2

:stage2
cls

set "msg=*         %*Adventures in Learning         *"
set Length=0
for /l %%A in (1,1,1000) do if "%msg%"=="!msg:~0,%%A!" (
  set /a Length=%%A
  goto :doit
)

:doit
set header=
for /l %%i in (1,1,%Length%) do set "header=!header!*
echo %header%
echo %msg%
echo %header%

set animal=
set /p animal="Would you like to see a leopard, a dolfin, a bear, or a dog? Press 'l' for leopard, 'd' for dolfin, 'b' for bear or 'h' for dog. If you would rather get educated, press 'e'.. Press 'x' to exit.. "
if '%animal%'=='l' goto leopard
if '%animal%'=='d' goto dolfin
if '%animal%'=='b' goto bear
if '%animal%'=='h' goto dog
if '%animal%'=='e' goto education
if '%animal%'=='x' exit

:leopard
cls
start "" www.kids.nationalgeographic.com/animals/mammals/facts/leopard
goto stage2

:dolfin
cls
start "" www.dolphin-emu.org
goto stage2

:bear
cls
start "" www.imdb.com/title/tt14452776/
goto stage2

:dog
cls
start "" www.hot-dog.org/culture/hot-dog-etiquette
goto stage2

:education
cls

set "msg=*         %*Adventures in Learning         *"
set Length=0
for /l %%A in (1,1,1000) do if "%msg%"=="!msg:~0,%%A!" (
  set /a Length=%%A
  goto :doit
)

:doit
set header=
for /l %%i in (1,1,%Length%) do set "header=!header!*
echo %header%
echo %msg%
echo %header%

set learn=
set /p learn="would what would you like to learn about? 'b' - Bir Tawil, 's' - Snow in Florida, 'd' - Dude Chilling Park... To see where I copied to code for the cool header press 'w'... If you wish to learn about animals again press 'a'. Press 'x' to exit  "
if '%learn%'=='b' goto bir
if '%learn%'=='s' goto snow
if '%learn%'=='d' goto dude
if '%learn%'=='w' goto copycat
if '%learn%'=='a' goto stage2
if '%learn%'=='x' exit

:bir
cls
start "" https://www.youngpioneertours.com/strange-tale-bir-tawil/
goto education

:snow
cls
start "" https://www.worldatlas.com/articles/has-it-ever-snowed-in-florida.html
goto education

:dude
cls
start "" https://www.yelp.com/biz/dude-chilling-park-vancouver
goto education

:copycat
cls
start "" https://www.superuser.com/questions/1360821/how-to-center-a-text-in-a-batch-output
goto education

