param(
    [string]$CVE,
    [string]$Package
)

Write-Host "Đang kiểm tra và vá package $Package cho CVE $CVE"

# Ví dụ: Cài đặt bản vá theo KB
Install-WindowsUpdate -KBArticleID $Package -AcceptAll -AutoReboot

if ($?) {
    Write-Host "Patch thành công cho $CVE"
} else {
    Write-Host "Patch thất bại cho $CVE"
}

