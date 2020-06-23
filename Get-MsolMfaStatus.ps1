Connect-MsolService
$Users = Get-MsolUser -All
$Users | Foreach-Object{Get-MsolUser -UserPrincipalName $_.UserPrincipalName} | Where-Object{$_.StrongAuthenticationMethods -ne $null}