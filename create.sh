#/bin/bash

set -x

action=create
# persistentVolumeClaim
for file in *pvc.yaml
do
    echo NOT CREATING kubectl $action -f $file
done

for file in *deployment.yaml
do
    echo kubectl $action -f $file
done

for file in *service.yaml
do
    echo kubectl $action -f $file
done
