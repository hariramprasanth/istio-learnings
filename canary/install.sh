#! /bin/zsh

kubectl create namespace api-mngt-canary-test

kubectl label namespace api-mngt-canary-test istio-injection=enabled

kubectl apply -f nginx-app.yaml -n api-mngt-canary-test

kubectl apply -f canary-deployment.yaml -n api-mngt-canary-test

kubectl apply -f sample-nginx.yaml -n api-mngt-canary-test

kubectl apply -f canary-lb-service.yaml -n istio-system

