#Export number of apps in each environment to csv
Import-Module -Name Microsoft.PowerApps.Administration.PowerShell
Import-Module -Name Microsoft.PowerApps.PowerShell

Get-AdminPowerApp | Select-Object -ExpandProperty EnvironmentName | Group-Object | ForEach-Object { New-Object -TypeName PSObject -Property @{ DisplayName = (Get-AdminPowerAppEnvironment -EnvironmentName $_.Name | Select-Object -ExpandProperty displayName); Count = $_.Count } } | Export-Csv -Path 'Outputs\appdetails.csv'
