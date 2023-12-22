#! /bin/zsh
cd customer-service/
kubectl delete -f . -n api-mngt
cd ..
cd order-service/
kubectl delete -f . -n api-mngt
cd ..
cd tracking-service/
kubectl delete -f . -n api-mngt
cd ..

kubectl delete -f customer-gateway-service.yaml -n istio-system