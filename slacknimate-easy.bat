@echo off

echo %~dp0

set animation=%1
set channel=%2
set delay=%3
if not defined delay set delay=1

set filePath=%~dp0%\temp\temp_%RANDOM%.txt
echo %filePath%

copy NUL %filePath%

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
