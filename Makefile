docker-build-backend:
	cd todennus-backend && make docker-build

docker-build-migration:
	cd todennus-migration && make docker-build

docker-build-idp:
	cd todennus-idp && make docker-build

docker-build-all: docker-build-backend docker-build-migration docker-build-idp

quick-start:
	docker compose --env-file .env -f quick-start.yaml up -d

quick-start-down:
	docker compose -f quick-start.yaml down
