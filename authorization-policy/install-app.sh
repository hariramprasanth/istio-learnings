#! /bin/zsh
cd app-1/
kubectl apply -f .
cd ..
cd app-2/
kubectl apply -f .
cd ..
cd app-3/
kubectl apply -f .
cd ..
