# Вибір базового образу
FROM node:16

# Налаштування робочої директорії
WORKDIR /app

# Копіювання package.json та встановлення залежностей
COPY package*.json ./
RUN npm install

# Копіювання всіх файлів проєкту
COPY . .

# Збірка фронтенду для продакшн
RUN npm run build

# Запуск додатку на порту 3000
CMD ["npm", "start"]
