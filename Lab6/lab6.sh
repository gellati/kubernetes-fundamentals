#!/bin/bash

kubectl run ghost --image=ghost

kubectl get deployments

kubectl get pods

kubectl scale deployments ghost --replicas=5

kubectl get pods

kubectl get deployment ghost -o json | jq -r .spec.selector # may require installation of jq

kubectl label pods ghost-943298627-38761 run-

kubectl get pods -Lrun


# set command in kubernetes 1.3
