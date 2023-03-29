test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

dev:
	docker-compose up

install: 
	docker-compose run --rm app npm ci

ci:
	 make copy-env & docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

copy-env:
	cp app/.env.example .env

