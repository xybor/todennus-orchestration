start-rest:
	go run ./todennus-backend/cmd/main.go rest --env ./todennus-backend/.env

docker-build-backend:
	docker build -t xybor/todennus-backend -f ./todennus-backend/build/package/workspace.Dockerfile .

docker-build-idp:
	cd todennus-idp && make docker-build

docker-build-migration:
	docker build -t xybor/todennus-migration -f ./todennus-migration/workspace.Dockerfile .

quick-start:
	cd todennus-orchestration && make quick-start

quick-start-down:
	cd todennus-orchestration && make quick-start-down
