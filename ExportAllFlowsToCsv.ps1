#Export all Flows to csv and html
Import-Module -Name Microsoft.PowerApps.Administration.PowerShell
Import-Module -Name Microsoft.PowerApps.PowerShell
Get-AdminFlow | Export-Csv -Path 'Outputs\FlowExport.csv'
Import-CSV "Outputs\FlowExport.csv" | ConvertTo-Html | Out-File "Outputs\Report.html"
