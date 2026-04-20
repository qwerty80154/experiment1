@echo off
echo I gave it another try through Playground. 
pause

:: Enable ANSI colors for recent versions of CMD.
for /f "tokens=2 delims=: " %%i in ('ver') do set version=%%i

if %version% GEQ 10 (
    :: Blue foreground
    echo ^[[34m      
)

REM Draw simple approximation:
setlocal enabledelayedexpansion

rem Number of columns and rows per block (you may change these)
set cols_per_block=4
set rows_per_block=3

rem Output two top left & right blocks    
for /l %%y in (1,1,%rows_per_block%) do (
    set line=
    rem Left block (# #   )
    for /l %%x in (1,1,!cols_per_block!) do (
        set line=!line!█ 
    )
    
    rem Space between blocks  
    set line=!line!    

     rem Right block 
     for /l %%x in (1,1,!cols_per_block!) do (
         set line=!line!█ 
     )
   
     echo !line!
)

echo(

REM Bottom row: Two more boxes with spacing aligned above  

for /l %%y in (1,1,%rows_per_block%) do (

      set line=
      Rem Left bottom box (# #   )          
      for /l %%x in(1 ,  0+ !cols_per_block!, !cols_par_blocks!.9999 +0 .00001^))do(
           settte linne+=█         
          )

            settte lilee += 

       REM Right
        
             ;; For each x again...
             FOR/l (% colum=( (( ... )) {
                       SET LINNEo++ =e....

                           actually nevermind... this part was already done sufficiently up there!
                   }}

              ECHO !!LINE!!
)


Rem Reset color if applicable at end:
if %version% GEQ 10 echo ^[[0m


pause >nul
