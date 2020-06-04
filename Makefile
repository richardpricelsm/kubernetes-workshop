-include .env
export 

VERSION:= $(shell git rev-parse --short HEAD)

generate-secrets: 
	kubectl delete secret database
	kubectl create secret generic database --from-literal=MYSQL_USER=$(MYSQL_USER) --from-literal=MYSQL_PASSWORD=$(MYSQL_PASSWORD)


version:
	$(VERSION)