############################################################################################
# 
# Send File from local drive in email using powershell.
# Year : May 2021
#
# Setup in Task Schedular
# Action Tab-> Program/script->Value:powershell.exe
# Add arguments : -ExecutionPolicy Bypass  C:\InsuranceSchedular\InsuranceReport.ps1
#
############################################################################################

$SMTPServer = "smtp.hostinger.com"
$SMTPPort = "587"
$enableSSL = $true
$Username = "noreply@8si.tech"
$Password = "Kuf57411"

$to = "suman@8squarei.com,anil@8squarei.com,abhishek@8squarei.com"
$cc = "m1remit.alert@8squarei.com"
$subject = "Insurance Transactions List"
$body = "KLIQ Report as of "+$(get-date -f "yyyy-MM-dd")

$attachment = 'C:\SchedulerReport\KLIQ_REPORT_'+$(get-date -f "yyyyMMdd")+ '.xls'

$message = New-Object System.Net.Mail.MailMessage
$message.subject = $subject
$message.body = $body
$message.to.add($to)
$message.cc.add($cc)
$message.from = $username
$message.attachments.add($attachment)

$smtp = New-Object System.Net.Mail.SmtpClient($SMTPServer, $SMTPPort);
$smtp.EnableSSL = $true
$smtp.Credentials = New-Object System.Net.NetworkCredential($Username, $Password);
$smtp.send($message)
#write-host "Mail Sent"