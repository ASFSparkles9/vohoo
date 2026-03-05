# Установка мобильного приложения SyncNote

## Требования

- Node.js 18+
- Expo CLI (устанавливается автоматически)
- iOS Simulator (для macOS) или Android Emulator
- Запущенный бэкенд на порту 3000

## Установка

1. **Перейдите в папку mobile:**
```bash
cd mobile
```

2. **Установите зависимости:**
```bash
npm install
```

3. **Настройте API URL:**
   
   Создайте файл `.env` в папке `mobile`:
   ```
   EXPO_PUBLIC_API_URL=http://localhost:3000
   ```
   
   Для тестирования на реальном устройстве используйте IP-адрес вашего компьютера:
   ```
   EXPO_PUBLIC_API_URL=http://192.168.1.100:3000
   ```

4. **Запустите приложение:**
```bash
# Для iOS (требуется macOS)
npm run ios

# Для Android
npm run android

# Для веб (для тестирования)
npm run web
```

## Структура проекта

```
mobile/
├── app/              # Экранные компоненты (Expo Router)
│   ├── (tabs)/      # Табы навигации
│   │   ├── index.tsx      # Заметки
│   │   ├── calendar.tsx   # Календарь
│   │   ├── tasks.tsx      # Задачи
│   │   ├── friends.tsx    # Друзья
│   │   └── ai.tsx         # ИИ-помощник
│   ├── note/[id].tsx      # Создание/редактирование заметки
│   ├── event/[id].tsx     # Создание/редактирование события
│   ├── task/[id].tsx      # Создание/редактирование задачи
│   └── _layout.tsx        # Корневой layout
├── lib/             # Утилиты и API клиент
│   ├── api.ts       # API методы
│   └── utils.ts     # Утилиты
└── assets/          # Изображения и иконки
```

## Функции

- ✅ Заметки с тегами
- ✅ Календарь с событиями
- ✅ Управление задачами
- ✅ Стыковка с друзьями
- ✅ ИИ-помощник

## Тестирование на реальном устройстве

1. Установите приложение Expo Go на ваш телефон:
   - iOS: [App Store](https://apps.apple.com/app/expo-go/id982107779)
   - Android: [Google Play](https://play.google.com/store/apps/details?id=host.exp.exponent)

2. Убедитесь, что телефон и компьютер в одной Wi-Fi сети

3. Найдите IP-адрес вашего компьютера:
   - Windows: `ipconfig`
   - macOS/Linux: `ifconfig`

4. Обновите `.env` с IP-адресом:
   ```
   EXPO_PUBLIC_API_URL=http://192.168.1.100:3000
   ```

5. Запустите приложение и отсканируйте QR-код в Expo Go

## Сборка для продакшена

Для создания standalone приложений используйте EAS Build:
```bash
npm install -g eas-cli
eas build --platform ios
eas build --platform android
```

## Примечания

- Приложение использует тот же бэкенд, что и веб-версия
- Все данные синхронизируются через API
- Для работы ИИ-функций требуется OpenAI API ключ в бэкенде



