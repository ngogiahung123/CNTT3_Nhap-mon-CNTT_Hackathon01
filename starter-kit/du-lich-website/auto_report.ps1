# Script: auto_report.ps1
# Tac gia : Ngô Gia Hưng 
# Ngay tao : 28/10/2026

Write-Host "Dang loc log..."

"===BAO CAO LOI===" > .\logs\auto_repost.txt

Get-Content .\logs\travel.log | Select-String "ERROR" >> .\logs\auto_repost.txt

Write-Host "Hoan thanh!"