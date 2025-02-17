@echo off
setlocal enabledelayedexpansion

set images=imagen1.jpg imagen2.jpg imagen3.jpg imagen4.jpg imagen5.jpg
set count=0

:loop
for %%i in (%images%) do (
    start "" "%%i"  REM Abre la imagen con el visor predeterminado
    echo Esperando que cierres la imagen...
    timeout /t 1 >nul
    taskkill /IM "Microsoft.Photos.exe" /F >nul 2>&1
    taskkill /IM "rundll32.exe" /F >nul 2>&1

    REM Abrir Chrome con la URL (evitando problemas con caracteres especiales)
    start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" "https://www.google.com/search?q=mondongo+goku^&safe=active^&ssui=on"

    set /a count+=1
    if !count! GEQ 10 goto end  REM Termina después de 10 imágenes
)

echo tontito, te comiste un mondongo

goto loop

:end
exit
