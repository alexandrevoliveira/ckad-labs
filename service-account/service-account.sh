# If you simply want to test your command, use the --dry-run=client option.
# This will not create the resource. Instead, tell you whether the resource
# can be created and if your command is right.
# -o yaml: This will output the resource definition in YAML format on the screen.

## Service Account

# Create a service account
kubectl create serviceaccount dashboard-sa
# or
kubectl create sa dashboard-sa

# To view all service accounts
kubectl get serviceaccounts

# To view service account detailed info
kubectl get sa dashboard-sa -o=yaml

# To describe an specific secret where app-secret is the name of the secret
kubectl describe sa dashboard-sa

# After the describe operation it is possible to visualize the token name associated with the service account
# The service account token is stored inside a secret object, and it is linked to service account as a result
# You can see the token value by printing the secret information associated with this specific service account
kubectl describe secret dashboard-sa-token-{token-hash}
# or
kubectl get secret dashboard-sa-token-{token-hash} -o=yaml

# you also can provide the bearer token as an authorization header while making a REST call to the Kubernetes API
curl https://192.168.56.70:6443/api -insecure --header "Authorization: Bearer ..."

# In Kubernetes version 1.24 a new feature was released for Service Accounts
# To create a token for a service account we do need to run the following command
kubectl create token dashboard-sa
