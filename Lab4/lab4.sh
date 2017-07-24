#!/bin/bash

minikube start

minikube --help

minikube ip

kubectl get nodes

kubectl run ghost --image=ghost

kubectl expose deployment/ghost --port=2368 --type=NodePort

kubectl get svc ghost -o yaml

# directly open service dashboard in browser
minikube service ghost
