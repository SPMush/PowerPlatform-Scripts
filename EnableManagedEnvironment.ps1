#Enable Managed Environment
Import-Module Microsoft.PowerApps.Administration.PowerShell

#Set Environment ID
$envID = "<Environment ID>"

$GovernanceConfiguration = [pscustomobject] @{ 
    protectionLevel = "Standard" 
    settings = [pscustomobject]@{ 
        extendedSettings = @{} 
    }
} 

Set-AdminPowerAppEnvironmentGovernanceConfiguration -EnvironmentName $envID -UpdatedGovernanceConfiguration $GovernanceConfiguration
