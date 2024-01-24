#! /bin/zsh

kubectl create namespace egress-sample

kubectl label namespace egress-sample istio-injection=enabled

kubectl apply -f nginx.yaml -n egress-sample
kubectl apply -f vs.yaml -n egress-sample
kubectl apply -f service-entry.yaml -n egress-sample
kubectl apply -f dr.yaml -n egress-sample

