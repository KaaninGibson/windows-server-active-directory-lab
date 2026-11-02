
#Requires -Modules ActiveDirectory

<#
.SYNOPSIS
    Reports organizational units in the Active Directory lab.

.DESCRIPTION
    Queries the lab domain and lists organizational units.
    This script is read-only and does not modify AD.
#>

$Domain = "corp.northstarlab.test"

try {
    $DomainInfo = Get-ADDomain -Identity $Domain -ErrorAction Stop

    $OUs = Get-ADOrganizationalUnit `
        -Filter * `
        -SearchBase $DomainInfo.DistinguishedName `
        -ErrorAction Stop

    $OUs |
        Select-Object Name, DistinguishedName |
        Sort-Object Name |
        Format-Table -AutoSize
}
catch {
    Write-Error "Active Directory query failed: $($_.Exception.Message)"
}
