
# see if pods are running
kubectl get pods

# see the deployments
kubectl get deployments

# need to have services defined to access deployments
# show services
kubectl get svc

# need to check endpoints to see that services are pointing to the pods through label selection
kubectl get endpoints

# if endpoint is valid -> there is a pod matching the service selection. the endpoint is the IP address in the overlay of the network for the pod
# if pod has multiple replicas there are multiple endpoints, one for each deployment

# second port for service is the NodePort, which accessible through a web browser
kubectl get svc

# reach inside pod
kubectl exec -ti <podname> -- /bin/sh

> nslookup game

--
kubectl get pods --watching

# there might be a pod with the status pending

# reasons for pods to be pending are usually scheduling issues, meaning that there is no node that is matching the resource for these pods

# get descriptions for peding pods
kubectl describe pods pending

# show labels for minikube
kubectl get nodes --show-labels

# can edit the manifest on the fly
kubectl edit pods pending

# add test label to pod manifest
kubectl label node minikube pending=test

# show logs
kubectl logs

