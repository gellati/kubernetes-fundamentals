
## part 1

# create pod from manifest volumes.yaml
# can leave out --validate option when kubernetes upgraded to 1.24
# https://github.com/kubernetes/minikube/issues/274
kubectl create -f volumes.yaml --validate=false

# get information about pods
kubectl get pods

# connect to busy container and create file in /busy directory
kubectl exec -ti vol -c busy -- touch /busy/lfs222

# connect to box container and read file in /box directory
kubectl exec -ti vol -c box -- ls /box


## part 2

# create by hand a base64 encoded secret called mysql from the word root

    kubectl create secret generic mysql --from-literal=password=root

# get info on the mysql secret

    kubectl get secrets mysql -o yaml

# create the mysql pod from the provided manifest
# open question: why does this not need --validate option like previous    
kubectl create -f mysql-secret.yaml

# log into the database inside the pod
kubectl exec -ti mysql -- mysql -uroot -proot

# part 3

# create configmap from given file
kubectl create configmap map --from-file=configmap.md

# create pod from given manifest
kubectl create -f configmap.yaml

# check contents of pod
kubectl exec -ti configmap-test -- ls /config

# list contents of configmap
kubectl exec -ti configmap-text -- cat /config/configmap.md
