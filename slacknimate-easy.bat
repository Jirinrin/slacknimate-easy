@echo off

if "%VSCODE_EXE%"=="" (
  echo Please set VSCODE_EXE
  exit /b 0
)
set channel=%1
if not defined channel (
  echo Please supply channel arg
  exit /b 0
)
set channelarg=-c %channel%

Echo.%2 | findstr /r /c:"^[0-9]" >nul && (
  set delay=%2
  set opts=%3
) || (
  set opts=%2
  set delay=%3
)
if not defined delay set delay=1
if not defined opts set opts=""

set loop=--loop
set backandforth=
set updateproperty=

if not x%opts:s=%==x%opts% ( REM s for stop
  set loop=
)
if not x%opts:b=%==x%opts% (
  set backandforth=-bf
)
if not x%opts:u=%==x%opts% (
  set updateproperty=-up username
  set channelarg=
)

set "filePath=%~dp0temp\temp_%random%.txt"
echo Please add your animation frames in %filePath%
echo and save and close that tab
copy NUL %filePath%

start /W "" "%VSCODE_EXE%" %filePath% -w -cur_console:n

slacknimate %channelarg% -d %delay% %loop% %backandforth% %updateproperty% < %filePath%
