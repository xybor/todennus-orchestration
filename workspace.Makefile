start-rest:
	go run ./todennus-backend/cmd/main.go rest --env ./todennus-backend/.env

docker-build-backend:
	docker build -t xybor/todennus-backend -f ./todennus-backend/build/package/workspace.Dockerfile .

docker-build-idp:
	cd todennus-idp && make docker-build

docker-build-migration:
	docker build -t xybor/todennus-migration -f ./todennus-migration/workspace.Dockerfile .

quick-start:
	docker compose --env-file ./todennus-orchestration/.env -f ./todennus-orchestration/quick-start.yaml up -d

quick-start-down:
	docker compose -f ./todennus-orchestration/quick-start.yaml down
