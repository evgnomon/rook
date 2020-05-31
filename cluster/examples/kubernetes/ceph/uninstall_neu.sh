#!/bin/bash


kubectl delete -f storageclass.yaml
kubectl delete -f cluster-on-pvc.yaml
kubectl delete -f operator.yaml
kubectl delete -f common.yaml
