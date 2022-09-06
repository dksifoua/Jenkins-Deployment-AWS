all: ssh up start

ssh:
	ssh-keygen -b 2048 -t rsa -f jenkins_agent -q -N ""

up: export JENKINS_AGENT_SSH_PUBKEY=$(shell cat jenkins_agent.pub)
up:
	docker compose up -d --no-start

start:
	docker compose start

stop:
	docker compose stop

down:
	docker compose down --rmi all --volumes