Start-Process -FilePath "dism.exe" -ArgumentList "/online", "/cleanup-image", "/restorehealth" -Wait -NoNewWindow
Start-Process -FilePath "sfc.exe" -ArgumentList "/scannow" -Wait -NoNewWindow
chkdsk C: /r
Write-Host "Script finished." -ForegroundColor Green
Read-Host
