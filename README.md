# Пример установки и запуска errbot c err-storage-redis
Для запуска:
- склонировать репозиторий
- перейти в репозиторий
- `make start`
- для удаления запущенного в процессе контейнера с redis `make delete`

## что делает make start?
- создает venv и устаналивает зависимости из requirements.txt
- запускает docker контейнер с redis
- инициализирует errbot
- замена файла конфигурации config.py где прописаны параметры для запуска
- запуск errbot в режиме text

# Example of installing and running errbot with err-storage-redis
To start:
- clone the repository
- navigate into the repository
- run `make start`
- to remove the running Redis container, use `make delete`

## What does `make start` do?
- It creates a virtual environment (venv) and installs dependencies from requirements.txt
- It starts a Docker container with Redis
- It initializes errbot
- It replaces the configuration file config.py where the startup parameters are specified
- It starts errbot in text mode
