@echo off
setlocal enabledelayedexpansion

:cari_java
for /r "D:\project" %%f in (*.java) do (
  set "file=%%~dpf%%~nf%%~xf"
  echo Ada file Java pada direktori %%~dpf
)
:continue
:end