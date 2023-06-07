#! /bin/zsh
cd customer-service/
kubectl delete -f .
cd ..
cd order-service/
kubectl delete -f .
cd ..
cd tracking-service/
kubectl delete -f .
cd ..
