SERVICE_NAME ?= fluentd
DOCKER_TAG ?= latest
VERSION ?= 0.14.11

image:
	docker build --pull -t yinc2/$(SERVICE_NAME):$(DOCKER_TAG) -f Dockerfile .

push:
	docker push yinc2/$(SERVICE_NAME):$(DOCKER_TAG)
	docker tag yinc2/$(SERVICE_NAME):$(DOCKER_TAG) yinc2/$(SERVICE_NAME):$(VERSION)
	docker push yinc2/$(SERVICE_NAME):$(VERSION)
