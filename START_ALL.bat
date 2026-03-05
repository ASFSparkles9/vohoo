@echo off
echo ========================================
echo   Запуск SyncNote - Все сервисы
echo ========================================
echo.

echo [1/2] Запуск бэкенда...
start "SyncNote Backend" cmd /k "cd /d F:\vohoo && npm run dev"
timeout /t 3 /nobreak >nul

echo [2/2] Запуск мобильного приложения...
start "SyncNote Mobile" cmd /k "cd /d F:\vohoo\mobile && npm start"
timeout /t 2 /nobreak >nul

echo.
echo ========================================
echo   Сервисы запущены!
echo ========================================
echo.
echo Веб-версия: http://localhost:3001
echo Мобильная версия: http://localhost:8081 (нажмите w в терминале)
echo.
echo Нажмите любую клавишу для открытия браузера...
pause >nul

start http://localhost:3001

echo.
echo Готово! Браузер открыт.
echo Закройте это окно, чтобы остановить все сервисы.
pause

