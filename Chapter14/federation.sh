
# for federation control plane to be able to talk to clusters 
# in the federation, it needs to have access to secrets that 
# contain the kubeconfig configuration of each cluster. This 
# configuration can be obtained locally using the --minify and 
# --flatten options of the kubectl config view command
kubectl config view minikube --minify --flatten

