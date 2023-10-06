You can build this locally with:
> `podman build . -f ./Containerfile -t coldfusion-k8s`

You should probably put this into a build pipeline. In OpenShift use Tekton.
> Create a new pipeline that clones from git, then uses buildah to containerize
> * Make sure to point to ./containers/Containerfile
> * Make sure to create a workspaces backed by a PVC for the build, and a workspace to pass the dockerconfig.json secret

A push to the internal registry will look like `image-registry.openshift-image-registry.svc:5000`