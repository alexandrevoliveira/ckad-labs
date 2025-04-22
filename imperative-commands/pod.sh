# Before we begin, familiarize yourself with the two options that can come in
# handy while working with the below commands:
# --dry-run: By default, as soon as the command is run, the resource will be created.
# If you simply want to test your command, use the --dry-run=client option.
# This will not create the resource. Instead, tell you whether the resource
# can be created and if your command is right.
# -o yaml: This will output the resource definition in YAML format on the screen.

# Use the above two in combination along with Linux output redirection to generate
# a resource definition file quickly, that you can then modify and create 
# resources as required, instead of creating the files from scratch.
kubectl run nginx --image=nginx --dry-run=client -o yaml > nginx-pod.yaml

## POD

# Create an NGINX Pod
kubectl run nginx --image=nginx

# Generate POD Manifest YAML file (-o yaml). Don't create it(--dry-run)
kubectl run nginx --image=nginx --dry-run=client -o yaml
