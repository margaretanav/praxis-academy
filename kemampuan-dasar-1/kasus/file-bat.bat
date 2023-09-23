@echo off
setlocal enabledelayedexpansion

:cari_java
for /r "D:\project" %%f in (*.java) do (
  set "file=%%~dpf%%~nf%%~xf"
  echo Ada file Java pada direktori %%~dpf
  choice /c yt /m "nama-!file! ada, diganti namanya (y/t)?"
  if errorlevel 2 (
    goto :continue
  ) else (
    set /p "new_name=Masukkan nama baru (tanpa ekstensi .java): "
    if not "!new_name!"=="" (
      ren "%%f" "!new_name!.java"
      echo File Java diganti nama menjadi !new_name!.java
    )
  )
)

REM Iterasi ke direktori anak
for /d %%d in ("D:\project\*") do (
  call :cari_java "%%d"
)

:continue
:end