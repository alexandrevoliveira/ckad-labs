# Before we begin, familiarize yourself with the two options that can come in
# handy while working with the below commands:
# --dry-run: By default, as soon as the command is run, the resource will be created.
# If you simply want to test your command, use the --dry-run=client option.
# This will not create the resource. Instead, tell you whether the resource
# can be created and if your command is right.
# -o yaml: This will output the resource definition in YAML format on the screen.

## Deployment
# Create a deployment

kubectl create deployment --image=nginx nginx

# Generate Deployment YAML file (-o yaml). Don't create it(--dry-run)

kubectl create deployment --image=nginx nginx --dry-run=client -o yaml

# Generate Deployment with 4 Replicas

kubectl create deployment nginx --image=nginx --replicas=4

# You can also scale deployment using the kubectl scale command.

kubectl scale deployment nginx --replicas=4

# Another way to do this is to save the YAML definition to a file and modify

kubectl create deployment nginx --image=nginx --dry-run=client -o yaml > nginx-deployment.yaml

#You can then update the YAML file with the replicas or any other field before creating the deployment.
