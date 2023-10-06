# Example of running Adobe ColdFusion in Kubernetes
Let's wrap an Adobe ColdFusion CFML app in a container and run it in Kubernetes. Note, this is just a demo app. Check with Adobe for all EULA and licensing questions. I did find [this FAQ](https://coldfusion.adobe.com/2019/03/coldfusion-licensing-docker-containers/) searching for container info, it might be a good starting point for you.

**THIS REPO IS IN PROGRESS - I'LL REMOVE THIS LINE ONCE THINGS ARE WORKING**

## What is CFML?
[From wikipedia](https://en.wikipedia.org/wiki/ColdFusion_Markup_Language):
"In its simplest form, like many other web scripting languages, CFML augments standard HTML files with database commands, conditional operators, high-level formatting functions, and other elements to produce web applications. CFML also includes numerous other constructs including ColdFusion Components (CFCs), CFML's version of objects, that allow for separation of business logic from presentation. CFML can be written using either tags or CFScript, which resembles JavaScript (ECMA script)."

## Notes

### In an OpenShift environment
This container will start as non-root user ([best practice for security reasons](https://developers.redhat.com/articles/2021/11/11/best-practices-building-images-pass-red-hat-container-certification)), however once the CF server begins as a non-root user it [complains](./ExampleRootError.md) about requiring root permissions.

It's TBD if we could configure directories and set permissions to avoid this error, it'd be a good next step to work with Adobe to inquire about that. Typically, when we have control over the application, we can tweak some settings to run as a non-root user. However, in this case Adobe owns the base image and might need to change core things.

So we will need to relax OpenShift SCCs to allow for this pod, in this namespace, to run as root user. There are example YAML configs [in this repo](./k8s) showing how to create a ServiceAccount and RoleBinding for that. Additionally, you'll need to tell the K8s Deployment using `serviceAccountName: coldfusion-runner-sa` & `securityContext: runAsUser: 0`