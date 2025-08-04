Start-Process -FilePath "dism.exe" -ArgumentList "/online", "/cleanup-image", "/restorehealth" -Wait -NoNewWindow
Start-Process -FilePath "sfc.exe" -ArgumentList "/scannow" -Wait -NoNewWindow
cmd.exe /c "echo Y | chkdsk C: /r"
Write-Host "Reboot your computer." -ForegroundColor Green
