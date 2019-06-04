.PHONY: all
all:
	docker-compose -f web/docker-compose.yaml up --build -d
	docker-compose -f env-api/docker-compose.yaml up --build -d
	docker-compose -f lb/docker-compose.yaml up --build -d

.PHONY: downall
downall:
	docker-compose -f web/docker-compose.yaml down
	docker-compose -f env-api/docker-compose.yaml down
	docker-compose -f lb/docker-compose.yaml down
