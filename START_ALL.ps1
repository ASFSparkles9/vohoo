# Запуск всех сервисов SyncNote

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  Запуск SyncNote - Все сервисы" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Запуск бэкенда
Write-Host "[1/2] Запуск бэкенда..." -ForegroundColor Yellow
Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd F:\vohoo; npm run dev" -WindowStyle Normal
Start-Sleep -Seconds 3

# Запуск мобильного приложения
Write-Host "[2/2] Запуск мобильного приложения..." -ForegroundColor Yellow
Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd F:\vohoo\mobile; npm start" -WindowStyle Normal
Start-Sleep -Seconds 2

Write-Host ""
Write-Host "========================================" -ForegroundColor Green
Write-Host "  Сервисы запущены!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green
Write-Host ""
Write-Host "Веб-версия: " -NoNewline
Write-Host "http://localhost:3001" -ForegroundColor Cyan
Write-Host "Мобильная версия: " -NoNewline
Write-Host "http://localhost:8081" -ForegroundColor Cyan
Write-Host "(нажмите w в терминале Metro)" -ForegroundColor Gray
Write-Host ""

# Открыть браузер
Start-Sleep -Seconds 2
Start-Process "http://localhost:3001"

Write-Host "Браузер открыт!" -ForegroundColor Green
Write-Host "Закройте окна терминалов, чтобы остановить сервисы." -ForegroundColor Gray
Write-Host ""

