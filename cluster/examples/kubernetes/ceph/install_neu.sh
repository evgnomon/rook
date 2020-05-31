#!/bin/bash


kubectl apply -f common.yaml
kubectl apply -f operator.yaml
kubectl apply -f cluster-on-pvc.yaml
kubectl apply -f storageclass.yaml
