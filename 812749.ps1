$sMyLog=$MyInvocation.MyCommand.Definition +".txt"
$sOut="`r`n$($(Get-Date)) - *** Script start *** "

$InDevice= (Get-Content c:\rs-pkgs\ice\output.json) -join "`r`n" | ConvertFrom-Json
$sOut +="`r`n AccountNum: $($InDevice.Account)" 

$sOut +="`r`n AccountName:  AccountName: $($InDevice.'Account Name')"
$sOut +="`r`n DC:  $($InDevice.Datacenter)"
$sOut +="`r`n DeviceName:  $($InDevice.Name)"
$sOut +="`r`n DeviceNickName:  $($InDevice.NickName)"
$sOut +="`r`n DeviceNum:  $($InDevice.Number)"
$sOut +="`r`n OSName: $($InDevice.OSname)"
$sOut +="`r`n OStype: $($InDevice.OStype)"
$sOut +="`r`n Platform: $($InDevice.PlatName)"
$sOut +="`r`n$($(Get-Date)) - *** Script end *** "
Add-Content $sMyLog $sOut 

Write-Host RBA START STATUS:
Write-Host Success
Write-Host RBA END STATUS:
Write-Host .
Write-Host RBA START DATA:
Write-Host $sOut
Write-Host
Write-Host RBA END DATA: