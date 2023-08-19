#! /bin/zsh
cd app-1/
kubectl delete -f .
cd ..
cd app-2/
kubectl delete -f .
cd ..
cd app-3/
kubectl delete -f .
cd ..
