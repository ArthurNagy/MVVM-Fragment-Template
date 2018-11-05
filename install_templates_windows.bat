REM Installs MVVM Fragment group file template for AndroidStudio.
@echo off
echo Installing MVVM Fragment Group File template...

setlocal enableDelayedExpansion

for /D %%i in ("%userprofile%"\.AndroidStudio*) do call :copy_template "%%i"

echo.
echo Restart AndroidStudio in order to use it.
exit /b

REM sub function to copy the template files
:copy_template
set template_dir=%~1\templates\other
if not exist template_dir mkdir "!template_dir!"
xcopy /s /i MVVMFragment "!template_dir!\MVVMFragment"
echo Done.
echo.
exit /b