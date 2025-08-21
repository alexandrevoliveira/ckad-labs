# If you simply want to test your command, use the --dry-run=client option.
# This will not create the resource. Instead, tell you whether the resource
# can be created and if your command is right.
# -o yaml: This will output the resource definition in YAML format on the screen.

## Selectors

# Filter pods by selector
kubectl get pods --selector key=value
