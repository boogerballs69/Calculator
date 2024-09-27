@echo off
Title Basic Calculator
:main (
  cls
  echo +, -, *, /?
    set /p "operation=->"
  echo How many numbers to calculate with? (10 max) (Input an integer only)
    set /p "operationNum->"
  if %operationNum% LEQ 0 goto invNum
  if %operationNum% GTR 10 goto invNum
  if %operationNum% GEQ 1 if %operationNum% LEQ 10 goto main2
  echo invalid
  pause
  goto main
)

:invNum (
  if %operationNum% LEQ 0 echo Number must be > 0
  pause
goto main
  if %operationNum% GTR 10 echo Number must be < or = 10
  pause
goto main
)
