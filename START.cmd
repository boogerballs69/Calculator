@echo off
title Calculator Selector
:main (  
  cls
  echo Advanced or basic?
  set /p "input=->"
  if /i %input%==advanced goto advancedStartup
  if /i %input%==basic goto basicStartup
  echo Invalid input
  pause
  goto main
)

:advancedStartup (
  start "" /b /cmd /c "advancedCalc.cmd >nul"
  exit
)

:basicStartup (
  start "" /b /cmd /c "FILE.frm >nul"
  exit
)
