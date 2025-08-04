If (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole(`
    [Security.Principal.WindowsBuiltInRole] "Administrator"))
{
    Start-Process powershell -ArgumentList "-ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
    Exit
}

Start-Process -FilePath "dism.exe" -ArgumentList "/online", "/cleanup-image", "/restorehealth" -Wait -NoNewWindow
Start-Process -FilePath "sfc.exe" -ArgumentList "/scannow" -Wait -NoNewWindow
cmd.exe /c "echo Y | chkdsk C: /r"
Write-Host "!!!REBOOT YOUR COMPUTER!!!" -ForegroundColor Green
Write-Host "!!!REBOOT YOUR COMPUTER!!!" -ForegroundColor Green
Write-Host "!!!REBOOT YOUR COMPUTER!!!" -ForegroundColor Green
