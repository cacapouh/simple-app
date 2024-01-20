```
$ docker build . -t simple-app
$ minikube image load simple-app:latest # Minikube環境の場合
$ helm install simple-app ./helm  
```

```
$ kubectl get pods
NAME                                     READY   STATUS      RESTARTS      AGE
simple-app-deployment-75d7b88c6c-t8jpt   0/1     Completed   2 (16s ago)   17s

$ kubectl logs simple-app-deployment-75d7b88c6c-t8jpt
version: 0.0.1
```
