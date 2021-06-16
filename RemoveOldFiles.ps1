####################################################################################
#
# Remove old file from folder 
# Year : June 2021
#
# Setup in Task Schedular
# Action Tab-> Program/script->Value:powershell.exe
# Add arguments : -ExecutionPolicy Bypass  C:\InsuranceSchedular\RemoveOldFiles.ps1
#
####################################################################################

$Temp = (Get-date).AddDays(-10)
$Filename = 'E:\8Square\KLIQ_REPORT_'+(Get-Date $Temp -f yyyyMMdd)+ '.xls'
Remove-Item $Filename