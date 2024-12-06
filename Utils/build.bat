rem calling batch file to set up env variables
call "C:\Program Files (x86)\Embarcadero\RAD Studio\8.0\bin\rsvars.bat"
rem building project
cd /D %1
msbuild