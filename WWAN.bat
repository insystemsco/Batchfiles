@echo off
echo ::::::::::  Input ComputerName 8-)  ::::::::::
set /p input=""
cls
@echo off
(

psexec -h -accepteula \\%input% CMD /c netsh mbn show interface | findstr "Id"
psexec -h -accepteula \\%input% CMD /c netsh mbn show readyinfo interface=* | findstr "SIM ICC ID"

)>\\tamp20pvfiler09\share1\TricountyIT\SystemInfo\%input%WWAN.txt
notepad.exe \\tamp20pvfiler09\share1\TricountyIT\SystemInfo\%input%WWAN.txt



