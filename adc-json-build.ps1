##sample JSON param { "Name": "429362-wincline.local",  
#NOTE:  `{`"Name`":`"429362-wincline.local`"`} returns {"Name":"429362-wincline.local"}
#        "`{`"Name`":`"429362 -wincline .local`"`} " *** start & end with " , escape {,}," with `
#         """{`"Name`":`"429362-wincline.  local`"}""" start & end with """  and escape " within the body within `

param($sIn)
# $sIn starts and ends with an extraneous double quote that  needs to be stripped.

$sMyLog=$MyInvocation.MyCommand.Definition +".txt"
# $sIn starts and ends with an extraneous double quote that  needs to be stripped.
Add-Content $sMyLog $sIn.Substring(1,$sIn.Length-2)
