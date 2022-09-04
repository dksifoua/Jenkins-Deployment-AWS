DOCKER = $(shell which docker)

all: up start

up:
	$(DOCKER) compose up -d --no-start

start:
	$(DOCKER) compose start

stop:
	$(DOCKER) compose stop

down:
	$(DOCKER) compose down --rmi all --volumes