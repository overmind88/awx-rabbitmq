.PHONY: docker-build
RABBITMQ_VERSION=3.7.8

all: docker-build

docker-build:
	docker build --no-cache --build-arg RABBITMQ_VERSION=$(RABBITMQ_VERSION) -t overmind88/awx_rabbitmq-arm:latest -t overmind88/awx_rabbitmq-arm:$(RABBITMQ_VERSION) .

