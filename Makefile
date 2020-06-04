-include .env
export 

DOCKERHUB=YOURDOCKERHUBUSERNAME 
IMAGENAME=express-app
VERSION:= $(shell git rev-parse --short HEAD)

NAMESPACE=development


 