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

    REM Abre Chrome con la página deseada
    start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" "https://www.google.com/search?q=mondongo+goku&sca_esv=89dbe79c79dccf28&ei=9--yZ8iXDsGskdUP8Ne0wQQ&ved=0ahUKEwiI79jwocqLAxVBVqQEHfArLUgQ4dUDCBA&uact=5&oq=mondongo+goku&gs_lp=Egxnd3Mtd2l6LXNlcnAiDW1vbmRvbmdvIGdva3UyBRAAGIAEMgUQABiABDIFEAAYgAQyBRAAGIAEMgUQABiABDIFEAAYgAQyBRAAGIAEMgUQABiABDIFEAAYgAQyBRAAGIAESIQSUL8BWJQOcAF4AZABAJgBV6ABkAOqAQE1uAEDyAEA-AEBmAIGoALCA8ICChAAGLADGNYEGEfCAg0QABiABBiwAxhDGIoFwgIOEAAYsAMY5AIY1gTYAQHCAhMQLhiABBiwAxhDGMgDGIoF2AEBwgIKEAAYgAQYQxiKBcICChAuGIAEGEMYigXCAgUQLhiABJgDAIgGAZAGEroGBggBEAEYCZIHATagB7wt&sclient=gws-wiz-serp&safe=active&ssui=on"

    set /a count+=1
if !count! GEQ 15 goto end  REM Termina después de 10 imágenes
)

echo tontito, te comiste un mondongo

goto loop

:end
exit
