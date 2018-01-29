#/bin/bash

set -x

action=create
# persistentVolumeClaim
for file in *persistentvolumeclaim.yaml
do
    kubectl $action -f $file
done
