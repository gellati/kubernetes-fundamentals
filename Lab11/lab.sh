


#if get following message:
#    Unable to connect to the server: dial tcp 192.168.99.100:8443: i/o timeout
#the do
#    sudo ifconfig vboxnet0 up


# run pod creation manifest with

kubectl create -f redis.yaml

# get pod description with

kubectl describe pods foobar

# label the node
kubectl label node minikube foo=bar

# create pod using manifest
kubectl create -f redis-sched.yaml 
    
# run proxy at port 8090
kubectl proxy --port=8090

# using curl to post binding, run in same directory where binding.json is
curl -H "Content-Type:application/json" -X POST --data @binding.json http://localhost:8090/api/v1/namespaces/default/pods/foobar-sched/binding/
