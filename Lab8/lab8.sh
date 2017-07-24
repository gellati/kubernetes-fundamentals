
# create the pod from nginx.yaml
# don't need validate flag if using newer version of kubernetes

kubectl create -f nginx.yaml --validate=false

# create a service accesible by minikube
kubectl create -f nginx-svc.yaml --validate=false

minikube service nginx

# create busybox container
kubectl create -f busybox.yaml

kubectl exec -ti busybox -- nslookup nginx


