CADDY_VERSION := 1.0.3

NAME ?= $(shell echo $${PWD\#\#*/})
VERSION ?= $(shell git describe --always)

DOCKER_REPO := mateuszdyminski

.DEFAULT_GOAL := release
.PHONY: build push release

build:
	docker build \
	--build-arg CADDY_VERSION="$(CADDY_VERSION)" \
	--label="build.version=$(VERSION)" \
	--tag="$(DOCKER_REPO)/$(NAME):latest" \
	--tag="$(DOCKER_REPO)/$(NAME):$(VERSION)" \
	.

push:
	docker push "$(DOCKER_REPO)/$(NAME):latest"
	docker push "$(DOCKER_REPO)/$(NAME):$(VERSION)"

release: build push
