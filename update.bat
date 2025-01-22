echo off

xcopy "%CD%\ini" "%MAMEHOOK_HOME%\ini" /E /H /C /R /Q /Y
xcopy "%CD%\scripts" "%MAMEHOOK_HOME%\scripts" /E /H /C /R /Q /Y