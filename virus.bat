@echo off
setlocal enabledelayedexpansion

set images=imagen1.jpg imagen2.jpg imagen3.jpg imagen4.jpg imagen5.jpg

set count=0

:loop
for %%i in (%images%) do (
    start "" "%%i"  REM Abre la imagen con el visor predeterminado
    echo Esperando que cierres la imagen...
    timeout /t 0,1 >nul
    taskkill /IM "Microsoft.Photos.exe" /F >nul 2>&1
    taskkill /IM "rundll32.exe" /F >nul 2>&1
    set /a count+=1
if !count! GEQ 15 goto end  REM Termina después de 10 imágenes
)

goto loop

:end
exit
