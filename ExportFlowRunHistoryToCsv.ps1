#Export Flow Run History
Import-Module -Name Microsoft.PowerApps.Administration.PowerShell
Import-Module -Name Microsoft.PowerApps.PowerShell

$flowname = Read-Host "Please enter desired flow ID"
 Get-FlowRun -FlowName $flowname | Select-Object -Property Status, StartTime |  Export-Csv -Path 'Outputs\Flowstatus.csv'
 Import-CSV "Outputs\Flowstatus.csv" | ConvertTo-Html | Out-File "Outputs\Flowstatus.html"
