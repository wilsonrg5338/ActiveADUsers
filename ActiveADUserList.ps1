Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope Process

get-aduser -filter 'enabled -eq $true' | Format-Table Name, SamAccountName | Out-File -FilePath .\ADActiveUsers.txt

get-aduser -filter 'enabled -eq $true' -Properties Name, SamAccountName | Select Name, SamAccountName | Export-Csv -Path .\ADActiveUsers.csv -NoTypeInformation

pause
