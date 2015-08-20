$sMyLog=$MyInvocation.MyCommand.Definition +".txt"
Add-Content $sMyLog "$(Get-Date) - *** Script start *** "
Write-Host "Hello World"
Add-Content $sMyLog "$(Get-Date) - *** Script end *** "
