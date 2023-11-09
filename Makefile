# Makefile

# Variables
VENV_NAME?=venv
PYTHON=${VENV_NAME}/bin/python3
ERRBOT=${VENV_NAME}/bin/errbot
PIP=${VENV_NAME}/bin/pip3

# Targets

venv: $(VENV_NAME)/bin/activate

$(VENV_NAME)/bin/activate: requirements.txt
	test -d $(VENV_NAME) || virtualenv -p python3 $(VENV_NAME)
	${PIP} install -Ur requirements.txt
	touch $(VENV_NAME)/bin/activate

docker:
	docker run --name redis-errbot -d -p 6379:6379 -it redis/redis-stack:latest

delete:
	docker stop redis-errbot
	docker rm redis-errbot

errbot:
	$(ERRBOT) --init
	mkdir -p ./data/plugins/errbotio/err-storage-redis
	cp ./files/redisstorage.plug ./data/plugins/errbotio/err-storage-redis
	cp ./files/redisstorage.py ./data/plugins/errbotio/err-storage-redis
	cp ./files/config.py ./config.py
	$(ERRBOT) -T

start: venv docker errbot