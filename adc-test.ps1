$sMyLog=$MyInvocation.MyCommand.Definition +".txt"
Add-Content $sMyLog "$(Get-Date) - *** Script start *** "
Add-Content $sMyLog "Hello World"
$InDevice= (Get-Content .\Output.json) -join "`n" | ConvertFrom-Json
Add-Content $sMyLog "Account: $($InDevice.Account)"
Add-Content $sMyLog "AccountName: $($InDevice.'Account Name')"
Add-Content $sMyLog "DC: $($InDevice.Datacenter)"
Add-Content $sMyLog "Name: $($InDevice.Name)"
Add-Content $sMyLog "NickName: $($InDevice.NickName)"
Add-Content $sMyLog "Number: $($InDevice.Number)"
Add-Content $sMyLog "OSName: $($InDevice.OSname)"
Add-Content $sMyLog "OStype: $($InDevice.OStype)"
Add-Content $sMyLog "Platform: $($InDevice.PlatName)"
Add-Content $sMyLog "$(Get-Date) - *** Script end *** 
