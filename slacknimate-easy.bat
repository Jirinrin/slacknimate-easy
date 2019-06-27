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
set delay=%2
if not defined delay set delay=1

set "filePath=%~dp0temp\temp_%random%.txt"
echo Please add your animation frames in %filePath%
echo and save and close that tab
copy NUL %filePath%

start /W "" "%VSCODE_EXE%" %filePath% -w -cur_console:n

REM slacknimate --preview --loop -d %delay% < %filePath%
slacknimate --loop -c %channel% -d %delay% < %filePath%
