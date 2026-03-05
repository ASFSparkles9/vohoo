import { NextResponse } from 'next/server'
import type { NextRequest } from 'next/server'

export function middleware(request: NextRequest) {
  // В реальном приложении здесь будет проверка сессии
  // Для демо используем заголовок
  const response = NextResponse.next()
  
  // Устанавливаем demo-user для всех запросов
  if (!request.headers.get('x-user-id')) {
    response.headers.set('x-user-id', 'demo-user')
  }
  
  return response
}

export const config = {
  matcher: '/api/:path*',
}



