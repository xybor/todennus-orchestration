# todennus-orchestration

## Prerequisites

Install [Docker](https://docs.docker.com/engine/install/).

## Get started

1. Initialize repositories.

```shell
$ git clone https://github.com/xybor/todennus-orchestration
$ cd todennus-orchestration
todennus-orchestration$ git submodule init
todennus-orchestration$ git submodule update --remote --merge
```

2. You need to setup environment variables at `.env` (or using `export` command). Please refer the [.env.example](./.env.example).

3. Build docker images.

```shell
todennus-orchestration$ make docker-build-all
```

4. Start docker compose.

```shell
todennus-orchestration$ make quick-start
```

## Development environment


Install [Golang 1.23](https://go.dev/doc/install).

### Clone all repositories

```shell
$ git clone https://github.com/xybor/todennus-orchestration
$ git clone https://github.com/xybor/todennus-backend
$ git clone https://github.com/xybor/todennus-idp
$ git clone https://github.com/xybor/todennus-migration
$ git clone https://github.com/xybor/todennus-config
$ git clone https://github.com/xybor/x
```

### Setup go workspace

```shell
$ go work init ./todennus-backend
$ go work use ./todennus-migration
$ go work use ./todennus-config
$ go work use ./x
```

### Copy makefile

```shell
$ cd todennus-orchestration
todennus-orchestration$ cp workspace.Makefile ../Makefile
```
