<img src =https://img.shields.io/docker/pulls/simontheleg/debug-pod.svg>

# Debug-Pod

Simple pod equipped with networking tools, for debugging purposes. Image can be found on [Dockerhub](https://hub.docker.com/r/simontheleg/debug-pod/).

## Running inside Kubernetes

Can be done in a single (albeit long) shell cmd:

```shell
kubectl create deploy debug-pod --image=simontheleg/debug-pod:latest && \
kubectl wait --for=condition=ready pod -l app=debug-pod && \
kubectl exec -it $(kubectl get pods -o jsonpath="{.items[?(@.metadata.labels.app=='debug-pod')].metadata.name}") -- /bin/bash
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
