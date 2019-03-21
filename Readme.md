<img src =https://img.shields.io/docker/pulls/simontheleg/debug-pod.svg>

# Debug-Pod

Simple pod equipped with networking tools, for debugging purposes. Image can be found on [Dockerhub](https://hub.docker.com/r/simontheleg/debug-pod/).

## Running inside Kubernetes

```shell
kubectl run debug-pod --image=simontheleg/debug-pod:latest
kubectl exec -it <pod-id> /bin/bash
```

clean up

```shell
kubectl delete deploy debug-pod
```

## Building & publishing

```shell
docker build -t simontheleg/debug-pod:latest .
docker push simontheleg/debug-pod:latest
```