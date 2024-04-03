#Import PowerShell for Power Platform Administrators
Import-Module Microsoft.PowerApps.Administration.PowerShell

#Sign in interactively with the Add-PowerAppsAccount cmdlet
Add-PowerAppsAccount -Endpoint prod 

#Set the Environment ID
$EnvID = "<Environment ID>"

#View current configuration
Get-AdminPowerAppEnvironment -EnvironmentName $EnvID

#Set the retention period to 28 days
Set-AdminPowerAppEnvironmentBackupRetentionPeriod -EnvironmentName $EnvID -NewBackupRetentionPeriodInDays 28

#Verify the retention period
Get-AdminPowerAppEnvironment -EnvironmentName $EnvID
