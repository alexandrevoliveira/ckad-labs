# Logs - Docker

docker run -d --name event-simulator kodekloud/event-simulator
docker logs -f event-simulator

# Logs - Kubernetes
kubectl apply -f ./event-simulator.yaml
kubectl logs -f event-simulator-pod

# multiple containers within a pod
# specify the name of the resource followed by the name of the container
kubectl logs -f event-simulator-pod event-simulator