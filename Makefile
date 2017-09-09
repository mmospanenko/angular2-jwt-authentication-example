init:
	docker-compose build
	docker-compose run --rm client npm i

.PHONY: client
client:
	docker-compose run --rm --service-ports client sh

stop:
	find . -name \*.pyc -delete
	docker-compose stop
	docker stop $(shell docker ps -a -q)
