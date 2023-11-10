import logging
from pathlib import Path
import os

# This is a minimal configuration to get you started with the Text mode.
# If you want to connect Errbot to chat services, checkout
# the options in the more complete config-template.py from here:
# https://raw.githubusercontent.com/errbotio/errbot/master/errbot/config-template.py

current_directory = Path.cwd()

BACKEND = "Telegram"  # Errbot will start in text mode (console only mode) and will answer commands from there.

BOT_DATA_DIR = str(current_directory / r"data")
BOT_EXTRA_PLUGIN_DIR = str(current_directory / r"plugins")
BOT_EXTRA_BACKEND_DIR = str(current_directory / r"backend-plugins")

BOT_LOG_FILE = str(current_directory / r"errbot.log")
BOT_LOG_LEVEL = logging.INFO

BOT_ADMINS = (
    "@...", # здесь указать пользователей
)

BOT_IDENTITY = {
    'token': '',  # здесь указать токен
}

BOT_EXTRA_STORAGE_PLUGINS_DIR = str(current_directory / r"data/plugins/errbotio/err-storage-redis")
STORAGE = 'Redis'
STORAGE_CONFIG = {
    'host': 'redis',
    'port': 6379,
    'db': 0,
    'password': '',
}
