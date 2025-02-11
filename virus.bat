@echo off
setlocal enabledelayedexpansion

set images=imagen1.jpg imagen2.jpg imagen3.jpg imagen4.jpg imagen5.jpg

set count=0

:loop
for %%i in (%images%) do (
    start "" "%%i"  REM Abre la imagen con el visor predeterminado
