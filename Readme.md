# Debug-Pod

Simple pod equipped with networking tools, for debugging purposes. Image can be found on [Dockerhub](https://hub.docker.com/r/simontheleg/debug-pod/).

## Running inside Kubernetes

```shell
kubectl run debug-pod --image=simontheleg/debug-pod:v1.0.0
kubectl exec -it <pod-id> /bin/bash
```

clean up

```shell
kubectl delete deploy debug-pod
```

## Building & publishing

```shell
docker build -t simontheleg/debug-pod:v1.0.0 .
docker push simontheleg/debug-pod:v1.0.0
```