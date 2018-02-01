#/bin/bash

set -x

action=create
# persistentVolumeClaim
for file in *persistentvolumeclaim.yaml
do
    kubectl $action -f $file
done


kubectl create -f starter-deployment.yaml
kubectl create -f starter-service.yaml
kubectl create -f web-deployment.yaml
kubectl create -f web-service.yaml
kubectl create -f nginx-deployment.yaml
kubectl create -f nginx-pod.yaml
