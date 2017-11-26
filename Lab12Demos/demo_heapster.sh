
# check kubernets status
minikube status

kubectl get nodes

# list minikube addons

minikube addons list

# enable heapster addon

minikube addons enable heapster

# look at all pods

kubectl get pods --all-namespaces --watch

## check influxdb and grafana, in the same pod, so there is apod with two containers
# influxdb - time series database, grafana- visualisation tool

# check all pods

kubectl get pods --all-namespaces

# run ghost microbloggin platform
kubectl run ghost --image=ghost
# run game
kubectl run game --image=runseb/2048

# expose deployments and create NodePort service
expose deployments ghost --port=2368 --type=NodePort
expose deployments game --port=80 --type=NodePort

# check status of deployments
kubectl get pods --all-namespaces

# metrics on nodes
kubectl top nodes

# open dashboard
minikube dashboard

# get all services
kubectl get svc --all-namespaces

# visible ports at PORT(S) column, right of / is accessible by browser from 192.168.99.100
# grafana dashboard at 192.168.99.100:32263

# see which pods are running
kubectl get pods

# run ghost service
minikube service ghost



