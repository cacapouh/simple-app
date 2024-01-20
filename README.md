# dockerビルド

```
$ docker build . -t simple-app
$ minikube image load simple-app:latest 
```

# Fleet

```
helm repo add fleet https://rancher.github.io/fleet-helm-charts/

# https://fleet.rancher.io/quickstart
helm -n cattle-fleet-system install --create-namespace --wait fleet-crd fleet/fleet-crd
helm -n cattle-fleet-system install --create-namespace --wait fleet fleet/fleet
```

quickstart: https://fleet.rancher.io/quickstart
スキャンされるやつ: https://fleet.rancher.io/gitrepo-content#how-repos-are-scanned
fleet.yaml: https://fleet.rancher.io/ref-fleet-yaml

# Fleet apply

```
$ kubectl apply -f repo.yml
```

```
$ kubectl get gitrepo -n fleet-local
NAME              REPO                                     COMMIT                                     BUNDLEDEPLOYMENTS-READY   STATUS
simple-app-repo   https://github.com/cacapouh/simple-app   07e5a9feec2ecd5b96d7f89fec43332daf6f8144   0/1                       NotReady(1) [Bundle simple-app-repo-helm]; deployment.apps default/simple-app-deployment [progressing] Deployment does not have minimum availability., Available: 0/1

$ kubectl get pods
NAME                                     READY   STATUS      RESTARTS     AGE
simple-app-deployment-75d7b88c6c-2c5k2   0/1     Completed   1 (3s ago)   3s

$ kubectl logs simple-app-deployment-75d7b88c6c-2c5k2 
version: 0.0.1
```