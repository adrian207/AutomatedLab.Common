function Test-IsAdministrator
{
    
    [CmdletBinding()]
    param ()
    
    $currentUser = [Security.Principal.WindowsIdentity]::GetCurrent()
    (New-Object -TypeName Security.Principal.WindowsPrincipal -ArgumentList $currentUser).IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)
}
