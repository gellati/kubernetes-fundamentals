#!/bin/bash

minikube start

minikube ssh

curl localhost:8080
curl localhost:8080/version
curl localhost:8080/api/v1


kubectl version
kubectl get pods

kubectl create -f redis.yaml

kubectl logs redis

kubectl exec -ti redis redis-cli

kubectl create ns lfs248


kubectl create -f redis-lfs248.yaml

kubectl get ns

kubectl logs redis --namespace=lfs248

kubectl --help

kubectl delete pods redis
kubectl delete pods redis --namespace=lfs248
kubectl delete lfs248
