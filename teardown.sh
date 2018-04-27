#!/bin/bash

kubectl delete $(kubectl get svc -o name)
kubectl delete $(kubectl get deployments -o name)
