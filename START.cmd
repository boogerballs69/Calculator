@echo off
title Calculator Selector
:main (  
  cls
  echo Advanced, basic or TDCalc?
  set /p "input=->"
  if /i %input%==advanced goto advancedStartup
  if /i %input%==basic goto basicStartup
  if /i %input%==TDCalc goto TDCalcStartup
  echo Invalid input
  pause
  goto main
)

:advancedStartup (
  start "" /b /cmd /c "advancedCalc.cmd >nul"
  exit
)

:basicStartup (
  start "" /b /cmd /c "basicCalc.cmd >nul"
  exit
)

:TDCalcStartup (
  start "" /b /cmd /c "TDClassCalc.cmd >nul"
  exit
)
