#! /bin/zsh

kubectl create namespace api-mngt-tm

kubectl apply -f nginx-app.yaml -n api-mngt-tm

kubectl apply -f canary-deployment.yaml -n api-mngt-tm

kubectl apply -f canary-lb-service.yaml -n istio-system

