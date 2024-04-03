#Disable Managed Environment
Import-Module Microsoft.PowerApps.Administration.PowerShell

#EnvironmentID
$envID = "<EnvironmentID>"

$UpdatedGovernanceConfiguration = [pscustomobject]@{
    protectionLevel = "Basic"
}

Set-AdminPowerAppEnvironmentGovernanceConfiguration -EnvironmentName $envID -UpdatedGovernanceConfiguration $UpdatedGovernanceConfiguration
