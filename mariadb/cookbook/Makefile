DOCKER_IMAGE := mariadb
VERSION := 11-noble
NAME := $(shell basename ${PWD})
CONTAINER_RUNNING := $(shell docker ps -a -q -f name=$(DOCKER_IMAGE)-$(NAME))
DB_NAME := cookbook

.PHONY: all
all: run migrate load console

.PHONY: clean
clean:
	@echo "Cleaning project"
	docker stop $(DOCKER_IMAGE)-$(NAME)
	docker rm $(DOCKER_IMAGE)-$(NAME)

.PHONY: pull
pull:
	@which docker >/dev/null 2>&1 || { \
		echo "Docker not found, please install Docker"; \
		exit 1; \
	}
	@echo "Pulling docker image"
	docker pull $(DOCKER_IMAGE):$(VERSION)

.PHONY: run
run: pull
	@echo "Running dbms on container"
ifdef CONTAINER_RUNNING
	@echo "Container it's created, ensure it's running"
	docker start $(DOCKER_IMAGE)-$(NAME)
	sleep 15s
else
	docker run \
	--detach --name $(DOCKER_IMAGE)-$(NAME) \
	--env MARIADB_ALLOW_EMPTY_ROOT_PASSWORD=1 \
	$(DOCKER_IMAGE):$(VERSION)
	sleep 30s
endif

.PHONY: migrate
migrate:
	@echo "Migrating schema"
	docker exec -i $(DOCKER_IMAGE)-$(NAME) mariadb < db/schema/schema.sql

.PHONY: load
load:
	@echo "Loading test data"
	docker exec -i $(DOCKER_IMAGE)-$(NAME) mariadb  < db/data/data.sql

.PHONY: console
console:
	@echo "Attaching console"
	docker exec -it $(DOCKER_IMAGE)-$(NAME) mariadb $(DB_NAME)
