# If you simply want to test your command, use the --dry-run=client option.
# This will not create the resource. Instead, tell you whether the resource
# can be created and if your command is right.
# -o yaml: This will output the resource definition in YAML format on the screen.

## Services

# Create a service
kubectl create -f node-port-service-definition.yaml

# Create a service using imperative command
kubectl create service nodeport myapp-service --node-port=30008 --tcp=80:80
kubectl create svc clusterip myapp-service --tcp=80:80

# Create the definition file
kubectl create svc nodeport myapp-service --node-port=30008 --tcp=80:80 --dry-run=client -o=yaml > ./services/myapp-service.yaml
