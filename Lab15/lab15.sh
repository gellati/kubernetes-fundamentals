# display active pods
kubectl get pods

# show helm version
helm version

# start Tiller
helm init

# show Tiller pod
kubectl get pods --all-namespaces

# list helm repositories
helm repo list

# search for a package, e.g. redis
helm search redis

# install package from helm repository
helm install stable/redis

# list installed helm releases
helm list

# list containers
kubectl get pods

# list configmaps that contain the helm information
kubectl get configmaps --all-namespaces

# list yaml of configmap
kubectl get configmaps --all-namespaces -o yaml

# delete release
helm delete nordic-mouse


