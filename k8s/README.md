# K8s Resources
Some resources need to configure K8s to build/run this example

## Create a service
If you don't create the service from YAML you can:
* `kubectl expose deployment coldfusion-kubernetes --name=coldfusion-kubernetes --port=8080 --target-port=8500`

## Expose and OpenShift route
Next, if you're in OpenShift and want to use routes:
* `oc expose service coldfusion-kubernetes`