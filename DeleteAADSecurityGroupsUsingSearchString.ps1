# Install the AzureAD module (if not already installed)
Install-Module -Name AzureAD

# Connect to Azure Active Directory
Connect-AzureAD

# Set the search string condition for th Groups to retrieve and delete
$SearchString = "<Enter Search String>"

# Retrieve Azure AD groups that match the specified search string
$Groups = Get-AzureADGroup -SearchString $SearchString

# Display the retrieved groups
$Groups

# Iterate through each group and remove them
foreach ($Group in $Groups)
{
    # Remove the Azure AD group using its Object ID
    Remove-AzureADGroup -ObjectId $Group.ObjectId
}

# Display the remaining groups (if any) after removal
Get-AzureADGroup -SearchString $SearchString
