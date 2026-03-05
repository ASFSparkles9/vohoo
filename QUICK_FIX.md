# Быстрое исправление "Port already in use"

## ✅ Проблема решена!

Процесс, который занимал порт 3001, был остановлен. Бэкенд запускается.

## Если ошибка повторится:

### Быстрое решение:

```powershell
# Остановить все процессы Node.js на порту 3001
Get-Process -Name node -ErrorAction SilentlyContinue | Where-Object {
    (Get-NetTCPConnection -OwningProcess $_.Id -ErrorAction SilentlyContinue).LocalPort -eq 3001
} | Stop-Process -Force
```

### Или используйте другой порт:

1. Измените `package.json`:
   ```json
   "dev": "next dev -p 3002"
   ```

2. Обновите `mobile/.env`:
   ```
   EXPO_PUBLIC_API_URL=http://192.168.3.3:3002
   ```

## Проверка:

Бэкенд должен запуститься и быть доступен на:
- http://localhost:3001

Проверьте в браузере или через:
```powershell
Invoke-WebRequest -Uri "http://localhost:3001" -Method GET
```



