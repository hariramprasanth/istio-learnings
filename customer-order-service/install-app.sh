#! /bin/zsh
cd customer-service/
kubectl apply -f .
cd ..
cd order-service/
kubectl apply -f .
cd ..
cd tracking-service/
kubectl apply -f .
cd ..
