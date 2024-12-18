@echo off
Title Basic Calc

:top (
  echo a, s, m, d?
  set /p "input=->"
  if /i %input%==a goto add
  if /i %input%==s goto sub
  if /i %input%==m goto mul
  if /i %input%==d goto div
rem else
  echo invalid
  pause
  cls
  goto top
)

:add (
  echo #1:
  set /p "num1=->"
  echo #2:
  set /p "num2=->"
)
