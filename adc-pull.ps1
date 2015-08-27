#Invoke-RestMethod -Uri "https://raw.githubusercontent.com/tjsiwinski/adc_plus_one/master/adc-test.ps1" -OutFile 'c:\rs-pkgs\ice\adc-test.ps1'
#Invoke-WebRequest -Uri "https://raw.githubusercontent.com/tjsiwinski/adc_plus_one/master/adc-test.ps1" -UseBasicParsing -OutFile 'c:\rs-pkgs\ice\adc-test.ps1' 

param($AccountNum)
$sMyLog=$MyInvocation.MyCommand.Definition +".txt"
$sOut= "$($AccountNum) was passed , attempting download of $($AccountNum).ps1 from GitHub.com "
Add-Content $sMyLog $sOut
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/tjsiwinski/adc_plus_one/master/$($AccountNum).ps1" -UseBasicParsing -OutFile 'c:\rs-pkgs\ice\adc-test.ps1' 
If (Test-Path 'c:\rs-pkgs\ice\adc-test.ps1')
{
    $sOut+= "`nSuccess  $($AccountNum).ps1 was downloaded from GitHub.com" 
}
else
{
    $sOut+= "`nFail $($AccountNum).ps1 was NOT downloaded from GitHub.com"
}

Write-Host RBA START STATUS:
Write-Host Success
Write-Host RBA END STATUS:
Write-Host .
Write-Host RBA START DATA:
Write-Host $sOut
Write-Host
Write-Host RBA END DATA: