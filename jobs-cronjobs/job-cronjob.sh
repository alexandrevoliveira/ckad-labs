# If you simply want to test your command, use the --dry-run=client option.
# This will not create the resource. Instead, tell you whether the resource
# can be created and if your command is right.
# -o yaml: This will output the resource definition in YAML format on the screen.

## Job

# Create the job through the definition file
kubectl create -f job-definition.yaml

# List all jobs
kubectl get jobs

# Get the result from the execution of the pod through the logs command
kubectl logs job/<job-name>

## CronJob

# Create the cronjob through the definition file
kubectl create -f cronjob-definition.yaml

# List all cronjobs
kubectl get cronjobs
