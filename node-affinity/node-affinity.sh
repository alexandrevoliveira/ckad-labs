# If you simply want to test your command, use the --dry-run=client option.
# This will not create the resource. Instead, tell you whether the resource
# can be created and if your command is right.
# -o yaml: This will output the resource definition in YAML format on the screen.

## Label Nodes

# Create a label for a particular node
kubectl label nodes <node-name> <label-key>=<label-value>

# observation: We must label our node before creating a nodeAffinity rule to
# any pod we want to place on any matching node
# example:
kubectl label nodes node-1 size=Large
kubectl label nodes node-1 size=Medium
