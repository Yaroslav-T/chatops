# Пример установки и запуска errbot c err-storage-redis
Для запуска:
- склонировать репозиторий
- перейти в папку куда был скопирован репозиторий
- заполнить в files/config.py BOT_ADMINS BOT_IDENTITY
- `make start`
- для удаления запущенного в процессе контейнера с redis `make delete`

## что делает make start?
- создает venv и устаналивает зависимости из requirements.txt
- запускает docker контейнер с redis
- инициализирует errbot
- замена файла конфигурации config.py где прописаны параметры для запуска
- запуск errbot в режиме telegram

# Example of installing and running errbot with err-storage-redis
To start:
- clone the repository
- navigate to the folder where the repository was copied
- run `make start`
- to remove the running Redis container, use `make delete`

## What does `make start` do?
- It creates a virtual environment (venv) and installs dependencies from requirements.txt
- It starts a Docker container with Redis
- It initializes errbot
- It replaces the configuration file config.py where the startup parameters are specified
- It starts errbot in telegram mode
