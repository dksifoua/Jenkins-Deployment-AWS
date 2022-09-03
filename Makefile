DOCKER = $(shell which docker)

all: build up

build:
	$(DOCKER) build -t jenkins-blueocean:2.346.3-1 .

up:
	$(DOCKER) compose up -d

down:
	$(DOCKER) compose down

start:
	$(DOCKER) compose start

stop:
	$(DOCKER) compose stop