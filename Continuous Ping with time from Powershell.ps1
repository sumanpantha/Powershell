#Continuous Ping with time from Powershell and write in file.

Ping.exe -t localhost | ForEach {"{0} - {1}" -f (Get-Date),$_} > C:\Temp\ping.txt
