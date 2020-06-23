Connect-MsolService
$Users = Get-MsolUser -All
$Users | %{Get-MsolUser -UserPrincipalName $_.UserPrincipalName} | Where-Object{$_.StrongAuthenticationMethods -ne $null}