#Export PowerApp Connection Role Assignments
Import-Module -Name Microsoft.PowerApps.Administration.PowerShell
Import-Module -Name Microsoft.PowerApps.PowerShell
Get-AdminPowerAppConnectionRoleAssignment | Select-Object -Property PrincipalDisplayName, RoleType,ConnectionName,ConnectorName | Export-Csv -Path 'Outputs\ConnectionRoleAssignment.csv'
 Import-CSV "Outputs\ConnectionRoleAssignment.csv" | ConvertTo-Html | Out-File "Outputs\ConnectionRoleAssignment.html"
