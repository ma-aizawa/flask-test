#! /bin/bash
cd `dirname $0`

eval $(minikube -p minikube docker-env)

cd ../
docker build -t flask-test/app:v1 .
