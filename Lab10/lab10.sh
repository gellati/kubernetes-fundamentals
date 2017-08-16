

minikube start

kubectl create -f busy-daemon.yaml

kubectl get daemonset

kubectl exec -ti busy-daemon-nb2lk -- ifconfig

kubectl exec -ti busy-daemon-nb2lk -- ps -ef | grep docker

