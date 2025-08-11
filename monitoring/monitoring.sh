# Monitoring - Docker

# Minikube
minikube addons enable metrics-server

# others
git clone -o o https://github.com/kubernetes-incubator/metrics-server.git
kubectl create -f deploy/1.8+

kubectl top node
