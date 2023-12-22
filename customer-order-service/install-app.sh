#! /bin/zsh
kubectl create namespace api-mngt

cd customer-service/
kubectl apply -f  . -n api-mngt
cd ..
cd order-service/
kubectl apply -f . -n api-mngt
cd ..
cd tracking-service/
kubectl apply -f  . -n api-mngt
cd ..

kubectl apply -f customer-gateway-service.yaml -n istio-system