$Password = Read-Host -AsSecureString
New-LocalUser "test" -Password $Password -FullName "test" -Description "Description of this account."
Add-LocalGroupMember -Group "Administrators" -Member "test"
#Start-Process -FilePath C:\Users\kyles\Downloads\AutoLogon\Autologon64.exe
#pause
#Restart-Computer -Force