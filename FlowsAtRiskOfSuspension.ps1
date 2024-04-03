#Outputs csv of Flows at risk of suspension in those environments where you have admin permissions

Import-Module -Name Microsoft.PowerApps.Administration.PowerShell
Get-AdminPowerAppEnvironment | Foreach-Object {Get-AdminFlowAtRiskOfSuspension -EnvironmentName $_.EnvironmentName -ApiVersion ‘2016-11-01’ | Export-Csv -Path Outputs\FlowsAtRisk.csv -NoTypeInformation -Append}
