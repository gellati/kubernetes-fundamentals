#/bin/bash

# create controller from backend.yaml manifest file

kubectl create -f backend.yaml

# create ingress rule from nginx.yaml manifest

kubectl create -f nginx yaml

# show ingress

kubctl get ingress
