#/bin/bash


action=create
# persistentVolumeClaim
for file in *pvc.yaml
do
    echo NOT CREATING kubectl $action -f $file
done

for file in *deployment.yaml
do
    kubectl $action -f $file
done

for file in *service.yaml
do
    kubectl $action -f $file
done
