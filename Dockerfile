# Используйте официальный образ Ubuntu в качестве базового
FROM ubuntu:latest

# Обновите список пакетов и установите необходимые инструменты
RUN apt-get update && \
    apt-get install -y \
    gcc \
    binutils \
    make \
    && rm -rf /var/lib/apt/lists/*

# Установите рабочую директорию
WORKDIR /app

# Скопируйте исходные файлы в рабочую директорию
COPY . /app

# Команда для сборки (опционально, если у вас есть Makefile)
# RUN make

# Укажите команду для запуска при запуске контейнера (опционально)
# CMD ["./your_executable"]

