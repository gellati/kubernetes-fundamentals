#!/bin/bash

# start the docker service
# sudo service docker start

# end the docker service
# sudo service docker end

docker run -d --name=source busybox sleep 3600
docker run -d --name=same-ip --net=container:source busybox sleep 3600


docker exec -ti same-ip ifconfig

docker run -d --name=k8s -p 8080:8080 gcr.io/google_containers/etcd:2.2.1 etcd --data-dir /var/lib/data

docker run -d --net=container:k8s gcr.io/google_containers/hyperkube:v1.5.1 /apiserver --etcd-servers=http://127.0.0.1:4001 --service-cluster-ip-range=10.0.0.1/24 --insecure-bind-address=0.0.0.0 --insecure-port=8080 --admission-control=AlwaysAdmit

docker run -d --net=container:k8s gcr.io/google_containers/hyperkube:v1.5.1 /controller-manager --master=127.0.0.1:8080


docker exec -ti k8s etcdctl ls /registry

curl http://127.0.0.1:8080/api/v1
