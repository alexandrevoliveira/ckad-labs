# If you simply want to test your command, use the --dry-run=client option.
# This will not create the resource. Instead, tell you whether the resource
# can be created and if your command is right.
# -o yaml: This will output the resource definition in YAML format on the screen.

## Secret

# Create a secret
kubectl create secret generic app-secret --from-literal=DB_Host=mysql --from-literal=DB_User=root --from-literal=DB_Password=paswrd

# Create the secret file resource
kubectl create secret generic app-secret --from-literal=DB_Host=mysql --from-literal=DB_User=root --from-literal=DB_Password=paswrd --dry-run=client -o=yaml > ./secrets/secret-data.yaml

# If you do have the declarative file and need to insert one or more encoded secret(s)
echo -n 'paswrd' | base64

# If you want to decode the current encoded secret
echo -n 'cGFzd3Jk' | base64 --decode

# To view all secrets
kubectl get secrets

# To view secret detailed info
kubectl get secret app-secret -o=yaml

# To describe an specific secret where app-secret is the name of the secret
kubectl describe secret app-secret
