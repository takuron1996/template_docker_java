SHELL = /bin/bash
CONTAINER_NAME = app
APPLICATION = application
DOCKER = docker exec $(CONTAINER_NAME)

prepare: build up install

run: format
	$(DOCKER) mvn exec:java

test: format
	$(DOCKER) mvn test

sh:
	docker exec -it $(CONTAINER_NAME) /bin/sh

up:
	docker-compose up -d

build:
	docker-compose build

down:
	docker-compose down

lint: format
	$(DOCKER) mvn pmd:pmd

format:
	$(DOCKER) mvn formatter:format

install:
	$(DOCKER) mvn install
