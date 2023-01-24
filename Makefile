-include .env
export
IMAGENAME=docker-workshop
VERSION:= $(shell git rev-parse --short HEAD)
DOCKERHUB_USERNAME?=richardpricelsm


VERSION:= $(shell git rev-parse --short HEAD)

generate-secrets:
	# kubectl delete secret database
	kubectl create secret generic database --from-literal=MYSQL_USER=$(MYSQL_USER) --from-literal=MYSQL_PASSWORD=$(MYSQL_PASSWORD)

docker-build:
	docker build . -t $(IMAGENAME):$(VERSION) -t $(IMAGENAME):latest


build-deployment-template:
	npx envsub ./templates/deployment.yaml stdout > configs/deployment.yaml


version:
	echo $(VERSION)