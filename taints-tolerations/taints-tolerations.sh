# If you simply want to test your command, use the --dry-run=client option.
# This will not create the resource. Instead, tell you whether the resource
# can be created and if your command is right.
# -o yaml: This will output the resource definition in YAML format on the screen.

## Taints

# Create a taint for a node
kubectl taint nodes <node-name> key=value:taint-effect

# observation: the taint-effect defines what happens to the pods if they do not tolerate the taint
# there are three taint effects: NoSchedule | PreferNoSchedule | NoExecute
# example:
kubectl taint nodes node1 app=blue:NoSchedule

## Tolerations

# You must create the toleration specification within the particular object specification itself.
