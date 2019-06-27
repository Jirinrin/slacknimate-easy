@echo off

set animation=%1
set channel=%2
if not defined channel (
  echo Not enough args
  exit /b 0
)
set delay=%3
if not defined delay set delay=1

set "filePath=%~dp0temp\temp_%random%.txt"
echo %filePath%
copy NUL %filePath%

echo %animation%

if %animation%=="_" (
  REM start /W "C:\Users\jirie\AppData\Local\Programs\Microsoft VS Code\Code.exe" %filePath% -w -cur_console:n
  start /W notepad %filePath% -cur_console:n
  echo finished
  goto endParse
)

set list=%animation%
:parse
for  /F "tokens=1* delims=&" %%a in (%list%) do (
  echo %%a >> %filePath%
  if "%%b"=="" goto endParse
  set list="%%b"
  goto parse
)
:endParse

REM slacknimate --preview --loop -d %delay% < %filePath%
slacknimate --loop -c %channel% -d %delay% < %filePath%
