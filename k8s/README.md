# K8s Resources
Some resources need to configure K8s to build/run this example

## Create a service with:
* `kubectl expose deployment coldfusion-kubernetes --name=coldfusion-kubernetes --port=8080 --target-port=8500`

## Expose and OpenShift route with:
* `oc expose service coldfusion-kubernetes`