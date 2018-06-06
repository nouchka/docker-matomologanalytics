
.DEFAULT_GOAL := build

build:
	docker-compose build

init: build
	docker-compose up -d

.PHONY: test
test:
	docker-compose run --rm parse-site-access
	sleep 1
	docker-compose run --rm parse-site-blog

down:
	docker-compose down -v
