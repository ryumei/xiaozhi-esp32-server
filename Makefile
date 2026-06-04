SRC_DIR=./

.PHONY: build
build: build-web build-server

.PHONY: build-web
build-web:
	docker build -t xiaozhi-web:local -f ./Dockerfile-web $(SRC_DIR)

.PHONY: build-server-base
build-server-base:
	docker build -t xiaozhi-server-base:local -f ./Dockerfile-server-base $(SRC_DIR)

.PHONY: build-server
build-server: build-server-base
	docker build -t xiaozhi-server:local -f ./Dockerfile-server $(SRC_DIR)


