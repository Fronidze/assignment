.DEFAULT_GOAL := run

docker.build:
	@docker compose build

docker.run: docker.down
	@docker compose up -d

docker.down:
	@docker compose down

clear.opcache:
	@docker compose exec app php -v